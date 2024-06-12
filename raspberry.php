<?php
require_once 'product.php';

class Raspberry extends Product
{
    public function __construct()
    {
        parent::__construct('raspberry', 600, false);
    }
}