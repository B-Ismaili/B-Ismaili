<?php
include 'includes/db.php';
include 'includes/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $book_id = $_POST['book_id'];
    $user_id = $_SESSION['user_id'];
    $content = $_POST['content'];

    $stmt = $pdo->prepare('INSERT INTO notes (book_id, user_id, content) VALUES (?, ?, ?)');
    $stmt->execute([$book_id, $user_id, $content]);

    $note_id = $pdo->lastInsertId();
    echo '<div class="note" data-note-id="' . $note_id . '">';
    echo '<p>' . $content . '</p>';
    echo '<button class="btn btn-sm btn-warning edit-note">Edit</button>';
    echo '<button class="btn btn-sm btn-danger delete-note">Delete</button>';
    echo '</div>';
}
