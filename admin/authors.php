<?php
include '../includes/header.php';
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Initialize variables for form
$author = [
    'id' => '',
    'first_name' => '',
    'last_name' => '',
    'biography' => ''
];

// Check if editing an existing author
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $stmt = $pdo->prepare("SELECT * FROM authors WHERE id = ? AND deleted_at IS NULL");
    $stmt->execute([$id]);
    $author = $stmt->fetch();
    if (!$author) {
        // If no author is found, redirect back to authors list
        header('Location: authors.php');
        exit;
    }
}

// Handle adding or editing authors
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'] ?? null;
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $biography = $_POST['biography'];

    if ($id) {
        // Update existing author
        $stmt = $pdo->prepare("UPDATE authors SET first_name = ?, last_name = ?, biography = ? WHERE id = ?");
        $stmt->execute([$first_name, $last_name, $biography, $id]);
    } else {
        // Add new author
        $stmt = $pdo->prepare("INSERT INTO authors (first_name, last_name, biography) VALUES (?, ?, ?)");
        $stmt->execute([$first_name, $last_name, $biography]);
    }
    header('Location: authors.php');
    exit;
}

// Handle soft deletion
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $pdo->prepare("UPDATE authors SET deleted_at = NOW() WHERE id = ?");
    $stmt->execute([$id]);
    header('Location: authors.php');
    exit;
}

// Fetch all authors
$stmt = $pdo->query("SELECT * FROM authors WHERE deleted_at IS NULL");
$authors = $stmt->fetchAll();
?>

<div class="container">
    <h2>Manage Authors</h2>

    <!-- Form for adding authors -->
    <form method="POST">
        <input type="hidden" name="id" value="<?= htmlspecialchars($author['id']) ?>">
        <div class="form-group">
            <label for="first_name">First Name</label>
            <input type="text" class="form-control" name="first_name"
                value="<?= htmlspecialchars($author['first_name']) ?>" required>
        </div>
        <div class="form-group">
            <label for="last_name">Last Name</label>
            <input type="text" class="form-control" name="last_name"
                value="<?= htmlspecialchars($author['last_name']) ?>" required>
        </div>
        <div class="form-group">
            <label for="biography">Biography</label>
            <textarea class="form-control" name="biography" required
                minlength="20"><?= htmlspecialchars($author['biography']) ?></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>

    <h3>Existing Authors</h3>
    <table class="table">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($authors as $author): ?>
            <tr>
                <td><?= htmlspecialchars($author['first_name']) ?></td>
                <td><?= htmlspecialchars($author['last_name']) ?></td>
                <td>
                    <a href="#" class="btn btn-warning btn-edit" data-id="<?= $author['id'] ?>"
                        data-first_name="<?= htmlspecialchars($author['first_name']) ?>"
                        data-last_name="<?= htmlspecialchars($author['last_name']) ?>"
                        data-biography="<?= htmlspecialchars($author['biography']) ?>">Edit</a>
                    <a href="?delete=<?= $author['id'] ?>" class="btn btn-danger btn-delete">Delete</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<!-- Modal for editing an author -->
<div class="modal fade" id="editAuthorModal" tabindex="-1" aria-labelledby="editAuthorModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editAuthorModalLabel">Edit Author</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" id="editAuthorForm">
                <div class="modal-body">
                    <input type="hidden" name="id" id="editAuthorId">
                    <div class="form-group">
                        <label for="editFirstName">First Name</label>
                        <input type="text" class="form-control" name="first_name" id="editFirstName" required>
                    </div>
                    <div class="form-group">
                        <label for="editLastName">Last Name</label>
                        <input type="text" class="form-control" name="last_name" id="editLastName" required>
                    </div>
                    <div class="form-group">
                        <label for="editBiography">Biography</label>
                        <textarea class="form-control" name="biography" id="editBiography" required
                            minlength="20"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
document.querySelectorAll('.btn-edit').forEach(button => {
    button.addEventListener('click', function(event) {
        event.preventDefault();

        // Get data from the button's data attributes
        const id = this.getAttribute('data-id');
        const firstName = this.getAttribute('data-first_name');
        const lastName = this.getAttribute('data-last_name');
        const biography = this.getAttribute('data-biography');

        // Populate the modal fields
        document.getElementById('editAuthorId').value = id;
        document.getElementById('editFirstName').value = firstName;
        document.getElementById('editLastName').value = lastName;
        document.getElementById('editBiography').value = biography;

        // Show the modal
        $('#editAuthorModal').modal('show');
    });
});

document.querySelectorAll('.btn-delete').forEach(button => {
    button.addEventListener('click', function(event) {
        event.preventDefault();
        const url = this.href;
        Swal.fire({
            title: 'Are you sure?',
            text: "This will mark the author as deleted.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, keep it'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = url;
            }
        });
    });
});
</script>

<?php include '../includes/footer.php'; ?>