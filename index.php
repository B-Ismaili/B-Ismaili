<?php
session_start();
require_once 'database.php';

if (isset($_POST['license_plate'])) {
    $license_plate = $_POST['license_plate'];
    $stmt = $pdo->prepare("SELECT * FROM registrations WHERE registration_number = ?");
    $stmt->execute([$license_plate]);
    $vehicle = $stmt->fetch();
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Vehicle Licensing System</title>
    <!-- Include Bootstrap CSS -->
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Vehicle Licensing System</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <form method="POST" action="index.php">
            <div class="form-group">
                <label for="license_plate">Enter License Plate Number:</label>
                <input type="text" class="form-control" id="license_plate" name="license_plate" required>
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
        </form>

        <?php if (isset($vehicle)) : ?>
        <?php if ($vehicle) : ?>
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
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><?= htmlspecialchars($vehicle['model']) ?></td>
                    <td><?= htmlspecialchars($vehicle['type']) ?></td>
                    <td><?= htmlspecialchars($vehicle['chassis_number']) ?></td>
                    <td><?= htmlspecialchars($vehicle['production_year']) ?></td>
                    <td><?= htmlspecialchars($vehicle['registration_number']) ?></td>
                    <td><?= htmlspecialchars($vehicle['fuel_type']) ?></td>
                    <td><?= htmlspecialchars($vehicle['registration_to']) ?></td>
                </tr>
            </tbody>
        </table>
        <?php else : ?>
        <p>No record found for this license plate number.</p>
        <?php endif; ?>
        <?php endif; ?>
    </div>
    <!-- Include Bootstrap JS and dependencies -->
</body>

</html>