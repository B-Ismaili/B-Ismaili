<html>

<head>
    <title>Welcome</title>
</head>

<body>
    <?php
    if (isset($_GET['username'])) {
        $username = $_GET['username'];
        echo "<h1>Welcome $username</h1>";
    } else {
        echo "<h1>Welcome</h1>";
    }
    ?>

    <!-- <button><a href="../13.Challenge-PHP-files/signup.php">Back to sign up!</a></button>
    <br>
    <button><a href="../13.Challenge-PHP-files/login.php">Back to login!</a></button> -->

</body>

</html>