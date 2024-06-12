<?php
require_once 'product.php';

class Nuts extends Product
{
    public function __construct()
    {
        parent::__construct('Nuts', 870, true);
    }
}