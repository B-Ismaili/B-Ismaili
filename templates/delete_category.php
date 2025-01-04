<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if (!isset($_GET['id'])) {
    header("Location: manage_categories.php");
    exit();
}

$category_id = $_GET['id'];

try {
    // Check if the category belongs to the user
    $stmt = $pdo->prepare("DELETE FROM categories WHERE id = ? AND user_id = ?");
    $stmt->execute([$category_id, $_SESSION['user_id']]);

    header("Location: manage_categories.php");
    exit();
} catch (PDOException $e) {
    error_log("Error deleting category: " . $e->getMessage());
    header("Location: manage_categories.php?error=Unable to delete category");
    exit();
}
?>
