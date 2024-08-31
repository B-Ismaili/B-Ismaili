<?php
include_once '../includes/auth.php';

redirectIfNotLoggedIn();
redirectIfNotAdmin();

include '../includes/header.php';
?>

<div class="container mt-5">
    <h1>Admin Dashboard</h1>
    <div class="row mt-4">
        <!-- Manage Categories -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="card-title">Manage Categories</h4>
                    <p class="card-text">Add, edit, or delete book categories.</p>
                    <a href="categories.php" class="btn btn-primary">Go to Categories</a>
                </div>
            </div>
        </div>

        <!-- Manage Authors -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="card-title">Manage Authors</h4>
                    <p class="card-text">Add, edit, or delete authors.</p>
                    <a href="authors.php" class="btn btn-primary">Go to Authors</a>
                </div>
            </div>
        </div>

        <!-- Manage Books -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="card-title">Manage Books</h4>
                    <p class="card-text">Add, edit, or delete books.</p>
                    <a href="books.php" class="btn btn-primary">Go to Books</a>
                </div>
            </div>
        </div>

        <!-- Manage Comments -->
        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="card-title">Manage Comments</h4>
                    <p class="card-text">Approve or delete user comments.</p>
                    <a href="comments.php" class="btn btn-primary">Go to Comments</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include '../includes/footer.php'; ?>