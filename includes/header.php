<?php include 'db.php'; ?>
<?php include_once 'auth.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Catalog</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/library1/index.php">Book Catalog</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <?php if (isLoggedIn()): ?>
                <?php if (isAdmin()): ?>
                <li class="nav-item"><a class="nav-link" href="/library1/admin/dashboard.php">Dashboard</a></li>
                <?php endif; ?>
                <li class="nav-item"><a class="nav-link" href="/library1/logout.php">Logout</a></li>
                <?php else: ?>
                <li class="nav-item"><a class="nav-link" href="/library1/login.php">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="/library1/register.php">Register</a></li>
                <?php endif; ?>
            </ul>
        </div>
    </nav>
    <div class="container mt-5">
    </div>
</body>

</html>