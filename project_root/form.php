<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    require 'db.php';
    $database = new Database();
    $db = $database->getConnection();

    $query = "INSERT INTO websites
              SET cover_image_url=:cover_image_url, title=:title, subtitle=:subtitle,
                  description=:description, telephone=:telephone, location=:location,
                  type=:type, service_product_1_url=:service_product_1_url,
                  service_product_1_description=:service_product_1_description,
                  service_product_2_url=:service_product_2_url,
                  service_product_2_description=:service_product_2_description,
                  service_product_3_url=:service_product_3_url,
                  service_product_3_description=:service_product_3_description,
                  contact_form_description=:contact_form_description,
                  linkedin=:linkedin, facebook=:facebook, twitter=:twitter, instagram=:instagram";

    $stmt = $db->prepare($query);

    $stmt->bindParam(':cover_image_url', $_POST['cover_image_url']);
    $stmt->bindParam(':title', $_POST['title']);
    $stmt->bindParam(':subtitle', $_POST['subtitle']);
    $stmt->bindParam(':description', $_POST['description']);
    $stmt->bindParam(':telephone', $_POST['telephone']);
    $stmt->bindParam(':location', $_POST['location']);
    $stmt->bindParam(':type', $_POST['type']);
    $stmt->bindParam(':service_product_1_url', $_POST['service_product_1_url']);
    $stmt->bindParam(':service_product_1_description', $_POST['service_product_1_description']);
    $stmt->bindParam(':service_product_2_url', $_POST['service_product_2_url']);
    $stmt->bindParam(':service_product_2_description', $_POST['service_product_2_description']);
    $stmt->bindParam(':service_product_3_url', $_POST['service_product_3_url']);
    $stmt->bindParam(':service_product_3_description', $_POST['service_product_3_description']);
    $stmt->bindParam(':contact_form_description', $_POST['contact_form_description']);
    $stmt->bindParam(':linkedin', $_POST['linkedin']);
    $stmt->bindParam(':facebook', $_POST['facebook']);
    $stmt->bindParam(':twitter', $_POST['twitter']);
    $stmt->bindParam(':instagram', $_POST['instagram']);

    if ($stmt->execute()) {
        $last_id = $db->lastInsertId();
        header("Location: company.php?id=" . $last_id);
    } else {
        echo "Error: " . $stmt->errorInfo()[2];
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Create Your Website</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="styles.css">
    <style>
        .hidden {
            display: none;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="row">
            <h2 class="text-center py-3">Fill Out Your Details</h2>
            <div class="col-6">
                <h3 class="text-center text-danger">Step 1</h3>
                <form action="form.php" method="post">
                    <div class="form-group">
                        <label for="cover_image_url">Cover Image URL</label>
                        <input type="text" class="form-control" id="cover_image_url" name="cover_image_url" placeholder="Cover Image URL" required>
                    </div>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Title" required>
                    </div>
                    <div class="form-group">
                        <label for="subtitle">Subtitle</label>
                        <input type="text" class="form-control" id="subtitle" name="subtitle" placeholder="Subtitle" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="3" placeholder="Description" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="telephone">Telephone</label>
                        <input type="tel" class="form-control" id="telephone" name="telephone" placeholder="Telephone" required>
                    </div>
                    <div class="form-group">
                        <label for="location">Location</label>
                        <input type="text" class="form-control" id="location" name="location" placeholder="Location" required>
                    </div>
                    <div class="form-group">
                        <label for="type">Type</label>
                        <select class="form-control" id="type" name="type" required>
                            <option value="services">Services</option>
                            <option value="products">Products</option>
                        </select>
                    </div>
            </div>
            <div class="col-6">
                <h3 class="text-center text-danger">Step 2</h3>
                <div class="form-group">
                    <label for="service_product_1_url">Service/Product 1 URL</label>
                    <input type="text" class="form-control" id="service_product_1_url" name="service_product_1_url" placeholder="Service/Product 1 URL" required>
                </div>
                <div class="form-group">
                    <label for="service_product_1_description">Service/Product 1 Description</label>
                    <textarea class="form-control" id="service_product_1_description" name="service_product_1_description" rows="2" placeholder="Service/Product 1 Description" required></textarea>
                </div>
                <div class="form-group">
                    <label for="service_product_2_url">Service/Product 2 URL</label>
                    <input type="text" class="form-control" id="service_product_2_url" name="service_product_2_url" placeholder="Service/Product 2 URL" required>
                </div>
                <div class="form-group">
                    <label for="service_product_2_description">Service/Product 2 Description</label>
                    <textarea class="form-control" id="service_product_2_description" name="service_product_2_description" rows="2" placeholder="Service/Product 2 Description" required></textarea>
                </div>
                <div class="form-group">
                    <label for="service_product_3_url">Service/Product 3 URL</label>
                    <input type="text" class="form-control" id="service_product_3_url" name="service_product_3_url" placeholder="Service/Product 3 URL" required>
                </div>
                <div class="form-group">
                    <label for="service_product_3_description">Service/Product 3 Description</label>
                    <textarea class="form-control" id="service_product_3_description" name="service_product_3_description" rows="2" placeholder="Service/Product 3 Description" required></textarea>
                </div>
            </div>
            <div class="form-group">
                <h3 class="text-center text-danger">Step 3</h3>
                <label for="contact_form_description">Contact Form Description</label>
                <textarea class="form-control" id="contact_form_description" name="contact_form_description" rows="2" placeholder="Contact Form Description" required></textarea>
            </div>
            <div class="form-group">
                <label for="linkedin">LinkedIn Profile</label>
                <input type="url" class="form-control" id="linkedin" name="linkedin" placeholder="LinkedIn Profile">
            </div>
            <div class="form-group">
                <label for="facebook">Facebook Profile</label>
                <input type="url" class="form-control" id="facebook" name="facebook" placeholder="Facebook Profile">
            </div>
            <div class="form-group">
                <label for="twitter">Twitter Profile</label>
                <input type="url" class="form-control" id="twitter" name="twitter" placeholder="Twitter Profile">
            </div>
            <div class="form-group">
                <label for="instagram">Instagram Profile</label>
                <input type="url" class="form-control" id="instagram" name="instagram" placeholder="Instagram Profile">
            </div>
            <button type="submit" class="btn btn-primary py-4">Create Website</button>
            </form>
        </div>
    </div>
</body>

</html>