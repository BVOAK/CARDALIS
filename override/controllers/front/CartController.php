<?php
class CartController extends CartControllerCore
{
    public function initContent()
    {
        parent::initContent();

        $crossSellingCategoryId = 420; // ID de la catégorie du produit CrossSelling
        $crossSellingProduct = $this->getCrossSellingProduct($crossSellingCategoryId);
        $this->context->smarty->assign('crossSellingProduct', $crossSellingProduct);
    }

    /**
     * Récupère le produit de cross-selling à afficher (ou null si déjà dans le panier)
     */
    private function getCrossSellingProduct($categoryId)
    {
        $product = $this->getFirstProductFromCategory($categoryId);

        if (!empty($product)) {
            $cartProducts = $this->context->cart->getProducts();
            foreach ($cartProducts as $cartProduct) {
                if ((int) $cartProduct['id_product'] === (int) $product['id_product']) {
                    return null; // Produit déjà dans le panier
                }
            }

            $product['price_formatted'] = Tools::displayPrice(
                Product::getPriceStatic($product['id_product']),
                $this->context->currency
            );

            $image = Product::getCover($product['id_product']);
            if ($image) {
                $product['image_url'] = $this->context->link->getImageLink(
                    $product['link_rewrite'],
                    $product['id_product'] . '-' . $image['id_image'],
                    'cart_default'
                );
            } else {
                $product['image_url'] = _PS_IMG_ . 'p/en-default-cart_default.jpg';
            }

             // 🔥 Ajoute un indicateur spécifique au produit Cross-Selling
            $product['is_cross_selling'] = true;

            return $product;
        }
        return null;
    }

    /**
     * Récupère le premier produit actif d'une catégorie donnée
     */
    private function getFirstProductFromCategory($categoryId)
    {
        $products = Product::getProducts(
            $this->context->language->id,
            0,
            1,
            'position',
            'ASC',
            $categoryId,
            true
        );

        return !empty($products) ? $products[0] : null;
    }

    /**
     * Ajout au panier avec redirection propre
     */
    public function postProcess()
    {
        parent::postProcess();

        if (Tools::getValue('add') == 1) {
            $productId = (int) Tools::getValue('id_product');

            if (!$productId) {
                return;
            }

            if ($this->isCrossSellingProductInCart($productId)) {
                return;
            }

            // ✅ Ajout du produit au panier
            if ($this->context->cart->updateQty(1, $productId)) {
                Tools::redirect($this->context->link->getPageLink('cart', true, null, ['action' => 'show', 'atcfu' => 1]));
            }
        }
    }

    /**
     * Vérifier si le produit est déjà dans le panier
     */
    private function isCrossSellingProductInCart($productId)
    {
        $cartProducts = $this->context->cart->getProducts();
        foreach ($cartProducts as $cartProduct) {
            if ((int) $cartProduct['id_product'] === (int) $productId) {
                return true;
            }
        }
        return false;
    }

    /**
     * Méthode Ajax pour vérifier le produit de cross-selling
     */
    public function displayAjaxGetCrossSellingProduct()
    {
        $categoryId = 420; // ID de la catégorie du cross-selling

        $crossSellingProduct = $this->getCrossSellingProduct($categoryId);

        if ($crossSellingProduct) {
            $price = Product::getPriceStatic($crossSellingProduct['id_product']);
            $crossSellingProduct['price_display'] = ($price == 0) ? 'Offert' : Tools::displayPrice($price, $this->context->currency);

            $crossSellingProduct['add_to_cart_url'] = $this->context->link->getPageLink('cart', true, null, [
                'add' => 1,
                'id_product' => $crossSellingProduct['id_product'],
                'token' => Tools::getToken(false),
                'action' => 'show',                
            ]);
        }

        header('Content-Type: application/json');
        die(Tools::jsonEncode($crossSellingProduct));
    }
}
