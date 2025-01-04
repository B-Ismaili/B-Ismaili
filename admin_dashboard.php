<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    header('Location: login.php');
    exit;
}

require_once 'database.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle form submission for vehicle registration
    $model = $_POST['model'];
    $type = $_POST['type'];
    $chassis_number = $_POST['chassis_number'];
    $production_year = $_POST['production_year'];
    $registration_number = $_POST['registration_number'];
    $fuel_type = $_POST['fuel_type'];
    $registration_to = $_POST['registration_to'];

    // Validate and insert data
    $stmt = $pdo->prepare("INSERT INTO registrations (model, type, chassis_number, production_year, registration_number,
fuel_type, registration_to) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->execute([$model, $type, $chassis_number, $production_year, $registration_number, $fuel_type, $registration_to]);
}

// Fetch all registered vehicles
$stmt = $pdo->query("SELECT * FROM registrations");
$vehicles = $stmt->fetchAll();

// Fetch options for dropdowns
$models = $pdo->query("SELECT * FROM vehicle_models")->fetchAll();
$types = ['sedan', 'coupe', 'hatchback', 'suv', 'minivan'];
$fuel_types = ['gasoline', 'diesel', 'electric'];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <!-- Include Bootstrap CSS -->
</head>

<body>
    <div class="container">
        <h1>Admin Dashboard</h1>
        <form method="POST" action="admin_dashboard.php">
            <div class="form-group">
                <label for="model">Vehicle Model:</label>
                <select class="form-control" id="model" name="model" required>
                    <?php foreach ($models as $model) : ?>
                        <option value="<?= htmlspecialchars($model['name']) ?>"><?= htmlspecialchars($model['name']) ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="type">Vehicle Type:</label>
                <select class="form-control" id="type" name="type" required>
                    <?php foreach ($types as $type) : ?>
                        <option value="<?= htmlspecialchars($type) ?>"><?= htmlspecialchars($type) ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="chassis_number">Chassis Number:</label>
                <input type="text" class="form-control" id="chassis_number" name="chassis_number" required>
            </div>
            <div class="form-group">
                <label for="production_year">Production Year:</label>
                <input type="date" class="form-control" id="production_year" name="production_year" required>
            </div>
            <div class="form-group">
                <label for="registration_number">Registration Number:</label>
                <input type="text" class="form-control" id="registration_number" name="registration_number" required>
            </div>
            <div class="form-group">
                <label for="fuel_type">Fuel Type:</label>
                <select class="form-control" id="fuel_type" name="fuel_type" required>
                    <?php foreach ($fuel_types as $fuel_type) : ?>
                        <option value="<?= htmlspecialchars($fuel_type) ?>"><?= htmlspecialchars($fuel_type) ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="registration_to">Registration To:</label>
                <input type="date" class="form-control" id="registration_to" name="registration_to" required>
            </div>
            <button type="submit" class="btn btn-primary">Register Vehicle</button>
        </form>

        <h2>Registered Vehicles</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Model</th>
                    <th>Type</th>
                    <th>Chassis Number</th>
                    <th>Production Year</th>
                    <th>Registration Number</th>
                    <th>Fuel Type</th>
                    <th>Registration To</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($vehicles as $vehicle) : ?>
                    <tr class="<?= strtotime($vehicle['registration_to']) < strtotime('+1 month') ? 'table-warning' : '' ?> <?= strtotime($vehicle['registration_to']) < time() ? 'table-danger' : '' ?>">
                        <td><?= htmlspecialchars($vehicle['model']) ?></td>
                        <td><?= htmlspecialchars($vehicle['type']) ?></td>
                        <td><?= htmlspecialchars($vehicle['chassis_number']) ?></td>
                        <td><?= htmlspecialchars($vehicle['production_year']) ?></td>
                        <td><?= htmlspecialchars($vehicle['registration_number']) ?></td>
                        <td><?= htmlspecialchars($vehicle['fuel_type']) ?></td>
                        <td><?= htmlspecialchars($vehicle['registration_to']) ?></td>
                        <td>
                            <!-- Add actions here -->
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <form method="GET" action="admin_dashboard.php">
            <div class="form-group">
                <label for="search">Search:</label>
                <input type="text" class="form-control" id="search" name="search">
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
        </form>
    </div>
    <!-- Include Bootstrap JS and dependencies -->
</body>

</html>