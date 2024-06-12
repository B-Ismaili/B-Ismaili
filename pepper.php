<?php
require_once 'product.php';

class Pepper extends Product
{
    public function __construct()
    {
        parent::__construct('pepper', 330, true);
    }
}