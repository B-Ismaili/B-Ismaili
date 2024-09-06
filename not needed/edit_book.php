<?php
include '../includes/header.php';

// redirectIfNotLoggedIn();
// redirectIfNotAdmin();

// Check if an ID is provided in the query string
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Fetch the book details from the database
    $stmt = $pdo->prepare("SELECT * FROM books WHERE id = ? AND deleted_at IS NULL");
    $stmt->execute([$id]);
    $book = $stmt->fetch();

    if (!$book) {
        echo "Book not found.";
        exit;
    }
} else {
    echo "No book ID provided.";
    exit;
}

// Handle the form submission for updating the book
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $author_id = $_POST['author_id'];
    $category_id = $_POST['category_id'];
    $year_of_publication = $_POST['year_of_publication'];
    $number_of_pages = $_POST['number_of_pages'];
    $image_url = $_POST['image_url'];

    // Update the book in the database
    $stmt = $pdo->prepare("UPDATE books SET title = ?, author_id = ?, category_id = ?, year_of_publication = ?, number_of_pages = ?, image_url = ? WHERE id = ?");
    $stmt->execute([$title, $author_id, $category_id, $year_of_publication, $number_of_pages, $image_url, $id]);

    header('Location: books.php');
    exit;
}

// if (isset($_GET['id'])) {
//     $id = $_GET['id'];

//     // Perform a soft delete by setting the deleted_at timestamp
//     $stmt = $pdo->prepare("UPDATE books SET deleted_at = NOW() WHERE id = ?");
//     $stmt->execute([$id]);

//     header('Location: books.php');
//     exit;
// } else {
//     echo "No book ID provided.";
//     exit;
// }

// Fetch authors and categories for dropdowns
$authors = $pdo->query("SELECT id, CONCAT(first_name, ' ', last_name) AS name FROM authors WHERE deleted_at IS NULL")->fetchAll();
$categories = $pdo->query("SELECT id, title FROM categories WHERE deleted_at IS NULL")->fetchAll();
?>

<div class="container">
    <h2>Edit Book</h2>
    <form method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" name="title" value="<?php echo htmlspecialchars($book['title']); ?>"
                required>
        </div>
        <div class="form-group">
            <label for="author_id">Author</label>
            <select class="form-control" name="author_id" required>
                <?php foreach ($authors as $author): ?>
                <option value="<?php echo $author['id']; ?>"
                    <?php echo $author['id'] == $book['author_id'] ? 'selected' : ''; ?>>
                    <?php echo htmlspecialchars($author['name']); ?>
                </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="category_id">Category</label>
            <select class="form-control" name="category_id" required>
                <?php foreach ($categories as $category): ?>
                <option value="<?php echo $category['id']; ?>"
                    <?php echo $category['id'] == $book['category_id'] ? 'selected' : ''; ?>>
                    <?php echo htmlspecialchars($category['title']); ?>
                </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="year_of_publication">Year of Publication</label>
            <input type="number" class="form-control" name="year_of_publication"
                value="<?php echo htmlspecialchars($book['year_of_publication']); ?>" required>
        </div>
        <div class="form-group">
            <label for="number_of_pages">Number of Pages</label>
            <input type="number" class="form-control" name="number_of_pages"
                value="<?php echo htmlspecialchars($book['number_of_pages']); ?>" required>
        </div>
        <div class="form-group">
            <label for="image_url">Image URL</label>
            <input type="text" class="form-control" name="image_url"
                value="<?php echo htmlspecialchars($book['image_url']); ?>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update Book</button>
    </form>
</div>

<?php include '../includes/footer.php'; ?>