<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Fetch expenses
$stmt = $pdo->prepare("
    SELECT expenses.id, categories.name AS category, expenses.amount, expenses.description, expenses.expense_date
    FROM expenses
    JOIN categories ON expenses.category_id = categories.id
    WHERE expenses.user_id = ?
    ORDER BY expenses.expense_date DESC
");
$stmt->execute([$_SESSION['user_id']]);
$expenses = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Expenses - Expense Tracker</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    body {
        background-color: #f8f9fa;
    }

    .table-container {
        margin: 50px auto;
        max-width: 900px;
        padding: 20px;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="table-container">
            <h2 class="text-center">Your Expenses</h2>
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Category</th>
                        <th>Amount ($)</th>
                        <th>Description</th>
                        <th>Date</th>
                        <th>Actions</th>
                        <th><a href="../export_expenses.php" class="btn btn-secondary">Export to CSV</a></th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (count($expenses) > 0): ?>
                    <?php foreach ($expenses as $expense): ?>
                    <tr>
                        <td><?= htmlspecialchars($expense['category']); ?></td>
                        <td><?= htmlspecialchars(number_format($expense['amount'], 2)); ?></td>
                        <td><?= htmlspecialchars($expense['description']); ?></td>
                        <td><?= htmlspecialchars(date("F j, Y", strtotime($expense['expense_date']))); ?></td>
                        <td>
                            <a href="edit_expense.php?id=<?= $expense['id']; ?>" class="btn btn-sm btn-warning">Edit</a>
                            <form method="POST" action="delete_expense.php" style="display:inline;">
                                <input type="hidden" name="expense_id" value="<?= $expense['id']; ?>">
                                <button type="submit" class="btn btn-sm btn-danger"
                                    onclick="return confirm('Are you sure you want to delete this expense?');">
                                    Delete
                                </button>
                            </form>
                        </td>
                        <td></td>
                    </tr>
                    <?php endforeach; ?>
                    <?php else: ?>
                    <tr>
                        <td colspan="5" class="text-center">No expenses found.</td>
                    </tr>
                    <?php endif; ?>
                </tbody>
            </table>
            <div class="text-center mt-3">
                <a href="dashboard.php" class="btn btn-primary">Back to Dashboard</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>