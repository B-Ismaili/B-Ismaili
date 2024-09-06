<?php
include 'includes/header.php';

// Check if the user is logged in and if they are an admin
// if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'admin') {
// header('Location: index.php');
// exit;
// }
?>

<h1>Admin Dashboard</h1>
<ul>
    <li><a href="manage_categories.php">Manage Categories</a></li>
    <li><a href="manage_authors.php">Manage Authors</a></li>
    <li><a href="manage_books.php">Manage Books</a></li>
    <li><a href="manage_comments.php">Manage Comments</a></li>
</ul>

<?php include 'includes/footer.php'; ?>