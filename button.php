<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Form</title>
</head>
<style>
    .background {
        background-image: url('https://www.chromethemer.com/wallpapers/chromebook-wallpapers/images/960/blue-technology-chromebook-wallpaper.jpg');
        background-size: cover;
        position: relative;
        height: 100vh;
    }

    .container {
        max-width: 700px;
        width: 100%;
        height: 50vh;
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

    .btn {
        width: 30%;
        padding-top: 15px;
        padding-bottom: 15px;
    }

    .btn-danger {
        opacity: 0.8;
    }
</style>

<body>
    <div class="background">
        <div class="container gap-2 col-6 mx-auto">
            <a href="../13.Challenge-PHP-files/login.php" class="btn btn-danger" type="button" data-mdb-ripple-init>Login</></a>
            <a href="../13.Challenge-PHP-files/signup.php" class="btn btn-danger" type="button" data-mdb-ripple-init>Sign up</a>
        </div>
    </div>


</body>

</html>