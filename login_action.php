<?php
require 'includes/db.php';
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    try {
        // Check if the user exists
        $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->execute([$email]);
        $user = $stmt->fetch();

        if ($user && password_verify($password, $user['password'])) {
            // Successful login
            $_SESSION['user_id'] = $user['id'];
            header("Location: templates/dashboard.php");
        } else {
            // Invalid login details
            $error = "Invalid email or password.";
        }
    } catch (PDOException $e) {
        $error = "An error occurred. Please try again later.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="login-container">
            <h2 class="login-title text-danger">Login Failed</h2>
            <p class="text-danger text-center">
                <?= isset($error) ? htmlspecialchars($error) : 'Unknown error occurred.'; ?></p>
            <a href="login.php" class="btn btn-secondary w-100">Go Back</a>
        </div>
    </div>
</body>

</html>