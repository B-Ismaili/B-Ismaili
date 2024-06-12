<?php
require_once 'orange.php';
require_once 'potato.php';
require_once 'nuts.php';
require_once 'kiwi.php';
require_once 'pepper.php';
require_once 'raspberry.php';

class MarketStall
{
    public $productStoring;

    public function __construct($productStoring)
    {

        if (!is_array($productStoring)) {
            echo 'Products must be an associative array';
        }

        foreach ($productStoring as $key => $product) {
            if (!($product instanceof Product)) {
                echo 'All values must be instances of the Product class';
            }
        }
        $this->productStoring = $productStoring;
    }

    public function addProductToMarket($name, $product)
    {
        if (!($product instanceof Product)) {
            echo 'The product must be an instance of the Product class';
        }

        $this->productStoring[$name] = $product;
    }
    public function getItem($name, $amount)
    {
        if (!array_key_exists($name, $this->productStoring)) {
            return false;
        }

        return ['amount' => $amount, 'item' => $this->productStoring[$name]];
    }
}