<?php
require_once 'product.php';

class Orange extends Product
{
    public function __construct()
    {
        parent::__construct('Orange', 35, true);
    }
}