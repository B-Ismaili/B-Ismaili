<?php
include '../includes/header.php';
include '../includes/db.php';
redirectIfNotLoggedIn();
redirectIfNotAdmin();

// Handle Delete Comment
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $stmt = $pdo->prepare('DELETE FROM comments WHERE id = ?');
    $stmt->execute([$id]);
    header('Location: comments.php'); // Redirect to avoid resubmission
    exit;
}

// Handle Approve/Disapprove Comment
if (isset($_GET['toggle_approval'])) {
    $id = $_GET['toggle_approval'];
    $stmt = $pdo->query('SELECT is_approved FROM comments WHERE id = ' . $id);
    $currentStatus = $stmt->fetch()['is_approved'];
    $newStatus = $currentStatus ? 0 : 1;
    $stmt = $pdo->prepare('UPDATE comments SET is_approved = ? WHERE id = ?');
    $stmt->execute([$newStatus, $id]);
    header('Location: comments.php'); // Redirect to avoid resubmission
    exit;
}
?>

<div class="container mt-5">
    <h2>Manage Comments</h2>

    <table class="table mt-4">
        <thead>
            <tr>
                <th>ID</th>
                <th>Book</th>
                <th>User</th>
                <th>Comment</th>
                <th>Approved</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $stmt = $pdo->query('SELECT comments.id, comments.content, comments.is_approved, books.title AS book_title, users.username AS user_name FROM comments JOIN books ON comments.book_id = books.id JOIN users ON comments.user_id = users.id');
            while ($comment = $stmt->fetch()) {
                echo '<tr>';
                echo '<td>' . $comment['id'] . '</td>';
                echo '<td>' . $comment['book_title'] . '</td>';
                echo '<td>' . $comment['user_name'] . '</td>';
                echo '<td>' . $comment['content'] . '</td>';
                echo '<td>' . ($comment['is_approved'] ? 'Yes' : 'No') . '</td>';
                echo '<td>';
                echo '<a href="?toggle_approval=' . $comment['id'] . '" class="btn btn-sm btn-info">' . ($comment['is_approved'] ? 'Disapprove' : 'Approve') . '</a> ';
                echo '<button class="btn btn-sm btn-danger btn-delete" data-id="' . $comment['id'] . '">Delete</button>';
                echo '</td>';
                echo '</tr>';
            }
            ?>
        </tbody>
    </table>
</div>

<!-- Confirmation Modal for Deletion -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" aria-labelledby="confirmDeleteModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmDeleteModalLabel">Confirm Deletion</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this comment?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <a id="confirmDeleteBtn" class="btn btn-danger" href="#">Delete</a>
            </div>
        </div>
    </div>
</div>

<?php include '../includes/footer.php'; ?>

<!-- JavaScript to handle modals and deletion confirmation -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Handle Delete Button Click
    document.querySelectorAll('.btn-delete').forEach(button => {
        button.addEventListener('click', function() {
            const modal = new bootstrap.Modal(document.getElementById('confirmDeleteModal'));
            const deleteUrl = `comments.php?delete=${this.dataset.id}`;
            document.getElementById('confirmDeleteBtn').setAttribute('href', deleteUrl);
            modal.show();
        });
    });
});
</script>