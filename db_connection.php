<?php
// class Database
// {
//     private $host = "localhost";
//     private $db_name = "registered_vehicles1";
//     private $username = "root";
//     private $password = "";
//     public $conn;
//     public $pdo;

//     public function getConnection()
//     {
//         $this->conn = null;


//         try {
//             $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
//             $this->conn->exec("set names utf8");
//         } catch (PDOException $e) {
//             echo "Connection error: " . $e->getMessage();
//         }

//         return $this->conn;
//     }
// }
try {
    $pdo = new PDO('mysql:host=localhost;dbname=registered_vehicles', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn = new PDO('mysql:host=localhost;dbname=registered_vehicles', 'root', '');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Could not connect to the database: " . $e->getMessage());
}