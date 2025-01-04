<?php
session_start();
require '../includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    $new_budget = $input['budget'] ?? 0;

    if (!isset($_SESSION['user_id'])) {
        echo json_encode(['success' => false, 'message' => 'Unauthorized']);
        exit();
    }

    if ($new_budget > 0) {
        $stmt = $pdo->prepare("UPDATE users SET monthly_budget = ? WHERE id = ?");
        $stmt->execute([$new_budget, $_SESSION['user_id']]);
        echo json_encode(['success' => true, 'message' => 'Budget updated successfully']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Invalid budget value']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request']);
}