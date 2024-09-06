<?php
include_once 'includes/db.php';
include_once 'includes/auth.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isLoggedIn()) {
    $note_id = $_POST['id'];
    $user_id = $_SESSION['user_id'];

    $stmt = $pdo->prepare('DELETE FROM notes WHERE id = ? AND user_id = ?');
    if ($stmt->execute([$note_id, $user_id])) {
        echo "Note deleted.";
    } else {
        echo "Error deleting your note.";
    }
}