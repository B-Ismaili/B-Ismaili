<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Fetch predefined categories
$stmt = $pdo->prepare("SELECT id, name FROM categories WHERE user_id = ?");
$stmt->execute([$_SESSION['user_id']]);
$categories = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Expense - Expense Tracker</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    body {
        background-color: #f8f9fa;
    }

    .form-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 2rem;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Add Expense</h2>
            <form action="../add_expense_action.php" method="POST">
                <div class="mb-3">
                    <label for="category" class="form-label">Category</label>
                    <select name="category_id" id="category" class="form-select" required>
                        <option value="" disabled selected>Select a category</option>
                        <?php foreach ($categories as $category): ?>
                        <option value="<?= $category['id']; ?>"><?= htmlspecialchars($category['name']); ?></option>
                        <?php endforeach; ?>
                        <option value="new">Add New Category</option>
                    </select>
                </div>
                <div class="mb-3" id="new-category-group" style="display: none;">
                    <label for="new_category" class="form-label">New Category</label>
                    <input type="text" name="new_category" id="new_category" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="amount" class="form-label">Amount ($)</label>
                    <input type="number" name="amount" id="amount" class="form-control" step="0.01" required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea name="description" id="description" class="form-control" rows="3"></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Recurring</label>
                    <input type="checkbox" name="recurring" value="1" class="form-check-input">
                </div>

                <div class="mb-3">
                    <label for="expense_date" class="form-label">Date</label>
                    <input type="date" name="expense_date" id="expense_date" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Add Expense</button>
            </form>
            <a href="dashboard.php" class="btn btn-secondary w-100 mt-3">Back to Dashboard</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    const categorySelect = document.getElementById('category');
    const newCategoryGroup = document.getElementById('new-category-group');

    categorySelect.addEventListener('change', function() {
        if (this.value === 'new') {
            newCategoryGroup.style.display = 'block';
        } else {
            newCategoryGroup.style.display = 'none';
        }
    });
    </script>
</body>

</html>