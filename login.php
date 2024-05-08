<?php session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $usernameExists = false;

    $userData = explode(PHP_EOL, file_get_contents('users.txt'));

    foreach ($userData as $user) {
        $userItems = explode("=", $user);
        if ($userItems[0] == $_POST["username"]) {
            echo "Username already taken";
            $usernameExists = true;
            break;
        } else {
            $username = $_POST["username"];
        }
    }

    if ($usernameExists) {
        header("Location: welcome.php?username=$username");
        die();
    } elseif ($usernameExists === false) {
        $_SESSION['error'] = [];
        if (!$usernameExists) {
            $_SESSION['error'][] = "Wrong username/password combination";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Login</title>
</head>
<style>
    body {
        background-image: url('https://thumbs.dreamstime.com/z/security-concept-login-digital-background-pixelated-words-d-render-30468616.jpg');
        background-size: cover;
        background-position: 50% 25%;
    }

    .container {
        max-width: 500px;
        width: 100%;
        height: 20vh;
        display: flex;
        align-items: center;
        justify-content: center;
        position: absolute;
        right: 0;
        left: 0;
        top: 0;
        bottom: 0;
        margin: auto;
    }

    input {
        display: flex;
        margin-bottom: 20px;
    }

    h1 {
        color: white;
        margin-bottom: 30px;
    }
</style>

<body>


    <div class="container d-flex">
        <form method="POST">
            <h1>Login form</h1>
            <?php
            if (isset($_SESSION["error"])) {
                foreach ($_SESSION["error"] as $error) {
                    echo "<div class='alert alert-danger'>{$error}</div>";
                }
                unset($_SESSION["error"]);
            }
            ?>
            <input type="text" name="username" placeholder="username">
            <input type="password" name="password" placeholder="password">
            <input type="submit" class="btn btn-primary mx-3 px-5" value="Login" />
        </form>
    </div>

</body>

</html>