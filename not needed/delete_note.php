<?php
include 'includes/db.php';
include 'includes/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $note_id = $_POST['id'];

    $stmt = $pdo->prepare('DELETE FROM notes WHERE id = ?');
    $stmt->execute([$note_id]);
}
