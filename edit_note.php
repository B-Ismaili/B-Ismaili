<?php
include 'includes/header.php';
include_once 'includes/db.php';
include_once 'includes/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isLoggedIn()) {
    $note_id = $_POST['id'];
    $content = $_POST['content'];
    $user_id = $_SESSION['user_id'];

    $stmt = $pdo->prepare('UPDATE notes SET content = ? WHERE id = ? AND user_id = ?');
    if ($stmt->execute([$content, $note_id, $user_id])) {
        echo "Note updated.";
    } else {
        echo "Error updating your note.";
    }
}