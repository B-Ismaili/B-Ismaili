<?php

session_start();
include_once 'db_connection.php';


$username = $password = '';
$username_err = $password_err = '';


if ($_SERVER["REQUEST_METHOD"] == "POST") {


    if (empty(trim($_POST['username']))) {
        $username_err = 'Please enter username.';
    } else {
        $username = trim($_POST['username']);
    }


    if (empty(trim($_POST['password']))) {
        $password_err = 'Please enter your password.';
    } else {
        $password = trim($_POST['password']);
    }

    if (empty($username_err) && empty($password_err)) {

        $sql = "SELECT id, username, password_hash FROM users WHERE username = :username";

        if ($stmt = $pdo->prepare($sql)) {

            $stmt->bindParam(':username', $param_username, PDO::PARAM_STR);


            $param_username = $username;

            if ($stmt->execute()) {
                if ($stmt->rowCount() == 1) {
                    if ($row = $stmt->fetch()) {
                        $id = $row['id'];
                        $username = $row['username'];
                        $hashed_password = $row['password_hash'];
                        if (password_verify($password, $hashed_password)) {

                            session_start();

                            $_SESSION['username'] = $username;
                            $_SESSION['id'] = $id;

                            header("location: welcome.php");
                        } else {
                            $password_err = 'The password you entered is not valid.';
                        }
                    }
                } else {
                    $username_err = 'No account found with that username.';
                }
            } else {
                echo "Oops! Something went wrong. Please try again later.";
            }
            unset($stmt);
        }
    }
    unset($pdo);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <div class="container mt-5">
        <h2>Login</h2>
        <p>Please fill in your credentials to login.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label>Username</label>
                <input type="text" name="username" class="form-control" value="<?php echo $username; ?>">
                <span class="help-block"><?php echo $username_err; ?></span>
            </div>
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label>Password</label>
                <input type="password" name="password" class="form-control">
                <span class="help-block"><?php echo $password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Login">
                <a href="add_users.php" class="btn btn-primary">Add user</a>
            </div>
        </form>
    </div>
</body>

</html>