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

<body data-spy="scroll" data-target="#navbarNav" data-offset="70">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#home"><?php echo htmlspecialchars($website['title']); ?></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
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
        </div>
    </nav>

    <header id="home" class="jumbotron text-center">
        <img src="<?php echo htmlspecialchars($website['cover_image_url']); ?>" class="img-fluid rounded-circle" alt="Cover Image">
        <h1 class="display-4"><?php echo htmlspecialchars($website['title']); ?></h1>
        <p class="lead"><?php echo htmlspecialchars($website['subtitle']); ?></p>
    </header>

    <section id="about" class="container mt-5">
        <h2 class="text-center mb-4">About Us</h2>
        <p class="text-center"><?php echo htmlspecialchars($website['description']); ?></p>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="<?php echo htmlspecialchars($website['service_product_1_url']); ?>" class="card-img-top" alt="Service/Product 1">
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo htmlspecialchars($website['service_product_1_description']); ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="<?php echo htmlspecialchars($website['service_product_2_url']); ?>" class="card-img-top" alt="Service/Product 2">
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo htmlspecialchars($website['service_product_2_description']); ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="<?php echo htmlspecialchars($website['service_product_3_url']); ?>" class="card-img-top" alt="Service/Product 3">
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo htmlspecialchars($website['service_product_3_description']); ?></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contact">
        <div class="container contact-card">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Contact Us</h2>
                </div>
                <div class="card-body">
                    <h5 class="card-title text-center">Get in Touch</h5>
                    <p class="text-center"><?php echo htmlspecialchars($website['contact_form_description']); ?></p>
                    <div class="contact-info">
                        <p><strong>Address:</strong> <?php echo htmlspecialchars($website['location']); ?></p>
                        <p><strong>Phone:</strong> <?php echo htmlspecialchars($website['telephone']); ?></p>
                    </div>
                    <h5 class="card-title mt-4">Follow Us</h5>
                    <div class="social-links">
                        <a href="<?php echo htmlspecialchars($website['linkedin']); ?>" target="_blank" class="btn btn-outline-dark">
                            <i class="fab fa-linkedin"></i> LinkedIn </br>
                            <?php echo htmlspecialchars($website['linkedin']); ?>
                        </a>
                        <a href="<?php echo htmlspecialchars($website['facebook']); ?>" target="_blank" class="btn btn-outline-dark">
                            <i class="fab fa-facebook"></i> Facebook</br>
                            <?php echo htmlspecialchars($website['facebook']); ?>
                        </a>
                        <a href="<?php echo htmlspecialchars($website['twitter']); ?>" target="_blank" class="btn btn-outline-dark">
                            <i class="fab fa-twitter"></i> Twitter</br>
                            <?php echo htmlspecialchars($website['twitter']); ?>
                        </a>
                        <a href="<?php echo htmlspecialchars($website['instagram']); ?>" target="_blank" class="btn btn-outline-dark">
                            <i class="fab fa-instagram"></i> Instagram</br>
                            <?php echo htmlspecialchars($website['instagram']); ?>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <footer class="text-center mt-5 bg-light py-3">
        <p>&copy; <?php echo date('Y'); ?> <?php echo htmlspecialchars($website['title']); ?></p>
    </footer>

</body>

</html>