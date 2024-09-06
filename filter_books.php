<?php
include 'includes/db.php';

if (isset($_POST['categories']) && !empty($_POST['categories'])) {
    $selectedCategories = $_POST['categories'];

    $placeholders = rtrim(str_repeat('?,', count($selectedCategories)), ',');

    $stmt = $pdo->prepare("SELECT books.*, authors.first_name, authors.last_name, categories.title AS category_title 
                           FROM books
                           JOIN authors ON books.author_id = authors.id
                           JOIN categories ON books.category_id = categories.id
                           WHERE books.category_id IN ($placeholders)");
    $stmt->execute($selectedCategories);
} else {
    $stmt = $pdo->query('SELECT books.*, authors.first_name, authors.last_name, categories.title AS category_title 
                         FROM books
                         JOIN authors ON books.author_id = authors.id
                         JOIN categories ON books.category_id = categories.id');
}

while ($book = $stmt->fetch()) {
    echo '<div class="col-md-4" data-category="' . $book['category_id'] . '">';
    echo '<div class="card mb-4">';
    echo '<img src="' . $book['image_url'] . '" class="card-img-top" alt="...">';
    echo '<div class="card-body">';
    echo '<h5 class="card-title">' . $book['title'] . '</h5>';
    echo '<p class="card-text">' . $book['first_name'] . ' ' . $book['last_name'] . '</p>';
    echo '<p class="card-text"><small class="text-muted">' . $book['category_title'] . '</small></p>';
    echo '<a href="book.php?id=' . $book['id'] . '" class="btn btn-primary">View Details</a>';
    echo '</div>';
    echo '</div>';
    echo '</div>';
}