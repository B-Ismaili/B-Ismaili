<?php
session_start();
require 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['register'])) {

    $vehicle_model_id = $_POST['vehicle_model_id'];
    $vehicle_type_id = $_POST['vehicle_type_id'];
    $vehicle_chassis_number = $_POST['vehicle_chassis_number'];
    $vehicle_production_year = $_POST['vehicle_production_year'];
    $registration_number = $_POST['registration_number'];
    $fuel_type_id = $_POST['fuel_type_id'];
    $registration_to = $_POST['registration_to'];


    if (!isset($_POST['vehicle_type_id']) || empty($_POST['vehicle_type_id'])) {

        echo "Error: Vehicle Type is required.";

        exit;
    }

    $stmt = $pdo->prepare('INSERT INTO vehicles (vehicle_model_id, vehicle_type_id, chassis_number, production_year, registration_number, fuel_type_id, registration_to) VALUES (?, ?, ?, ?, ?, ?, ?)');
    $stmt->execute([$vehicle_model_id, $vehicle_type_id, $vehicle_chassis_number, $vehicle_production_year, $registration_number, $fuel_type_id, $registration_to]);


    header('Location: welcome.php');
    exit;
}
// Fetch
function fetchModels($pdo)
{
    return $pdo->query('SELECT * FROM vehicle_models')->fetchAll();
}

function fetchTypes($pdo)
{
    return $pdo->query('SELECT * FROM vehicle_types')->fetchAll();
}

function fetchFuelTypes($pdo)
{
    return $pdo->query('SELECT * FROM fuel_types')->fetchAll();
}
// Fetch
function fetchRegistrations($pdo)
{
    return $pdo->query('SELECT v.*, vm.model_name, vt.type_name, ft.fuel_name 
                        FROM vehicles v
                        JOIN vehicle_models vm ON v.vehicle_model_id = vm.id
                        JOIN vehicle_types vt ON v.vehicle_type_id = vt.id
                        JOIN fuel_types ft ON v.fuel_type_id = ft.id')->fetchAll();
}

$models = fetchModels($pdo);
$types = fetchTypes($pdo);
$fuel_types = fetchFuelTypes($pdo);

$registrations = fetchRegistrations($pdo);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <a class="nav-link" href="logout.php">Logout</a>
    </nav>

    <div class="container mt-5">
        <h1>Vehicle Registration Form</h1>
        <form method="POST">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="vehicle_model_id">Vehicle Model</label>
                        <select class="form-control" id="vehicle_model_id" name="vehicle_model_id">
                            <?php foreach ($models as $model) : ?>
                                <option value="<?= $model['id'] ?>"><?= htmlspecialchars($model['model_name']) ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="vehicle_chassis_number">Vehicle Chassis Number</label>
                        <input type="text" class="form-control" id="vehicle_chassis_number" name="vehicle_chassis_number" required>
                    </div>
                    <div class="form-group">
                        <label for="vehicle_type_id">Vehicle Type</label>
                        <select class="form-control" id="vehicle_type_id" name="vehicle_type_id">
                            <?php foreach ($types as $type) : ?>
                                <option value="<?= $type['id'] ?>">
                                    <?= htmlspecialchars($type['type_name']); ?></option><?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="vehicle_production_year">Vehicle Production Year</label>
                        <input type="number" class="form-control" id="vehicle_production_year" name="vehicle_production_year" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="registration_number">Registration Number</label>
                        <input type="text" class="form-control" id="registration_number" name="registration_number" required>
                    </div>
                    <div class="form-group">
                        <label for="fuel_type_id">Fuel Type</label>
                        <select class="form-control" id="fuel_type_id" name="fuel_type_id">
                            <?php foreach ($fuel_types as $fuel_type) : ?>
                                <option value="<?= $fuel_type['id'] ?>"><?= htmlspecialchars($fuel_type['fuel_name']) ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="registration_to">Registration To</label>
                        <input type="date" class="form-control" id="registration_to" name="registration_to" required>
                    </div>
                </div>
            </div>
            <button type="submit" name="register" class="btn btn-primary">Register Vehicle</button>
        </form>

        <h2 class="mt-5">Licensed Vehicles</h2>
        <input type="text" class="form-control mb-3" id="search" placeholder="Search by model, license plate or chassis number">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Vehicle Model</th>
                    <th>Vehicle Type</th>
                    <th>Vehicle Chassis Number</th>
                    <th>Vehicle Production Year</th>
                    <th>Registration Number</th>
                    <th>Fuel Type</th>
                    <th>Registration To</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($registrations as $index => $registration) : ?>
                    <?php

                    $registrationDate = new DateTime($registration['registration_to']);
                    $currentDate = new DateTime();
                    $interval = $currentDate->diff($registrationDate)->days;
                    $rowClass = '';

                    if ($registrationDate < $currentDate) {
                        $rowClass = 'table-danger'; // Red for expired
                    } elseif ($interval <= 30) {
                        $rowClass = 'table-warning'; // Yellow for expiring soon
                    }
                    ?>
                    <tr class="<?= $rowClass ?>">
                        <td><?= $index + 1 ?></td>
                        <td><?= htmlspecialchars($registration['model_name']) ?></td>
                        <td><?= htmlspecialchars($registration['type_name']) ?></td>
                        <td><?= htmlspecialchars($registration['chassis_number']) ?></td>
                        <td><?= htmlspecialchars($registration['production_year']) ?></td>
                        <td><?= htmlspecialchars($registration['registration_number']) ?></td>
                        <td><?= htmlspecialchars($registration['fuel_name']) ?></td>
                        <td><?= htmlspecialchars($registration['registration_to']) ?></td>
                        <td>
                            <a href="edit_vehicle.php?id=<?= $registration['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
                            <a href="delete_vehicle.php?id=<?= $registration['id'] ?>" class="btn btn-sm btn-danger">Delete</a>
                            <a href="extend_vehicle.php?id=<?php echo $registration['id']; ?>" class="btn btn-sm btn-primary">Extend</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</body>

</html>