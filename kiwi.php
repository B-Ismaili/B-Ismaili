<?php
require_once 'product.php';

class Kiwi extends Product
{
    public function __construct()
    {
        parent::__construct('kiwi', 670, false);
    }
}