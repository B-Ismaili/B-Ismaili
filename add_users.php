<?php

require_once 'db_connection.php';


$users = [
    ['username' => 'admin', 'password' => 'adminpass'],
    ['username' => 'user1', 'password' => 'user1pass'],
    ['username' => 'user2', 'password' => 'user2pass'],
    ['username' => 'user3', 'password' => 'user3pass'],
    ['username' => 'test', 'password' => 'test']
];

foreach ($users as $user) {
    $username = $user['username'];
    $password_hash = password_hash($user['password'], PASSWORD_DEFAULT);

    // Check if the user already exists
    $sql = "SELECT id FROM users WHERE username = :username";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':username', $username, PDO::PARAM_STR);
    $stmt->execute();

    if ($stmt->rowCount() == 0) {
        // If the user does not exist, insert the new user
        $sql = "INSERT INTO users (username, password_hash) VALUES (:username, :password_hash)";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        $stmt->bindParam(':password_hash', $password_hash, PDO::PARAM_STR);
        $stmt->execute();
        echo "User $username inserted successfully.<br>";
    } else {
        echo "User $username already exists.<br>";
    }
}
echo "<a href='login.php'><button type='submit'>Back</button></a>";