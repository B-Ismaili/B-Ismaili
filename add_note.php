<?php
include_once 'includes/db.php';
include_once 'includes/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isLoggedIn()) {
    if (isset($_POST['book_id']) && !empty($_POST['book_id'])) {
        $book_id = $_POST['book_id'];
        $content = $_POST['content'];
        $user_id = $_SESSION['user_id'];

        $stmt = $pdo->prepare('INSERT INTO notes (book_id, user_id, content) VALUES (?, ?, ?)');
        if ($stmt->execute([$book_id, $user_id, $content])) {
            $note_id = $pdo->lastInsertId();
            echo '<div class="note" data-note-id="' . $note_id . '">';
            echo '<p>' . htmlspecialchars($content) . '</p>';
            echo '<button class="btn btn-sm btn-warning edit-note">Edit</button>';
            echo '<button class="btn btn-sm btn-danger delete-note">Delete</button>';
            echo '</div>';
        } else {
            echo "Error adding your note.";
        }
    } else {
        echo "Book ID is missing.";
    }
}