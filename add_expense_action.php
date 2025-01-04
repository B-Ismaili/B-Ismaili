<?php
session_start();
require 'includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    $category_id = $input['category_id'] ?? null;
    $amount = (float) ($input['amount'] ?? 0);
    $description = $input['description'] ?? null;
    $override = $input['override'] ?? false; // Flag for exceeding budget

    if (!isset($_SESSION['user_id'])) {
        echo json_encode(['success' => false, 'message' => 'Unauthorized. Please log in.']);
        exit();
    }

    if (!$category_id || $amount <= 0) {
        echo json_encode(['success' => false, 'message' => 'Invalid input.']);
        exit();
    }

    $expense_date = $input['expense_date'] ?? date('Y-m-d');

    // Fetch category details
    $stmt = $pdo->prepare("SELECT monthly_budget, spent_this_month FROM categories WHERE id = ? AND user_id = ?");
    $stmt->execute([$category_id, $_SESSION['user_id']]);
    $category = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$category) {
        echo json_encode(['success' => false, 'message' => 'Category not found.']);
        exit();
    }

    $remaining_budget = $category['monthly_budget'] - $category['spent_this_month'];
    $new_spent = $category['spent_this_month'] + $amount;

    // Handle budget limits
    if ($remaining_budget < $amount && !$override) {
        echo json_encode([
            'success' => false,
            'message' => 'This expense will exceed your category budget. Do you want to continue?',
            'budget_exceeded' => true,
        ]);
        exit();
    }

    try {
        $pdo->beginTransaction();

        // Insert the expense
        $stmt = $pdo->prepare("INSERT INTO expenses (user_id, category_id, amount, description, expense_date) VALUES (?, ?, ?, ?, ?)");
        $stmt->execute([$_SESSION['user_id'], $category_id, $amount, $description, $expense_date]);

        // Update category's spent amount
        $stmt = $pdo->prepare("UPDATE categories SET spent_this_month = ? WHERE id = ?");
        $stmt->execute([$new_spent, $category_id]);

        $pdo->commit();

        echo json_encode(['success' => true, 'message' => 'Expense added successfully.']);
    } catch (PDOException $e) {
        $pdo->rollBack();
        echo json_encode(['success' => false, 'message' => 'Error adding expense: ' . $e->getMessage()]);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request method.']);
}