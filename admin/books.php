<?php
include '../includes/header.php';
include '../includes/db.php';
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Handle adding a new book
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['add_book'])) {
    $title = $_POST['title'];
    $author_id = $_POST['author_id'];
    $category_id = $_POST['category_id'];
    $year_of_publication = $_POST['year_of_publication'];
    $number_of_pages = $_POST['number_of_pages'];
    $image_url = $_POST['image_url'];

    $stmt = $pdo->prepare('INSERT INTO books (title, author_id, category_id, year_of_publication, number_of_pages, image_url) 
                           VALUES (?, ?, ?, ?, ?, ?)');
    $stmt->execute([$title, $author_id, $category_id, $year_of_publication, $number_of_pages, $image_url]);

    $_SESSION['message'] = 'Book added successfully!';
    header('Location: books.php');
    exit;
}

// Handle editing a book
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['edit_book'])) {
    $book_id = $_POST['book_id'];
    $title = $_POST['title'];
    $author_id = $_POST['author_id'];
    $category_id = $_POST['category_id'];
    $year_of_publication = $_POST['year_of_publication'];
    $number_of_pages = $_POST['number_of_pages'];
    $image_url = $_POST['image_url'];

    $stmt = $pdo->prepare('UPDATE books SET title = ?, author_id = ?, category_id = ?, 
                           year_of_publication = ?, number_of_pages = ?, image_url = ? WHERE id = ?');
    $stmt->execute([$title, $author_id, $category_id, $year_of_publication, $number_of_pages, $image_url, $book_id]);

    $_SESSION['message'] = 'Book updated successfully!';
    header('Location: books.php');
    exit;
}

// Handle soft-deleting a book
if (isset($_GET['delete'])) {
    $book_id = $_GET['delete'];
    $stmt = $pdo->prepare('UPDATE books SET deleted_at = NOW() WHERE id = ?');
    $stmt->execute([$book_id]);

    $_SESSION['message'] = 'Book deleted successfully!';
    header('Location: books.php');
    exit;
}

// Fetch books to display, excluding soft-deleted books
$stmt = $pdo->query('SELECT books.*, authors.first_name, authors.last_name, categories.title AS category 
                     FROM books 
                     JOIN authors ON books.author_id = authors.id 
                     JOIN categories ON books.category_id = categories.id
                     WHERE books.deleted_at IS NULL');
$books = $stmt->fetchAll();

// Fetch non-deleted authors and categories for the form
$authors = $pdo->query('SELECT * FROM authors WHERE deleted_at IS NULL')->fetchAll();
$categories = $pdo->query('SELECT * FROM categories WHERE deleted_at IS NULL')->fetchAll();
?>

<div class="container mt-5">
    <h2>Manage Books</h2>

    <!-- Show success message if exists -->
    <?php if (isset($_SESSION['message'])): ?>
    <div class="alert alert-success" role="alert">
        <?= htmlspecialchars($_SESSION['message']) ?>
    </div>
    <?php unset($_SESSION['message']); ?>
    <?php endif; ?>

    <!-- Add Book Form -->
    <form method="POST" class="mb-5 p-4 border rounded bg-light shadow-sm">
        <h3>Add New Book</h3>
        <input type="hidden" name="book_id" value="">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="author_id">Author:</label>
            <select id="author_id" name="author_id" class="form-control" required>
                <?php foreach ($authors as $author): ?>
                <option value="<?= $author['id'] ?>"><?= $author['first_name'] . ' ' . $author['last_name'] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="category_id">Category:</label>
            <select id="category_id" name="category_id" class="form-control" required>
                <?php foreach ($categories as $category): ?>
                <option value="<?= $category['id'] ?>"><?= $category['title'] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="year_of_publication">Year of Publication:</label>
            <input type="number" id="year_of_publication" name="year_of_publication" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="number_of_pages">Number of Pages:</label>
            <input type="number" id="number_of_pages" name="number_of_pages" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="image_url">Image URL:</label>
            <input type="text" id="image_url" name="image_url" class="form-control" required>
        </div>
        <button type="submit" name="add_book" class="btn btn-primary">Add Book</button>
    </form>

    <!-- Books Table -->
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Category</th>
                <th>Year</th>
                <th>Pages</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($books as $book): ?>
            <tr>
                <td><?= htmlspecialchars($book['title']) ?></td>
                <td><?= htmlspecialchars($book['first_name'] . ' ' . $book['last_name']) ?></td>
                <td><?= htmlspecialchars($book['category']) ?></td>
                <td><?= htmlspecialchars($book['year_of_publication']) ?></td>
                <td><?= htmlspecialchars($book['number_of_pages']) ?></td>
                <td><img src="<?= htmlspecialchars($book['image_url']) ?>" alt="<?= htmlspecialchars($book['title']) ?>"
                        class="img-thumbnail" style="max-width: 100px;"></td>
                <td>
                    <!-- Edit button -->
                    <button class="btn btn-warning btn-sm btn-edit" data-id="<?= $book['id'] ?>"
                        data-title="<?= htmlspecialchars($book['title']) ?>" data-author_id="<?= $book['author_id'] ?>"
                        data-category_id="<?= $book['category_id'] ?>"
                        data-year_of_publication="<?= $book['year_of_publication'] ?>"
                        data-number_of_pages="<?= $book['number_of_pages'] ?>"
                        data-image_url="<?= htmlspecialchars($book['image_url']) ?>">Edit</button>

                    <!-- Delete button with confirmation -->
                    <button class="btn btn-danger btn-sm btn-delete" data-id="<?= $book['id'] ?>">Delete</button>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<!-- Modal for editing a book -->
<div class="modal fade" id="editBookModal" tabindex="-1" aria-labelledby="editBookModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editBookModalLabel">Edit Book</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="POST" id="editBookForm">
                <div class="modal-body">
                    <input type="hidden" name="book_id" id="editBookId">
                    <div class="form-group">
                        <label for="editTitle">Title</label>
                        <input type="text" class="form-control" name="title" id="editTitle" required>
                    </div>
                    <div class="form-group">
                        <label for="editAuthorId">Author</label>
                        <select id="editAuthorId" name="author_id" class="form-control" required>
                            <?php foreach ($authors as $author): ?>
                            <option value="<?= $author['id'] ?>">
                                <?= $author['first_name'] . ' ' . $author['last_name'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="editCategoryId">Category</label>
                        <select id="editCategoryId" name="category_id" class="form-control" required>
                            <?php foreach ($categories as $category): ?>
                            <option value="<?= $category['id'] ?>"><?= $category['title'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="editYearOfPublication">Year of Publication</label>
                        <input type="number" class="form-control" name="year_of_publication" id="editYearOfPublication"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="editNumberOfPages">Number of Pages</label>
                        <input type="number" class="form-control" name="number_of_pages" id="editNumberOfPages"
                            required>
                    </div>
                    <div class="form-group">
                        <label for="editImageUrl">Image URL</label>
                        <input type="text" class="form-control" name="image_url" id="editImageUrl" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" name="edit_book" class="btn btn-primary">Save Changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Confirmation Modal for Deletion -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" aria-labelledby="confirmDeleteModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmDeleteModalLabel">Confirm Deletion</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this book?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <a id="confirmDeleteBtn" class="btn btn-danger" href="#">Delete</a>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript to handle modals and form filling -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Handle Edit Button Click
    document.querySelectorAll('.btn-edit').forEach(button => {
        button.addEventListener('click', function() {
            const modal = new bootstrap.Modal(document.getElementById('editBookModal'));
            document.getElementById('editBookId').value = this.dataset.id;
            document.getElementById('editTitle').value = this.dataset.title;
            document.getElementById('editAuthorId').value = this.dataset.author_id;
            document.getElementById('editCategoryId').value = this.dataset.category_id;
            document.getElementById('editYearOfPublication').value = this.dataset
                .year_of_publication;
            document.getElementById('editNumberOfPages').value = this.dataset.number_of_pages;
            document.getElementById('editImageUrl').value = this.dataset.image_url;
            modal.show();
        });
    });

    // Handle Delete Button Click
    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const deleteUrl = `books.php?delete=${this.dataset.id}`;
            Swal.fire({
                title: 'Are you sure?',
                text: "This will mark the book as deleted.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, keep it',
                reverseButtons: true
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = deleteUrl;
                }
            });
        });
    });

});
</script>