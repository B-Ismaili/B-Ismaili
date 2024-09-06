<?php
include 'includes/header.php';

session_start(); // Ensure session is started

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $stmt = $pdo->prepare("SELECT * FROM users WHERE username = :username");
    $stmt->execute(['username' => $username]);
    $user = $stmt->fetch();
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['role'] = $user['role'];

        if ($user['role'] === 'admin') {
            header('Location: admin_dashboard.php'); // Redirect to admin dashboard
        } else {
            header('Location: index.php'); // Redirect to the regular user dashboard
        }
        exit;
    } else {
        echo 'Invalid username or password.';
    }
}
?>

<div class="row">
    <div class="col-md-6 offset-md-3">
        <h2>Login</h2>
        <form method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</div>

<?php include 'includes/footer.php'; ?>




// CATEGORIES.PHP
<?php
include '../includes/header.php';
session_start();
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Handle adding or editing categories
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['title'];
    $id = $_POST['id'] ?? null;

    if ($id) {
        // Update existing category
        $stmt = $pdo->prepare("UPDATE categories SET title = ? WHERE id = ?");
        $stmt->execute([$title, $id]);
    } else {
        // Add new category
        $stmt = $pdo->prepare("INSERT INTO categories (title) VALUES (?)");
        $stmt->execute([$title]);
    }
    header('Location: manage_categories.php');
    exit;
}

// Handle soft deletion
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $pdo->prepare("UPDATE categories SET deleted_at = NOW() WHERE id = ?");
    $stmt->execute([$id]);
    header('Location: manage_categories.php');
    exit;
}

// Fetch categories
$stmt = $pdo->query("SELECT * FROM categories WHERE deleted_at IS NULL");
$categories = $stmt->fetchAll();
?>

<div class="container">
    <h2>Manage Categories</h2>
    <!-- Form for adding/editing categories -->
    <form method="POST">
        <input type="hidden" name="id" value="">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" name="title" required>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>

    <h3>Existing Categories</h3>
    <table class="table">
        <thead>
            <tr>
                <th>Title</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($categories as $category): ?>
                <tr>
                    <td><?php echo htmlspecialchars($category['title']); ?></td>
                    <td>
                        <a href="edit_category.php?id=<?php echo $category['id']; ?>" class="btn btn-warning">Edit</a>
                        <a href="?delete=<?php echo $category['id']; ?>" class="btn btn-danger btn-delete">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const url = this.href;
            Swal.fire({
                title: 'Are you sure?',
                text: "This will mark the category as deleted.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = url;
                }
            });
        });
    });
</script>

<?php include '../includes/footer.php'; ?>


// AUTHORS.PHP

<?php
include '../includes/header.php';
include '../includes/db.php';

// Handle Add Author
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['add_author'])) {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $stmt = $pdo->prepare('INSERT INTO authors (first_name, last_name) VALUES (?, ?)');
    $stmt->execute([$first_name, $last_name]);
}

// Handle Edit Author
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['edit_author'])) {
    $id = $_POST['author_id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $stmt = $pdo->prepare('UPDATE authors SET first_name = ?, last_name = ? WHERE id = ?');
    $stmt->execute([$first_name, $last_name, $id]);
}

// Handle Delete Author
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $pdo->prepare('DELETE FROM authors WHERE id = ?');
    $stmt->execute([$id]);
}
?>

<div class="container mt-5">
    <h2>Manage Authors</h2>
    <form method="POST" class="form-inline">
        <div class="form-group">
            <input type="text" name="first_name" class="form-control mr-2" placeholder="First Name" required>
            <input type="text" name="last_name" class="form-control mr-2" placeholder="Last Name" required>
        </div>
        <button type="submit" name="add_author" class="btn btn-primary">Add Author</button>
    </form>

    <table class="table mt-4">
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $stmt = $pdo->query('SELECT * FROM authors');
            while ($author = $stmt->fetch()) {
                echo '<tr>';
                echo '<td>' . $author['id'] . '</td>';
                echo '<td>' . $author['first_name'] . '</td>';
                echo '<td>' . $author['last_name'] . '</td>';
                echo '<td>';
                echo '<button class="btn btn-sm btn-warning edit-btn" data-id="' . $author['id'] . '" data-first-name="' . $author['first_name'] . '" data-last-name="' . $author['last_name'] . '">Edit</button> ';
                echo '<a href="?delete=' . $author['id'] . '" class="btn btn-sm btn-danger">Delete</a>';
                echo '</td>';
                echo '</tr>';
            }
            ?>
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function() {
        $('.edit-btn').on('click', function() {
            var authorId = $(this).data('id');
            var firstName = $(this).data('first-name');
            var lastName = $(this).data('last-name');
            $('input[name="first_name"]').val(firstName);
            $('input[name="last_name"]').val(lastName);
            $('form').append('<input type="hidden" name="author_id" value="' + authorId + '">');
            $('button[name="add_author"]').attr('name', 'edit_author').text('Update Author');
        });
    });
</script>

<?php include '../includes/footer.php'; ?>

// BOOKS.PHP

<?php
include 'includes/header.php';
session_start();
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Handle adding or editing books
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['title'];
    $author_id = $_POST['author_id'];
    $category_id = $_POST['category_id'];
    $year_of_publication = $_POST['year_of_publication'];
    $number_of_pages = $_POST['number_of_pages'];
    $image_url = $_POST['image_url'];
    $id = $_POST['id'] ?? null;

    if ($id) {
        // Update existing book
        $stmt = $pdo->prepare("UPDATE books SET title = ?, author_id = ?, category_id = ?, year_of_publication = ?, number_of_pages = ?, image_url = ? WHERE id = ?");
        $stmt->execute([$title, $author_id, $category_id, $year_of_publication, $number_of_pages, $image_url, $id]);
    } else {
        // Add new book
        $stmt = $pdo->prepare("INSERT INTO books (title, author_id, category_id, year_of_publication, number_of_pages, image_url) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->execute([$title, $author_id, $category_id, $year_of_publication, $number_of_pages, $image_url]);
    }
    header('Location: manage_books.php');
    exit;
}

// Handle soft deletion
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $pdo->prepare("UPDATE books SET deleted_at = NOW() WHERE id = ?");
    $stmt->execute([$id]);
    header('Location: manage_books.php');
    exit;
}

// Fetch books
$stmt = $pdo->query("SELECT books.*, authors.first_name AS author_first_name, authors.last_name AS author_last_name, categories.title AS category_title 
    FROM books 
    JOIN authors ON books.author_id = authors.id 
    JOIN categories ON books.category_id = categories.id 
    WHERE books.deleted_at IS NULL");
$books = $stmt->fetchAll();
?>

<div class="container">
    <h2>Manage Books</h2>
    <!-- Form for adding/editing books -->
    <form method="POST">
        <input type="hidden" name="id" value="">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" name="title" required>
        </div>
        <div class="form-group">
            <label for="author_id">Author</label>
            <select class="form-control" name="author_id" required>
                <!-- Populate with authors -->
            </select>
        </div>
        <div class="form-group">
            <label for="category_id">Category</label>
            <select class="form-control" name="category_id" required>
                <!-- Populate with categories -->
            </select>
        </div>
        <div class="form-group">
            <label for="year_of_publication">Year of Publication</label>
            <input type="number" class="form-control" name="year_of_publication" required>
        </div>
        <div class="form-group">
            <label for="number_of_pages">Number of Pages</label>
            <input type="number" class="form-control" name="number_of_pages" required>
        </div>
        <div class="form-group">
            <label for="image_url">Image URL</label>
            <input type="text" class="form-control" name="image_url" required>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>

    <h3>Existing Books</h3>
    <table class="table">
        <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($books as $book): ?>
                <tr>
                    <td><?php echo htmlspecialchars($book['title']); ?></td>
                    <td><?php echo htmlspecialchars($book['author_first_name'] . ' ' . $book['author_last_name']); ?></td>
                    <td><?php echo htmlspecialchars($book['category_title']); ?></td>
                    <td>
                        <a href="edit_book.php?id=<?php echo $book['id']; ?>" class="btn btn-warning">Edit</a>
                        <a href="?delete=<?php echo $book['id']; ?>" class="btn btn-danger btn-delete">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const url = this.href;
            Swal.fire({
                title: 'Are you sure?',
                text: "This will mark the book as deleted and remove all associated comments.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = url;
                }
            });
        });
    });
</script>

<?php include 'includes/footer.php'; ?>


// COMMENTS.PHP


<?php
include 'includes/header.php';
session_start();
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Handle comment approval
if (isset($_GET['approve'])) {
    $id = $_GET['approve'];
    $stmt = $pdo->prepare("UPDATE comments SET approved = TRUE WHERE id = ?");
    $stmt->execute([$id]);
    header('Location: manage_comments.php');
    exit;
}

// Handle soft deletion
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $pdo->prepare("UPDATE comments SET deleted_at = NOW() WHERE id = ?");
    $stmt->execute([$id]);
    header('Location: manage_comments.php');
    exit;
}

// Fetch comments
$stmt = $pdo->query("SELECT comments.*, books.title AS book_title FROM comments JOIN books ON comments.book_id = books.id WHERE comments.deleted_at IS NULL");
$comments = $stmt->fetchAll();
?>

<div class="container">
    <h2>Manage Comments</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Book</th>
                <th>Comment</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($comments as $comment): ?>
                <tr>
                    <td><?php echo htmlspecialchars($comment['book_title']); ?></td>
                    <td><?php echo htmlspecialchars($comment['comment']); ?></td>
                    <td>
                        <?php if (!$comment['approved']): ?>
                            <a href="?approve=<?php echo $comment['id']; ?>" class="btn btn-success">Approve</a>
                        <?php endif; ?>
                        <a href="?delete=<?php echo $comment['id']; ?>" class="btn btn-danger btn-delete">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            const url = this.href;
            Swal.fire({
                title: 'Are you sure?',
                text: "This will mark the comment as deleted.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, keep it'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = url;
                }
            });
        });
    });
</script>

<?php include 'includes/footer.php'; ?>