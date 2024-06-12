<?php
class Cart
{
    private $cartItems = [];
    public function addToCart($item)
    {
        if ($item) {
            $this->cartItems[] = $item;
        }
    }
    public function printReceipt()
    {
        if (empty($this->cartItems)) {
            return "Your cart is empty";
        }

        $totalAmount = 0;
        $receipt = "";

        foreach ($this->cartItems as $cartItem) {
            $product = $cartItem['item'];
            $amount = $cartItem['amount'];
            $itemTotal = $product->getPrice() * $amount;

            $unit = $product->isSellingByKg() ? 'kgs' : 'gunny sacks';
            $receipt .= $product->getName() . " | " . $amount . " " . $unit . " | total= " . $itemTotal . " denars <br />";
            $totalAmount += $itemTotal;
        }

        $receipt .= "Final price amount: " . $totalAmount . " denars";

        return $receipt;
    }
}