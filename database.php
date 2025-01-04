<?php
// database.php

$host = 'localhost'; // Database host
$db = 'vehicle_licensing'; // Database name
$user = 'root'; // Database username
$pass = ''; // Database password
$charset = 'utf8mb4'; // Character set

$dsn = "mysql:host=$host;dbname=$db;charset=$charset"; // Data Source Name

$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, // Error mode
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, // Fetch mode
    PDO::ATTR_EMULATE_PREPARES   => false, // Disable emulation of prepared statements
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}
