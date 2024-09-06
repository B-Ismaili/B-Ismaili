<?php
include 'includes/header.php';
$book_id = $_GET['id'];

$stmt = $pdo->prepare('SELECT books.*, authors.first_name, authors.last_name, categories.title AS category_title FROM books
                       JOIN authors ON books.author_id = authors.id
                       JOIN categories ON books.category_id = categories.id
                       WHERE books.id = ?');
$stmt->execute([$book_id]);
$book = $stmt->fetch();

$user_comment = null;
if (isLoggedIn()) {
    $stmt = $pdo->prepare('SELECT * FROM comments WHERE book_id = ? AND user_id = ?');
    $stmt->execute([$book_id, $_SESSION['user_id']]);
    $user_comment = $stmt->fetch();
}
?>

<div class="row">
    <div class="col-md-6">
        <img src="<?= $book['image_url'] ?>" class="img-fluid" alt="...">
    </div>
    <div class="col-md-6">
        <h2><?= $book['title'] ?></h2>
        <p>Author: <?= $book['first_name'] . ' ' . $book['last_name'] ?></p>
        <p>Category: <?= $book['category_title'] ?></p>
        <p>Year of Publication: <?= $book['year_of_publication'] ?></p>
        <p>Number of Pages: <?= $book['number_of_pages'] ?></p>

        <h4>Comments</h4>
        <?php
        $stmt = $pdo->prepare('SELECT comments.*, users.username FROM comments
                               JOIN users ON comments.user_id = users.id
                               WHERE book_id = ? AND is_approved = 1');
        $stmt->execute([$book_id]);
        while ($comment = $stmt->fetch()) {
            echo '<div class="comment">';
            echo '<p><strong>' . $comment['username'] . ':</strong> ' . $comment['content'] . '</p>';
            if (isLoggedIn() && $comment['user_id'] == $_SESSION['user_id']) {
                echo '<button class="btn btn-sm btn-danger delete-comment" data-comment-id="' . $comment['id'] . '">Delete Comment</button>';
            }
            echo '</div>';
        }
        ?>

        <?php if (isLoggedIn()): ?>
        <?php if ($user_comment): ?>
        <p>You have already left a comment.</p>
        <?php if ($user_comment['is_approved'] == 0): ?>
        <button class="btn btn-sm btn-danger" id="delete-comment" data-comment-id="<?= $user_comment['id'] ?>">Delete
            Comment</button>
        <?php endif; ?>
        <?php else: ?>
        <h4>Leave a Comment</h4>
        <form method="POST" action="leave_comment.php">
            <input type="hidden" name="book_id" value="<?= $book_id ?>">
            <div class="form-group">
                <textarea class="form-control" name="content" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <?php endif; ?>
        <?php endif; ?>

        <h4>Private Notes</h4>
        <?php if (isLoggedIn()): ?>
        <div id="notesList">
            <?php
                $stmt = $pdo->prepare('SELECT * FROM notes WHERE book_id = ? AND user_id = ?');
                $stmt->execute([$book_id, $_SESSION['user_id']]);
                while ($note = $stmt->fetch()) {
                    echo '<div class="note" data-note-id="' . $note['id'] . '">';
                    echo '<p>' . $note['content'] . '</p>';
                    echo '<button class="btn btn-sm btn-warning edit-note">Edit</button>';
                    echo '<button class="btn btn-sm btn-danger delete-note">Delete</button>';
                    echo '</div>';
                }
                ?>
        </div>

        <h4>Add a Note</h4>
        <form id="addNoteForm">
            <input type="hidden" name="book_id" value="<?= $book_id ?>">
            <div class="form-group">
                <textarea class="form-control" name="content" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Add Note</button>
        </form>
        <?php endif; ?>
    </div>
</div>

<script>
$(document).ready(function() {
    // Handle note addition
    $('#addNoteForm').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            url: 'add_note.php',
            method: 'POST',
            data: $(this).serialize(),
            success: function(response) {
                $('#notesList').append(response);
                $('#addNoteForm')[0].reset();
            }
        });
    });

    // Handle note deletion
    $('#notesList').on('click', '.delete-note', function() {
        var noteId = $(this).closest('.note').data('note-id');
        $.ajax({
            url: 'delete_note.php',
            method: 'POST',
            data: {
                id: noteId
            },
            success: function() {
                $('div[data-note-id="' + noteId + '"]').remove();
            }
        });
    });

    // Handle note editing
    $('#notesList').on('click', '.edit-note', function() {
        var noteId = $(this).closest('.note').data('note-id');
        var noteContent = $(this).siblings('p').text();
        $(this).siblings('p').replaceWith('<textarea class="form-control edit-note-content">' +
            noteContent + '</textarea>');
        $(this).replaceWith('<button class="btn btn-sm btn-success save-note">Save</button>');
    });

    // Handle note saving
    $('#notesList').on('click', '.save-note', function() {
        var noteId = $(this).closest('.note').data('note-id');
        var noteContent = $(this).siblings('.edit-note-content').val();
        $.ajax({
            url: 'edit_note.php',
            method: 'POST',
            data: {
                id: noteId,
                content: noteContent
            },
            success: function() {
                $('div[data-note-id="' + noteId + '"]').html('<p>' + noteContent + '</p>' +
                    '<button class="btn btn-sm btn-warning edit-note">Edit</button>' +
                    '<button class="btn btn-sm btn-danger delete-note">Delete</button>');
            }
        });
    });

    // Handle comment deletion
    $('#notesList').on('click', '.delete-comment', function() {
        var commentId = $(this).data('comment-id');
        $.ajax({
            url: 'delete_comment.php',
            method: 'POST',
            data: {
                comment_id: commentId
            },
            success: function(response) {
                if (response === 'success') {
                    location.reload();
                } else {
                    alert('Error deleting comment.');
                }
            }
        });
    });

    $('#delete-comment').on('click', function() {
        var commentId = $(this).data('comment-id');
        $.ajax({
            url: 'delete_comment.php',
            method: 'POST',
            data: {
                comment_id: commentId
            },
            success: function(response) {
                if (response === 'success') {
                    location.reload();
                } else {
                    alert('Error deleting comment.');
                }
            }
        });
    });
});
</script>

<?php include 'includes/footer.php'; ?>