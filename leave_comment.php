<?php
include 'includes/header.php';
include_once 'includes/db.php';
include_once 'includes/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isLoggedIn()) {
    $book_id = $_POST['book_id'];
    $content = $_POST['content'];
    $user_id = $_SESSION['user_id'];

    $stmt = $pdo->prepare('INSERT INTO comments (book_id, user_id, content, is_approved) VALUES (?, ?, ?, 0)');
    if ($stmt->execute([$book_id, $user_id, $content])) {
        echo "Comment submitted and awaiting approval.";
    } else {
        echo "Error submitting your comment.";
    }
}

header('Location: book.php?id=' . $_POST['book_id']);
exit;