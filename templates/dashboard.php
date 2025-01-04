<?php
session_start();
require '../includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}



// Fetch user's current monthly budget
$stmt = $pdo->prepare("SELECT monthly_budget FROM users WHERE id = ?");
$stmt->execute([$_SESSION['user_id']]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);
$monthly_budget = $user['monthly_budget'] ?? 0;

// Fetch predefined categories
$stmt = $pdo->prepare("SELECT id, name FROM categories WHERE user_id = ?");
$stmt->execute([$_SESSION['user_id']]);
$categories = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Fetch expenses for chart
$stmt = $pdo->prepare("SELECT SUM(amount) AS total_expenses FROM expenses WHERE user_id = ?");
$stmt->execute([$_SESSION['user_id']]);
$total_expenses = $stmt->fetchColumn() ?? 0;


// Calculate remaining budget
$stmt = $pdo->prepare("SELECT SUM(amount) AS total_expenses FROM expenses WHERE user_id = ?");
$stmt->execute([$_SESSION['user_id']]);
$total_expenses = $stmt->fetchColumn() ?? 0;
$remaining_budget = $monthly_budget - $total_expenses;

// Warning if budget is below 25% but greater than 0
$show_warning = ($monthly_budget > 0) && ($remaining_budget > 0) && ($remaining_budget <= 0.25 * $monthly_budget);


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Expense Tracker</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
    :root {
        --primary-color: #4caf50;
        --secondary-color: #3e8e41;
        --bg-color: #f4f7f6;
        --text-color: #333;
        --highlight-color: #f44336;
        --dark-bg: #121212;
        --dark-card: #1e1e1e;
        --dark-text: #e0e0e0;
    }

    body {
        background-color: var(--bg-color);
        color: var(--text-color);
    }

    body.dark-mode {
        background-color: var(--dark-bg);
        color: var(--dark-text);
    }

    body.dark-mode .card {
        background-color: var(--dark-card);
        color: var(--dark-text);
    }

    body.dark-mode .btn-primary {
        background-color: #555;
        border-color: #444;
    }

    body.dark-mode .btn-primary:hover {
        background-color: #444;
        border-color: #333;
    }

    body.dark-mode .alert {
        background-color: var(--dark-card);
        color: var(--dark-text);
    }

    .toggle-dark-mode {
        position: fixed;
        top: 20px;
        right: 20px;
        z-index: 10;
    }

    .dashboard-container {
        margin-top: 30px;
    }

    .card {
        border: none;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s, box-shadow 0.2s;
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
    }

    .btn-primary {
        background-color: var(--primary-color);
        border: none;
    }

    .btn-primary:hover {
        background-color: var(--secondary-color);
    }

    .alert {
        margin-top: 20px;
    }

    .chart-container {
        margin-top: 30px;
    }

    .toggle-dark-mode {
        position: fixed;
        top: 20px;
        right: 20px;
        z-index: 10;
    }
    </style>
</head>

<body>
    <!-- Dark Mode Toggle -->
    <div class="toggle-dark-mode">
        <button id="darkModeToggle" class="btn btn-secondary">Dark Mode</button>
    </div>
    <div class="container dashboard-container">

        <div class="row">
            <div class="col-12 text-center mb-4">
                <h1>Expense Tracker Dashboard</h1>
                <p class="text-muted">Manage your monthly budget and expenses with ease.</p>
            </div>
        </div>

        <div class="row g-4 text-center">
            <div class="col-md-4">
                <div class="card p-3 bg-light">
                    <i class="fas fa-wallet fa-3x mb-3 text-primary"></i>
                    <h5>Add Expense</h5>
                    <p class="text-muted">Record a new expense</p>
                    <a href="add_expense.php" class="btn btn-primary w-100">Add Expense</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 bg-light">
                    <i class="fas fa-list-alt fa-3x mb-3 text-primary"></i>
                    <h5>View Expenses</h5>
                    <p class="text-muted">Check your expense history</p>
                    <a href="view_expenses.php" class="btn btn-primary w-100">View Expenses</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 bg-light">
                    <i class="fas fa-cogs fa-3x mb-3 text-primary"></i>
                    <h5>Manage Categories</h5>
                    <p class="text-muted">Organize your expense categories</p>
                    <a href="manage_categories.php" class="btn btn-primary w-100">Manage Categories</a>
                </div>
            </div>
        </div>

        <!-- Alerts -->
        <?php if ($show_warning): ?>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Warning:</strong> Your remaining budget is less than 25%!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <?php endif; ?>



        <!-- Monthly Budget Section -->
        <div class="row mb-4 py-4">
            <div class="col-md-6">
                <h3>Monthly Budget: $<span id="budget-display"><?= number_format($monthly_budget, 2) ?></span></h3>
                <h3>Current Expenses: $<span id="expenses-display"><?= number_format($total_expenses, 2) ?></span></h3>
                <h4>Remaining Budget: $<span id="remaining-display"><?= number_format($remaining_budget, 2) ?></span>
                </h4>
            </div>
            <div class="col-md-6">
                <form id="update-budget-form">
                    <div class="input-group">
                        <input type="number" step="0.01" class="form-control" id="new-budget"
                            placeholder="Update Monthly Budget">
                        <button type="button" class="btn btn-primary" id="update-budget-btn">Update Budget</button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Add Expense Section -->
        <div class="row mb-4">
            <div class="col-12">
                <h5>Add Expense</h5>
                <form id="add-expense-form">
                    <div class="row">
                        <div class="col-md-4">
                            <label for="category" class="form-label">Category</label>
                            <select name="category_id" id="category" class="form-select" required>
                                <option value="" disabled selected>Select a category</option>
                                <?php foreach ($categories as $category): ?>
                                <option value="<?= $category['id'] ?>"><?= htmlspecialchars($category['name']) ?>
                                </option>
                                <?php endforeach; ?>
                                <option value="new">Add New Category</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="amount" class="form-label">Amount ($)</label>
                            <input type="number" step="0.01" name="amount" id="amount" class="form-control" required>
                        </div>
                        <div class="col-md-4">
                            <label for="description" class="form-label">Description</label>
                            <input type="text" name="description" id="description" class="form-control">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="expense_date" class="form-label">Date</label>
                        <input type="date" name="expense_date" id="expense_date" class="form-control" required>
                    </div>


                    <button type="button" class="btn btn-primary mt-3" id="add-expense-btn">Add Expense</button>
                </form>
            </div>
        </div>

        <div class="modal fade" id="confirmExpenseModal" tabindex="-1" aria-labelledby="confirmExpenseLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="confirmExpenseLabel">Confirm Expense</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        This expense will exceed your category budget. Do you want to continue?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                        <button type="button" id="confirmExpense" class="btn btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>



        <!-- Charts -->
        <div class="row mt-5">
            <div class="col-md-6">
                <h5>Expense Breakdown</h5>
                <canvas id="expensePieChart"></canvas>
            </div>
            <div class="col-md-6">
                <h5>Expense Trends</h5>
                <canvas id="expenseBarChart"></canvas>
            </div>
        </div>
    </div>
    <!-- Bootstrap Bundle JS (includes Popper.js) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        const darkModeToggle = document.getElementById('darkModeToggle');
        const updateBudgetBtn = document.getElementById('update-budget-btn');
        const addExpenseBtn = document.getElementById("add-expense-btn");
        const confirmExpenseBtn = document.getElementById("confirmExpense");
        let pendingExpense = null; // Store pending expense data for confirmation

        addExpenseBtn.addEventListener("click", async () => {
            const category = document.getElementById("category").value;
            const amount = document.getElementById("amount").value;
            const description = document.getElementById("description").value;
            const expenseDate = document.getElementById("expense_date").value;

            if (!category || !amount || !expenseDate) {
                alert("Please fill in all required fields.");
                return;
            }

            try {
                const response = await fetch("add_expense_action.php", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                    },
                    body: JSON.stringify({
                        category_id: category,
                        amount: parseFloat(amount),
                        description: description,
                        expense_date: expenseDate,
                    }),
                });

                const data = await response.json();

                if (data.success) {
                    alert("Expense added successfully!");
                    location.reload();
                } else if (data.budget_exceeded) {
                    // Save pending expense and show modal for confirmation
                    pendingExpense = {
                        category_id: category,
                        amount: parseFloat(amount),
                        description,
                        expense_date,
                        override: true, // Allow override
                    };
                    const confirmExpenseModal = new bootstrap.Modal(
                        document.getElementById("confirmExpenseModal")
                    );
                    confirmExpenseModal.show();
                } else {
                    alert(data.message || "Failed to add expense.");
                }
            } catch (error) {
                console.error("Error:", error);
                alert("Something went wrong. Please try again.");
            }
        });

        confirmExpenseBtn.addEventListener("click", async () => {
            if (!pendingExpense) {
                alert("No pending expense to confirm.");
                return;
            }

            try {
                const response = await fetch("add_expense_action.php", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                    },
                    body: JSON.stringify(pendingExpense),
                });

                const data = await response.json();

                if (data.success) {
                    alert("Expense added successfully!");
                    location.reload();
                } else {
                    alert(data.message || "Failed to add expense.");
                }
            } catch (error) {
                console.error("Error:", error);
                alert("Something went wrong. Please try again.");
            }
        });

        // Check local storage for dark mode preference
        if (localStorage.getItem('dark-mode') === 'enabled') {
            document.body.classList.add('dark-mode');
            darkModeToggle.textContent = 'Light Mode';
        }

        // Toggle Dark Mode
        darkModeToggle.addEventListener('click', () => {
            document.body.classList.toggle('dark-mode');
            const darkModeEnabled = document.body.classList.contains('dark-mode');
            darkModeToggle.textContent = darkModeEnabled ? 'Light Mode' : 'Dark Mode';

            // Save preference to local storage
            if (darkModeEnabled) {
                localStorage.setItem('dark-mode', 'enabled');
            } else {
                localStorage.removeItem('dark-mode');
            }
        });

        // Update Monthly Budget
        updateBudgetBtn.addEventListener('click', async () => {
            const newBudget = document.getElementById('new-budget').value;
            if (newBudget) {
                const response = await fetch('../templates/update_budget.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        budget: newBudget
                    })
                });
                const data = await response.json();
                if (data.success) {
                    document.getElementById('budget-display').textContent = parseFloat(newBudget)
                        .toFixed(2);
                    const remaining = parseFloat(newBudget) - parseFloat(document.getElementById(
                        'remaining-display').textContent);
                    document.getElementById('remaining-display').textContent = remaining.toFixed(2);
                    alert('Budget updated successfully!');
                } else {
                    alert(data.message || 'Failed to update budget.');
                }
            }
        });

        addExpenseBtn.addEventListener('click', async () => {
            const category = document.getElementById('category').value;
            const amount = document.getElementById('amount').value;
            const description = document.getElementById('description').value;
            const expenseDate = document.getElementById('expense_date').value;

            if (category && amount && expenseDate) {
                const response = await fetch('../add_expense_action.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        category_id: category,
                        amount: amount,
                        description: description,
                        expense_date: expenseDate
                    })
                });

                const data = await response.json();
                if (data.success) {
                    alert('Expense added successfully!');

                    // Dynamically update the total expenses and remaining budget
                    const expensesDisplay = document.getElementById('expenses-display');
                    const remainingDisplay = document.getElementById('remaining-display');

                    let currentExpenses = parseFloat(expensesDisplay.textContent.replace(',', ''));
                    currentExpenses += parseFloat(amount);
                    expensesDisplay.textContent = currentExpenses.toFixed(2);

                    let currentRemaining = parseFloat(remainingDisplay.textContent.replace(',',
                        ''));
                    currentRemaining -= parseFloat(amount);
                    remainingDisplay.textContent = currentRemaining.toFixed(2);

                    // Optionally append the new expense to a table or display
                    const newRow = `
                <tr>
                    <td>${document.querySelector(`#category option[value="${category}"]`).textContent}</td>
                    <td>${parseFloat(amount).toFixed(2)}</td>
                    <td>${description}</td>
                    <td>${expenseDate}</td>
                </tr>
            `;
                    document.querySelector('#expense-table-body').insertAdjacentHTML('afterbegin',
                        newRow);



                    // Update the charts dynamically
                    updateCharts();
                } else {
                    alert(data.message || 'Failed to add expense.');
                }
            }
        });


        // Initialize Charts
        async function initCharts() {
            const response = await fetch('../get_expense_data.php');
            const data = await response.json();

            const labels = data.map(item => item.category);
            const values = data.map(item => parseFloat(item.total));

            new Chart(document.getElementById('expensePieChart'), {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        data: values,
                        backgroundColor: ['#ff6384', '#36a2eb', '#ffcd56', '#4bc0c0',
                            '#9966ff', '#ff9f40'
                        ]
                    }]
                }
            });

            new Chart(document.getElementById('expenseBarChart'), {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Expenses',
                        data: values,
                        backgroundColor: '#36a2eb'
                    }]
                }
            });
        }

        initCharts();
    });
    </script>
</body>

</html>