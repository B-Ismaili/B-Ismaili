<?php
session_start();
require 'config.php';


$vehicleModels = $pdo->query('SELECT * FROM vehicle_models')->fetchAll();


$id = $_GET['id'];
$stmt = $pdo->prepare('SELECT * FROM vehicles WHERE id = ?');
$stmt->execute([$id]);
$registration = $stmt->fetch();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $vehicle_model_id = $_POST['vehicle_model_id'];
    $vehicle_type_id = $_POST['vehicle_type_id'];
    $vehicle_chassis_number = $_POST['vehicle_chassis_number'];
    $vehicle_production_year = $_POST['vehicle_production_year'];
    $registration_number = $_POST['registration_number'];
    $fuel_type_id = $_POST['fuel_type_id'];
    $registration_to = $_POST['registration_to'];

    $stmt = $pdo->prepare('UPDATE vehicles 
                           SET vehicle_model_id = ?, 
                               vehicle_type_id = ?, 
                               chassis_number = ?, 
                               production_year = ?, 
                               registration_number = ?, 
                               fuel_type_id = ?, 
                               registration_to = ?
                           WHERE id = ?');
    $stmt->execute([$vehicle_model_id, $vehicle_type_id, $vehicle_chassis_number, $vehicle_production_year, $registration_number, $fuel_type_id, $registration_to, $id]);

    header('Location: welcome.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Vehicle Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <div class="container mt-5">
        <h1>Edit Vehicle Registration</h1>
        <form method="POST">
            <div class="form-group">
                <label for="vehicle_model_id">Vehicle Model</label>
                <select class="form-control" id="vehicle_model_id" name="vehicle_model_id" required>
                    <?php foreach ($vehicleModels as $model) : ?>
                        <option value="<?php echo $model['id']; ?>" <?php echo ($registration['vehicle_model_id'] == $model['id']) ? 'selected' : ''; ?>>
                            <?php echo $model['model_name']; ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <label for="vehicle_type_id">Vehicle Type</label>
                <select class="form-control" id="vehicle_type_id" name="vehicle_type_id" required>
                    <option value="1" <?php echo ($registration['vehicle_type_id'] == 1) ? 'selected' : ''; ?>>Sedan
                    </option>
                    <option value="2" <?php echo ($registration['vehicle_type_id'] == 2) ? 'selected' : ''; ?>>Coupe
                    </option>
                    <option value="3" <?php echo ($registration['vehicle_type_id'] == 3) ? 'selected' : ''; ?>>Hatchback
                    </option>
                    <option value="4" <?php echo ($registration['vehicle_type_id'] == 4) ? 'selected' : ''; ?>>SUV
                    </option>
                    <option value="5" <?php echo ($registration['vehicle_type_id'] == 5) ? 'selected' : ''; ?>>Minivan
                    </option>
                </select>
            </div>

            <div class="form-group">
                <label for="vehicle_chassis_number">Chassis Number</label>
                <input type="text" class="form-control" id="vehicle_chassis_number" name="vehicle_chassis_number" value="<?php echo $registration['chassis_number']; ?>" required>
            </div>

            <div class="form-group">
                <label for="vehicle_production_year">Production Year</label>
                <input type="number" class="form-control" id="vehicle_production_year" name="vehicle_production_year" value="<?php echo $registration['production_year']; ?>" required>
            </div>

            <div class="form-group">
                <label for="registration_number">Registration Number</label>
                <input type="text" class="form-control" id="registration_number" name="registration_number" value="<?php echo $registration['registration_number']; ?>" required>
            </div>

            <div class="form-group">
                <label for="fuel_type_id">Fuel Type</label>
                <select class="form-control" id="fuel_type_id" name="fuel_type_id" required>
                    <option value="1" <?php echo ($registration['fuel_type_id'] == 1) ? 'selected' : ''; ?>>Gasoline
                    </option>
                    <option value="2" <?php echo ($registration['fuel_type_id'] == 2) ? 'selected' : ''; ?>>Diesel
                    </option>
                    <option value="3" <?php echo ($registration['fuel_type_id'] == 3) ? 'selected' : ''; ?>>Electric
                    </option>
                </select>
            </div>

            <div class="form-group">
                <label for="registration_to">Registration Valid Until</label>
                <input type="date" class="form-control" id="registration_to" name="registration_to" value="<?php echo $registration['registration_to']; ?>" required>
            </div>

            <button type="submit" class="btn btn-primary">Update Registration</button>
        </form>
    </div>
</body>

</html>