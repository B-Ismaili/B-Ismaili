</div>
<footer class="footer mt-auto py-3 bg-light">
    <div class="container text-center">
        <span class="text-muted">
            <?php
            $quote = file_get_contents('http://api.quotable.io/random');
            $quote = json_decode($quote, true);
            echo $quote['content'] . ' - ' . $quote['author'];
            ?>
        </span>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>