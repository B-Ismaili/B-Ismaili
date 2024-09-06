<?php
session_start();
require 'includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $comment_id = $_POST['comment_id'];
    $user_id = $_SESSION['user_id'];

    $stmt = $pdo->prepare('SELECT * FROM comments WHERE id = ? AND user_id = ?');
    $stmt->execute([$comment_id, $user_id]);
    $comment = $stmt->fetch();

    if ($comment) {
        $stmt = $pdo->prepare('DELETE FROM comments WHERE id = ?');
        $stmt->execute([$comment_id]);

        echo 'success';
    } else {
        echo 'error';
    }
} else {
    header('Location: index.php');
    exit();
}