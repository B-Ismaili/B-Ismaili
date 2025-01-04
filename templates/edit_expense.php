<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id']) || !isset($_GET['id'])) {
    header("Location: login.php");
    exit();
}

$expense_id = $_GET['id'];

// Fetch the specific expense
$stmt = $pdo->prepare("SELECT * FROM expenses WHERE id = ? AND user_id = ?");
$stmt->execute([$expense_id, $_SESSION['user_id']]);
$expense = $stmt->fetch();

if (!$expense) {
    header("Location: view_expenses.php");
    exit();
}

// Update expense logic
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $amount = $_POST['amount'];
    $description = $_POST['description'];
    $expense_date = $_POST['expense_date'];

    $stmt = $pdo->prepare("UPDATE expenses SET amount = ?, description = ?, expense_date = ? WHERE id = ? AND user_id = ?");
    $stmt->execute([$amount, $description, $expense_date, $expense_id, $_SESSION['user_id']]);

    header("Location: view_expenses.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Edit Expense</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5">
        <h2>Edit Expense</h2>
        <form method="POST">
            <div class="mb-3">
                <label for="amount" class="form-label">Amount</label>
                <input type="number" step="0.01" name="amount" id="amount" class="form-control"
                    value="<?= htmlspecialchars($expense['amount']); ?>" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <input type="text" name="description" id="description" class="form-control"
                    value="<?= htmlspecialchars($expense['description']); ?>" required>
            </div>
            <div class="mb-3">
                <label for="expense_date" class="form-label">Date</label>
                <input type="date" name="expense_date" id="expense_date" class="form-control"
                    value="<?= htmlspecialchars($expense['expense_date']); ?>" required>
            </div>
            <button type="submit" class="btn btn-success">Save Changes</button>
            <a href="view_expenses.php" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>

</html>