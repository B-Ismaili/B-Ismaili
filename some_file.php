<?php
require_once 'database.php';

$stmt = $pdo->query('SELECT * FROM vehicle_models');
$models = $stmt->fetchAll();

foreach ($models as $model) {
    echo $model['name'] . '<br>';
}
