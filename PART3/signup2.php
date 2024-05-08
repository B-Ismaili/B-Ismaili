<?php
include 'validation.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $allErrors = [];

    if (!validUsername($username)) {
        $allErrors[] = "Username is required.";
    } elseif (!validUsername($username)) {
        $allErrors[] = "Username cannot contain special characters or spaces.";
    }

    if (!validEmail($email)) {
        $allErrors[] = "Email is required.";
    } elseif (!validEmail($email)) {
        $allErrors[] = "Invalid email format.";
    }

    if (!validPassword($password)) {
        $allErrors[] = "Password is required.";
    } elseif (!validPassword($password)) {
        $allErrors[] = "Password must have at least one number, one special sign, and one uppercase letter.";
    }

    if (!empty($allErrors)) {
        // Display validation allE$allErrors in red color
        echo '<ul style="color: red;">';
        foreach ($allErrors as $error) {
            echo "<li>$error</li>";
        }
        echo '</ul>';
        exit(); // Stop further processing if there are validation errors
    }

    $data = "$email, $username=$password" . PHP_EOL;
    file_put_contents('users.txt', $data, FILE_APPEND);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Sign up</title>
</head>
<style>
body {
    background-image: url('https://cdn4.vectorstock.com/i/1000x1000/42/83/sign-up-neon-on-a-brick-background-vector-35024283.jpg');
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
            <h1>Sign up form</h1>
            <input type="text" name="username" placeholder="username" required>
            <input type="password" name="password" placeholder="password" required>
            <input type="email" name="email" placeholder="email" required>
            <input type="submit" class="btn btn-primary mx-3 px-5" value="Sign up" />
        </form>
    </div>

</body>

</html>