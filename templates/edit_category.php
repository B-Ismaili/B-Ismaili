<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if (!isset($_GET['id'])) {
    header("Location: manage_categories.php");
    exit();
}

$category_id = $_GET['id'];

// Fetch the current category details
$stmt = $pdo->prepare("SELECT * FROM categories WHERE id = ? AND user_id = ?");
$stmt->execute([$category_id, $_SESSION['user_id']]);
$category = $stmt->fetch();

if (!$category) {
    header("Location: manage_categories.php");
    exit();
}

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $new_name = trim($_POST['category_name']);

    if (!empty($new_name)) {
        $update_stmt = $pdo->prepare("UPDATE categories SET name = ? WHERE id = ? AND user_id = ?");
        $update_stmt->execute([$new_name, $category_id, $_SESSION['user_id']]);
        header("Location: manage_categories.php");
        exit();
    } else {
        $error = "Category name cannot be empty.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Category - Expense Tracker</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .edit-category-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>
    <div class="container edit-category-container">
        <h2 class="text-center">Edit Category</h2>
        <p class="text-muted text-center">Update the name of your category below.</p>

        <?php if (isset($error)): ?>
            <div class="alert alert-danger">
                <?= htmlspecialchars($error); ?>
            </div>
        <?php endif; ?>

        <form method="POST" action="">
            <div class="mb-3">
                <label for="category_name" class="form-label">Category Name</label>
                <input type="text" name="category_name" id="category_name" class="form-control"
                    value="<?= htmlspecialchars($category['name']); ?>" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Update Category</button>
        </form>
        <div class="text-center mt-3">
            <a href="manage_categories.php" class="btn btn-secondary">Cancel</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>