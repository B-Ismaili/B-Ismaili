<?php
include 'includes/db.php';
include 'includes/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $note_id = $_POST['id'];
    $content = $_POST['content'];

    $stmt = $pdo->prepare('UPDATE notes SET content = ? WHERE id = ?');
    $stmt->execute([$content, $note_id]);
}
