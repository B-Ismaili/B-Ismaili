<?php
session_start();
require 'includes/db.php';


if (!isset($_SESSION['user_id'])) {
    die("Unauthorized access.");
}

header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename=expenses.csv');

$user_id = $_SESSION['user_id'];
$stmt = $pdo->prepare("
    SELECT categories.name AS category, expenses.amount, expenses.description, expenses.expense_date
    FROM expenses
    JOIN categories ON expenses.category_id = categories.id
    WHERE expenses.user_id = ?
    ORDER BY expenses.expense_date DESC
");
$stmt->execute([$user_id]);
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

$output = fopen('php://output', 'w');
fputcsv($output, ['Category', 'Amount', 'Description', 'Date']);
foreach ($data as $row) {
    fputcsv($output, $row);
}
fclose($output);
