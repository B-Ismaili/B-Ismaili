<?php
include 'includes/header.php'; ?>

<div class="row">
    <div class="col-md-3">
        <h4>Categories</h4>
        <form id="filterForm">
            <?php
            $categories = $pdo->query('SELECT * FROM categories WHERE deleted_at IS NULL')->fetchAll();
            foreach ($categories as $category) {
                echo '<div class="form-check">';
                echo '<input class="form-check-input category-checkbox" type="checkbox" name="categories[]" value="' . $category['id'] . '" id="category_' . $category['id'] . '">';
                echo '<label class="form-check-label" for="category_' . $category['id'] . '">' . $category['title'] . '</label>';
                echo '</div>';
            }
            ?>
            <button type="button" class="btn btn-outline-secondary" id="selectAll">All</button>
        </form>
    </div>
    <div class="col-md-9">
        <div id="bookCatalog" class="row">
            <?php
            $stmt = $pdo->query('SELECT books.*, authors.first_name, authors.last_name, categories.title AS category_title FROM books
                                 JOIN authors ON books.author_id = authors.id
                                 JOIN categories ON books.category_id = categories.id');
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
            ?>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('.category-checkbox').on('change', function() {
            var selectedCategories = [];

            $('.category-checkbox:checked').each(function() {
                selectedCategories.push($(this).val());
            });

            $.ajax({
                url: 'filter_books.php',
                method: 'POST',
                data: {
                    categories: selectedCategories
                },
                success: function(response) {
                    $('#bookCatalog').html(response);
                }
            });
        });

        $('#selectAll').on('click', function() {
            $('.category-checkbox').prop('checked', true).trigger('change');
        });
    });
</script>

<?php include 'includes/footer.php'; ?>