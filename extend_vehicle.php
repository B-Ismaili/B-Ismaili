<?php
session_start();
require 'config.php';



$id = $_GET['id'];
$stmt = $pdo->prepare('SELECT * FROM registrations WHERE id = ?');
$stmt->execute([$id]);
$registration = $stmt->fetch();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $registration_to = $_POST['registration_to'];


    $stmt = $pdo->prepare('UPDATE registrations SET registration_to = ? WHERE id = ?');
    $stmt->execute([$registration_to, $id]);

    header('Location: welcome.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Extend Vehicle Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <div class="container mt-5">
        <h1>Extend Vehicle Registration</h1>
        <form method="POST">
            <div class="form-group">
                <label for="registration_to">New Registration To Date</label>
                <input type="date" class="form-control" id="registration_to" name="registration_to" value="<?= $registration['registration_to'] ?>" required>
            </div>
            <button type="submit" class="btn btn-success">Extend</button>
        </form>
    </div>
</body>

</html>