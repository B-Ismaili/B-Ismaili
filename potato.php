<?php
require_once 'product.php';

class Potato extends Product
{
    public function __construct()
    {
        parent::__construct('Potato', 500, false);
    }
}