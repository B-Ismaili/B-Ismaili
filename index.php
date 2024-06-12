<?php

require_once 'marketStall.php';
require_once 'cart.php';

$orange = new Product('Orange', 35, true);
$potato = new Product('Potato', 500, false);
$nuts = new Product('Nuts', 850, true);
$kiwi = new Product('Kiwi', 670, false);
$pepper = new Product('Pepper', 330, true);
$raspberry = new Product('Raspberry', 555, false);

$marketStall1 = new MarketStall(['orange' => $orange, 'potato' => $potato, 'nuts' => $nuts]);
$marketStall2 = new MarketStall(['kiwi' => $kiwi, 'pepper' => $pepper, 'raspberry' => $raspberry]);

$cart = new Cart();

$cart->addToCart($marketStall1->getItem('orange', 3));
$cart->addToCart($marketStall1->getItem('potato', 2));
$cart->addToCart($marketStall2->getItem('kiwi', 1));
$cart->addToCart($marketStall2->getItem('raspberry', 5));
$cart->addToCart($marketStall1->getItem('nuts', 5));
$cart->addToCart($marketStall2->getItem('pepper', 5));

echo $cart->printReceipt();