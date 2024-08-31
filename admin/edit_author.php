<?php
include '../includes/header.php';
// redirectIfNotLoggedIn();
// redirectIfNotAdmin();

// Check if an ID is provided in the query string
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch the author details from the database
    $stmt = $pdo->prepare("SELECT * FROM authors WHERE id = ? AND deleted_at IS NULL");
    $stmt->execute([$id]);
    $author = $stmt->fetch();

    if (!$author) {
        echo "Author not found.";
        exit;
    }
} else {
    echo "No author ID provided.";
    exit;
}

// Handle the form submission for updating the author
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $biography = $_POST['biography'];

    // Update the author in the database
    $stmt = $pdo->prepare("UPDATE authors SET first_name = ?, last_name = ?, biography = ? WHERE id = ?");
    $stmt->execute([$first_name, $last_name, $biography, $id]);

    header('Location: authors.php');
    exit;
}


if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Perform a soft delete by setting the deleted_at timestamp
    $stmt = $pdo->prepare("UPDATE authors SET deleted_at = NOW() WHERE id = ?");
    $stmt->execute([$id]);

    header('Location: authors.php');
    exit;
} else {
    echo "No author ID provided.";
}

?>

<div class="container">
    <h2>Edit Author</h2>
    <form method="POST">
        <div class="form-group">
            <label for="first_name">First Name</label>
            <input type="text" class="form-control" name="first_name"
                value="<?php echo htmlspecialchars($author['first_name']); ?>" required>
        </div>
        <div class="form-group">
            <label for="last_name">Last Name</label>
            <input type="text" class="form-control" name="last_name"
                value="<?php echo htmlspecialchars($author['last_name']); ?>" required>
        </div>
        <div class="form-group">
            <label for="biography">Biography</label>
            <textarea class="form-control" name="biography"
                required><?php echo htmlspecialchars($author['biography']); ?></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Update Author</button>
    </form>
</div>

<?php include '../includes/footer.php'; ?>