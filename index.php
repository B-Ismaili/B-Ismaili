<?php
session_start();

// Include database connection
require_once 'db_connection.php';

// Initialize variables
$vehicleInfo = null;
$errorMsg = null;

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate license plate input
    $licensePlate = trim($_POST['licensePlate']);

    if (!empty($licensePlate)) {
        $sql = "SELECT v.*, vm.model_name, vt.type_name, ft.fuel_name 
                FROM vehicles v
                JOIN vehicle_models vm ON v.vehicle_model_id = vm.id
                JOIN vehicle_types vt ON v.vehicle_type_id = vt.id
                JOIN fuel_types ft ON v.fuel_type_id = ft.id
                WHERE v.registration_number = :licensePlate";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':licensePlate', $licensePlate);
        $stmt->execute();
        $vehicle = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($vehicle) {
            // Vehicle found, prepare HTML to display information
            $vehicleInfo = "
                <div class='card'>
                    <div class='card-header'>
                        Vehicle Information
                    </div>
                    <div class='card-body'>
                        <div class='row'>
                            <div class='col-sm'>
                                <strong>License Plate:</strong> {$vehicle['registration_number']}<br>
                                <strong>Model:</strong> {$vehicle['model_name']}<br>
                                <strong>Production Year:</strong> {$vehicle['vehicle_production_year']}<br>
                                <strong>Fuel Type:</strong> {$vehicle['fuel_name']}<br>
                                <strong>Registration To:</strong> {$vehicle['registration_to']}<br>
                            </div>
                        </div>
                    </div>
                </div>";
        } else {
            // No vehicle found with the entered license plate
            $errorMsg = "<div class='alert alert-danger mt-3' role='alert'>
                            No records found for license plate number: <strong>$licensePlate</strong>
                        </div>";
        }
    } else {
        // Display an error message if license plate is empty
        $errorMsg = "<div class='alert alert-danger mt-3' role='alert'>
                        Please enter a license plate number.
                    </div>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Vehicle Licensing System</title>
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Vehicle Licensing System</a>
        <ul class="navbar-nav ml-auto">
            <?php if (isset($_SESSION['username'])) : ?>
                <li class="nav-item">
                    <a class="nav-link" href="welcome.php">Welcome, <?php echo $_SESSION['username']; ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.php">Logout</a>
                </li>
            <?php else : ?>
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login</a>
                </li>
            <?php endif; ?>
        </ul>
    </nav>
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                Enter License Plate Number
            </div>
            <div class="card-body">
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                    <div class="form-group">
                        <label for="licensePlate">License Plate Number:</label>
                        <input type="text" class="form-control" id="licensePlate" name="licensePlate" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Lookup Vehicle</button>
                </form>
            </div>
        </div>

        <?php
        // Display vehicle information or error message
        if ($vehicleInfo) {
            echo $vehicleInfo;
        } elseif ($errorMsg) {
            echo $errorMsg;
        }
        ?>
    </div>
</body>

</html>