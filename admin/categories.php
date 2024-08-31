<?php
include '../includes/header.php';
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Fetch non-deleted categories
$stmt = $pdo->query("SELECT * FROM categories WHERE deleted_at IS NULL");
$categories = $stmt->fetchAll();

// Handle add and edit requests
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['add_category'])) {
        // Add category logic
        $title = $_POST['title'];

        $stmt = $pdo->prepare("INSERT INTO categories (title) VALUES (?)");
        $stmt->execute([$title]);

        header('Location: categories.php');
        exit;
    }

    if (isset($_POST['edit_category'])) {
        // Edit category logic
        $id = $_POST['id'];
        $title = $_POST['title'];

        $stmt = $pdo->prepare("UPDATE categories SET title = ? WHERE id = ?");
        $stmt->execute([$title, $id]);

        header('Location: categories.php');
        exit;
    }

    if (isset($_POST['delete_category'])) {
        // Soft delete category logic
        $id = $_POST['id'];

        $stmt = $pdo->prepare("UPDATE categories SET deleted_at = NOW() WHERE id = ?");
        $stmt->execute([$id]);

        header('Location: categories.php');
        exit;
    }
}
?>

<div class="container">
    <h2>Manage Categories</h2>

    <!-- Add Category Button -->
    <button type="button" class="btn btn-success mb-3" data-toggle="modal" data-target="#addCategoryModal">
        Add New Category
    </button>

    <!-- Add Category Modal -->
    <div class="modal fade" id="addCategoryModal" tabindex="-1" aria-labelledby="addCategoryModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addCategoryModalLabel">Add New Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" name="add_category" class="btn btn-success">Add Category</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Categories Table -->
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($categories as $category) : ?>
            <tr>
                <td><?= htmlspecialchars($category['id']) ?></td>
                <td><?= htmlspecialchars($category['title']) ?></td>
                <td>
                    <!-- Edit Category Button -->
                    <button type="button" class="btn btn-primary" data-toggle="modal"
                        data-target="#editCategoryModal<?= $category['id'] ?>">
                        Edit
                    </button>

                    <!-- Edit Modal -->
                    <div class="modal fade" id="editCategoryModal<?= $category['id'] ?>" tabindex="-1"
                        aria-labelledby="editCategoryModalLabel<?= $category['id'] ?>" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editCategoryModalLabel<?= $category['id'] ?>">Edit
                                        Category</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form method="POST">
                                    <div class="modal-body">
                                        <input type="hidden" name="id" value="<?= $category['id'] ?>">
                                        <div class="form-group">
                                            <label for="title">Title</label>
                                            <input type="text" class="form-control" name="title"
                                                value="<?= htmlspecialchars($category['title']) ?>" required>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" name="edit_category" class="btn btn-primary">Save
                                            changes</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Delete Category Form -->
                    <form method="POST" class="d-inline delete-form">
                        <input type="hidden" name="id" value="<?= $category['id'] ?>">
                        <button type="button" class="btn btn-danger btn-delete"
                            data-title="<?= htmlspecialchars($category['title']) ?>">
                            Delete
                        </button>
                    </form>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<!-- Include SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
document.querySelectorAll('.btn-delete').forEach(button => {
    button.addEventListener('click', function(event) {
        event.preventDefault();
        const form = this.closest('form');
        const categoryTitle = this.getAttribute('data-title');

        Swal.fire({
            title: 'Are you sure?',
            text: `This will mark the category "${categoryTitle}" as deleted.`,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
        }).then((result) => {
            if (result.isConfirmed) {
                form.submit(); // Submit the form if confirmed
            }
        });
    });
});
</script>

<?php include '../includes/footer.php'; ?>