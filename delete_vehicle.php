<?php
session_start();
require 'config.php';


$id = $_GET['id'];
$stmt = $pdo->prepare('DELETE FROM registrations WHERE id = ?');
$stmt->execute([$id]);

header('Location: welcome.php');
exit;
