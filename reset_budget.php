<?php
require '../includes/db.php';

try {
    $today = new DateTime();
    $firstDayOfMonth = $today->format('Y-m-01');

    $stmt = $pdo->prepare("UPDATE categories
                           SET spent_this_month = 0, last_reset = ?
                           WHERE last_reset < ?");
    $stmt->execute([$firstDayOfMonth, $firstDayOfMonth]);

    echo "Monthly budgets reset successfully.";
} catch (PDOException $e) {
    error_log("Error resetting budgets: " . $e->getMessage());
}