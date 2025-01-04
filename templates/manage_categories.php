<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Initialize categories array and error message
$categories = [];
$error = null;

// Handle form submission for adding a new category
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['new_category'])) {
    $new_category = trim($_POST['new_category']);
    $monthly_budget = !empty($_POST['monthly_budget']) ? (float) $_POST['monthly_budget'] : null;

    if (!empty($new_category)) {
        try {
            $stmt = $pdo->prepare("INSERT INTO categories (user_id, name, monthly_budget, last_reset) VALUES (?, ?, ?, ?)");
            $stmt->execute([$_SESSION['user_id'], $new_category, $monthly_budget, date('Y-m-01')]);
            header("Location: manage_categories.php");
            exit();
        } catch (PDOException $e) {
            $error = "Error adding category: " . $e->getMessage();
        }
    } else {
        $error = "Category name cannot be empty.";
    }
}

// Fetch categories
try {
    $stmt = $pdo->prepare("SELECT id, name, monthly_budget, spent_this_month FROM categories WHERE user_id = ?");
    $stmt->execute([$_SESSION['user_id']]);
    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    error_log("Error fetching categories: " . $e->getMessage());
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Categories - Expense Tracker</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    body {
        background-color: #f8f9fa;
    }

    .manage-categories-container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .btn-delete {
        color: #fff;
        background-color: #dc3545;
        border-color: #dc3545;
    }

    .btn-edit {
        color: #fff;
        background-color: #17a2b8;
        border-color: #17a2b8;
    }
    </style>
</head>

<body>
    <div class="container manage-categories-container">
        <h2 class="text-center">Manage Categories</h2>
        <p class="text-muted text-center">Add, edit, or delete your expense categories.</p>

        <?php if (!empty($error)): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($error); ?></div>
        <?php endif; ?>

        <!-- Add Category Form -->
        <form method="POST" action="manage_categories.php">
            <div class="row mb-3">
                <div class="col-md-6">
                    <input type="text" name="new_category" class="form-control" placeholder="Enter new category"
                        required>
                </div>
                <div class="col-md-4">
                    <input type="number" name="monthly_budget" class="form-control"
                        placeholder="Monthly Budget (optional)">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary w-100">Add</button>
                </div>
            </div>
        </form>

        <!-- Categories Table -->
        <table class="table table-striped table-hover">
            <thead class="table-dark">
                <tr>
                    <th>Category Name</th>
                    <th>Budget</th>
                    <th>Spent</th>
                    <th>Remaining</th>
                    <th class="text-end">Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php if (count($categories) > 0): ?>
                <?php foreach ($categories as $category): ?>
                <tr>
                    <td><?= htmlspecialchars($category['name']); ?></td>
                    <td><?= $category['monthly_budget'] ? "$" . number_format($category['monthly_budget'], 2) : "No budget"; ?>
                    </td>
                    <td>$<?= number_format($category['spent_this_month'], 2); ?></td>
                    <td>
                        <?= $category['monthly_budget'] ? "$" . number_format($category['monthly_budget'] - $category['spent_this_month'], 2) : "N/A"; ?>
                    </td>
                    <td class="text-end">
                        <a href="edit_category.php?id=<?= $category['id']; ?>" class="btn btn-edit btn-sm">Edit</a>
                        <a href="delete_category.php?id=<?= $category['id']; ?>" class="btn btn-delete btn-sm"
                            onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
                <?php else: ?>
                <tr>
                    <td colspan="5" class="text-center">No categories found. Add a new category above.</td>
                </tr>
                <?php endif; ?>
            </tbody>
        </table>

        <div class="text-center">
            <a href="dashboard.php" class="btn btn-secondary">Back to Dashboard</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>