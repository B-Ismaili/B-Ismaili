<?php
session_start();
require 'includes/db.php';


if (!isset($_SESSION['user_id'])) {
    header("Content-Type: application/json");
    echo json_encode(["error" => "Unauthorized access"]);
    exit();
}

$user_id = $_SESSION['user_id'];

try {
    $stmt = $pdo->prepare("
        SELECT categories.name AS category, SUM(expenses.amount) AS total
        FROM expenses
        JOIN categories ON expenses.category_id = categories.id
        WHERE expenses.user_id = ?
        GROUP BY categories.name
        ORDER BY total DESC
    ");
    $stmt->execute([$user_id]);
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

    header("Content-Type: application/json");
    echo json_encode($data);
} catch (PDOException $e) {
    header("Content-Type: application/json");
    echo json_encode(["error" => $e->getMessage()]);
}
