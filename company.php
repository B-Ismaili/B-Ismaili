<?php
require 'db.php';
$database = new Database();
$db = $database->getConnection();

$id = $_GET['id'];
$query = "SELECT * FROM websites WHERE id = ?";
$stmt = $db->prepare($query);
$stmt->bindParam(1, $id);
$stmt->execute();
$website = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title><?php echo htmlspecialchars($website['title']); ?></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#home"><?php echo htmlspecialchars($website['title']); ?></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about"><?php echo ucfirst($website['type']); ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <header id="home" class="jumbotron text-center">
        <img src="<?php echo htmlspecialchars($website['cover_image_url']); ?>" class="img-fluid" alt="Cover Image">
        <h1 class="display-4"><?php echo htmlspecialchars($website['title']); ?></h1>
        <p class="lead"><?php echo htmlspecialchars($website['subtitle']); ?></p>
    </header>
    <section id="about" class="container mt-5">
        <h2 class="text-center mb-4">About Us</h2>
        <p class="text-center"><?php echo nl2br(htmlspecialchars($website['description'])); ?></p>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="<?php echo htmlspecialchars($website['service_product_1_url']); ?>" class="card-img-top" alt="Service/Product 1">
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo nl2br(htmlspecialchars($website['service_product_1_description'])); ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="<?php echo htmlspecialchars($website['service_product_2_url']); ?>" class="card-img-top" alt="Service/Product 2">
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo nl2br(htmlspecialchars($website['service_product_2_description'])); ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="<?php echo htmlspecialchars($website['service_product_3_url']); ?>" class="card-img-top" alt="Service/Product 3">
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo nl2br(htmlspecialchars($website['service_product_3_description'])); ?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contact" class="container mt-5">
        <h2>Contact Us</h2>
        <p><?php echo nl2br(htmlspecialchars($website['contact_form_description'])); ?></p>
        <ul class="list-unstyled">
            <li><strong>Telephone:</strong> <?php echo htmlspecialchars($website['telephone']); ?></li>
            <li><strong>Location:</strong> <?php echo htmlspecialchars($website['location']); ?></li>
            <li><strong>LinkedIn:</strong> <a href="<?php echo htmlspecialchars($website['linkedin']); ?>"><?php echo htmlspecialchars($website['linkedin']); ?></a>
            </li>
            <li><strong>Facebook:</strong> <a href="<?php echo htmlspecialchars($website['facebook']); ?>"><?php echo htmlspecialchars($website['facebook']); ?></a>
            </li>
            <li><strong>Twitter:</strong> <a href="<?php echo htmlspecialchars($website['twitter']); ?>"><?php echo htmlspecialchars($website['twitter']); ?></a>
            </li>
            <li><strong>Instagram:</strong> <a href="<?php echo htmlspecialchars($website['instagram']); ?>"><?php echo htmlspecialchars($website['instagram']); ?></a>
            </li>
        </ul>
    </section>

    <footer class="text-center mt-5">
        <p>&copy; <?php echo date('Y'); ?> <?php echo htmlspecialchars($website['title']); ?></p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>