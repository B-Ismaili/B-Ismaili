<?php
session_start();
if (isset($_SESSION['user_id'])) {
    header("Location: templates/dashboard.php");
    exit();
} else {
    header("Location: templates/login.php");
    exit();
}
