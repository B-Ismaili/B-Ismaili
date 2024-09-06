<!-- <?php
include '../includes/header.php';
// redirectIfNotLoggedIn();
// redirectIfNotAdmin();

// Check if an ID is provided in the query string
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch the category details from the database
    $stmt = $pdo->prepare("SELECT * FROM categories WHERE id = ? AND deleted_at IS NULL");
    $stmt->execute([$id]);
    $category = $stmt->fetch();

    if (!$category) {
        echo "Category not found.";
        exit;
    }
} else {
    echo "No category ID provided.";
    exit;
}


// Handle the form submission for updating the category
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];

    // Update the category in the database
    $stmt = $pdo->prepare("UPDATE categories SET title = ? WHERE id = ?");
    $stmt->execute([$title, $id]);

    header('Location: categories.php');
    exit;
}


if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Perform a soft delete by setting the deleted_at timestamp
    $stmt = $pdo->prepare("UPDATE categories SET deleted_at = NOW() WHERE id = ?");
    $stmt->execute([$id]);

    header('Location: categories.php');
    exit;
} else {
    echo "No category ID provided.";
}
?>

<div class="container">
    <h2>Edit Category</h2>
    <form method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" name="title"
                value="<?php echo htmlspecialchars($category['title']); ?>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update Category</button>
    </form>
</div>

<?php include '../includes/footer.php'; ?> -->