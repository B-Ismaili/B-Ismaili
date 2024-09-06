<?php
$password = 'Ismaili';
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);
echo $hashedPassword;