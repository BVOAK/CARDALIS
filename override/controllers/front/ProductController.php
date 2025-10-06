<?php

class ProductController extends ProductControllerCore
{
    public function getTemplateVarProduct()
    {
        $prod = parent::getTemplateVarProduct();
        if ($prod['quantity_wanted']) {
            $prod['regular_price_amount'] = $prod['regular_price_amount'] * $prod['quantity_wanted'];
            $prod['regular_price'] = Tools::displayPrice($prod['regular_price_amount']);
            $prod['price_amount'] = $prod['price_amount'] * $prod['quantity_wanted'];
            $prod['price'] = Tools::displayPrice($prod['price_amount']);
            $prod['price_tax_exc'] = $prod['price_tax_exc'] * $prod['quantity_wanted'];
            $prod['price_without_reduction'] = $prod['price_without_reduction'] * $prod['quantity_wanted'];
        }
        return $prod;
    }
    
    protected function pictureUpload(){
        if (!$field_ids = $this->product->getCustomizationFieldIds()) {
            return false;
        }
        $authorized_file_fields = array();
        foreach ($field_ids as $field_id) {
            if ($field_id['type'] == Product::CUSTOMIZE_FILE) {
                $authorized_file_fields[(int)$field_id['id_customization_field']] = 'file'.(int)$field_id['id_customization_field'];
            }
        }
        $indexes = array_flip($authorized_file_fields);
        foreach ($_FILES as $field_name => $file) {
            if (in_array($field_name, $authorized_file_fields) && isset($file['tmp_name']) && !empty($file['tmp_name'])) {
                $file_name = md5(uniqid(rand(), true));
                $extension = substr($file['name'], -3, 3);
                if ($extension == 'pdf' OR $extension == '.ai') {
                    $file_name = $file_name.'.'.str_replace('.', '', $extension);
                    if (!move_uploaded_file($file['tmp_name'], _PS_UPLOAD_DIR_.$file_name)) {
                        return false;
                    }
                    chmod(_PS_UPLOAD_DIR_.$file_name, 0777);
                    $this->context->cart->addPictureToProduct($this->product->id, $indexes[$field_name],$file['type'], $file_name);
                } 
                elseif($extension == 'jpg' OR $extension == 'gif' OR $extension == 'png'){
                    if ($error = ImageManager::validateUpload($file, (int)Configuration::get('PS_PRODUCT_PICTURE_MAX_SIZE'))) {
                        $this->errors[] = $error;
                    }
                    $product_picture_width = (int)Configuration::get('PS_PRODUCT_PICTURE_WIDTH');
                    $product_picture_height = (int)Configuration::get('PS_PRODUCT_PICTURE_HEIGHT');
                    $tmp_name = tempnam(_PS_TMP_IMG_DIR_, 'PS');
                    if ($error || (!$tmp_name || !move_uploaded_file($file['tmp_name'], $tmp_name))) {
                        return false;
                    }
                    if (!ImageManager::resize($tmp_name, _PS_UPLOAD_DIR_.$file_name)) {
                        $this->errors[] = Tools::displayError('An error occurred during the image upload process.');
                    }
                    elseif (!ImageManager::resize($tmp_name, _PS_UPLOAD_DIR_.$file_name.'_small', $product_picture_width, $product_picture_height)) {
                        $this->errors[] = Tools::displayError('An error occurred during the image upload process.');
                    } elseif (!chmod(_PS_UPLOAD_DIR_.$file_name, 0777) || !chmod(_PS_UPLOAD_DIR_.$file_name.'_small', 0777)) {
                        $this->errors[] = Tools::displayError('An error occurred during the image upload process.');
                    } else {
                        $this->context->cart->addPictureToProduct($this->product->id, $indexes[$field_name], Product::CUSTOMIZE_FILE, $file_name);
                    }
                    unlink($tmp_name);
                }
                else {
                    $this->errors[] = Tools::displayError('This format is not accepted');
                }
            }
        }
        return true;
    }
    /*
    * module: gformbuilderpro
    * date: 2021-11-19 13:46:45
    * version: 1.3.5
    */
    public function initContent()
    {
        if(Module::isInstalled('gformbuilderpro') && Module::isEnabled('gformbuilderpro'))
        {
            $formObj = Module::getInstanceByName('gformbuilderpro');
            if(is_object($formObj)) {

                $this->product->description = $formObj->getFormByShortCode($this->product->description);
                $this->product->description_short = $formObj->getFormByShortCode($this->product->description_short);
            }
        }

        $categories = $this->product->getCategories();
        $mustCustomize = false;
        if (in_array("341", $categories) || in_array("354", $categories)) { // id_category tour de cou personnalise = 341 & id_category articles non visibles = 354
            $mustCustomize = true;
        }

        $this->context->smarty->assign(array(
            'mustCustomize' => $mustCustomize,
        ));

        $lid = $this->context->language->id;

        $idProduct = (int) Tools::getValue('id_product');
        $idFeatures = Product::getFrontFeaturesStatic($lid, $idProduct);
        $idNewProduct = true;
        foreach ($idFeatures as $idFeature) {
            if ($idFeature['id_feature'] == "75") {
                $idNewProduct = $idFeature['value'];
            }
        }
        $newProduct = new Product($idNewProduct, false, $lid);

        $this->context->smarty->assign(array(
            'blockHelp' => new CMS(15, $lid),
            'blockHowPurchase' => new CMS(16, $lid),
            'newProductLink' => $newProduct->link_rewrite,
            'newProductName' => $newProduct->name
        ));


        // Count Accessories without warranty extension
        // ID du produit courant
        $productId = (int)Tools::getValue('id_product');

        // Requête SQL pour récupérer le nombre d'accessoires (en excluant les catégories 392 et 393)
        $sql = 'SELECT COUNT(*) AS total_accessories
                FROM '._DB_PREFIX_.'accessory a
                JOIN '._DB_PREFIX_.'product p ON a.id_product_2 = p.id_product
                WHERE a.id_product_1 = '.(int)$productId.'
                AND p.id_category_default NOT IN (392, 393)';

        // Exécuter la requête
        $totalAccessories = Db::getInstance()->getValue($sql);

        // Tester le résultat
        if ($totalAccessories === false) {
            $totalAccessories = 0;  // Assurez-vous que le résultat est toujours un nombre
        }

        // Vous pouvez ensuite passer la valeur à Smarty pour l'afficher dans le template, par exemple
        $this->context->smarty->assign([
            'total_accessories' => $totalAccessories,
        ]);

        parent::initContent();
    }

    

    /**
     * Override to change no default combination by a product with the same reference
     * @see controllers/front/ProductController::init()
     */
    public function init()
    {
        try {
            $idProduct = (int) Tools::getValue('id_product');
            $currentProduct = new Product($idProduct);
            $combinations = $currentProduct->getAttributeCombinations($this->context->language->id);
            $groupsIds = Tools::getValue('group');
            if($groupsIds) {
                $id_attribute_product = Product::getIdProductAttributeByIdAttributes($idProduct, array_values($groupsIds));
                foreach($combinations as $comb) {
                    if($id_attribute_product && $comb['id_product_attribute'] == $id_attribute_product) {
                        $res =  Db::getInstance()->getRow('SELECT `id_product` FROM `' . _DB_PREFIX_ . 'product` p WHERE p.reference = "' . pSQL($comb['reference']) . '"');
                        $_GET['id_product'] = (int) $res['id_product'];
                        break;
                    }
                }
            }
        } catch(Exception $e) {
            $_GET['id_product'] = $idProduct;
        } finally {
            parent::init();
        }
    }

    /**
     * Override to add new values on json response
     * Copy/Paste of parent::displayAjaxRefresh() plus new values
     * @see controllers/front/ProductController::displayAjaxRefresh()
     */
    public function displayAjaxRefresh()
    {
        ob_end_clean();
        header('Content-Type: application/json');
        $product = $this->getTemplateVarProduct();
        $minimalProductQuantity = $this->getProductMinimalQuantity($product);
        $isPreview = ('1' === Tools::getValue('preview'));
        $data = array(
            // New values
            'product_breadcrumb' => $this->render('_partials/breadcrumb'),
            'product_whole_page' => $this->render('catalog/product-card/main-product'),
            // end new values
            'product_prices' => $this->render('catalog/_partials/product-prices'),
            'product_cover_thumbnails' => $this->render('catalog/_partials/product-cover-thumbnails'),
            'product_customization' => $this->render(
                'catalog/_partials/product-customization',
                array(
                    'customizations' => $product['customizations'],
                )
            ),
            'product_details' => $this->render('catalog/_partials/product-details'),
            'product_variants' => $this->render('catalog/_partials/product-variants'),
            'product_discounts' => $this->render('catalog/_partials/product-discounts'),
            'product_add_to_cart' => $this->render('catalog/_partials/product-add-to-cart'),
            'product_additional_info' => $this->render('catalog/_partials/product-additional-info'),
            'product_images_modal' => $this->render('catalog/_partials/product-images-modal'),
            'product_url' => $this->context->link->getProductLink(
                $product['id_product'],
                null,
                null,
                null,
                $this->context->language->id,
                null,
                $product['id_product_attribute'],
                false,
                false,
                true,
                $isPreview ? array('preview' => '1') : array()
            ),
            'product_minimal_quantity' => $minimalProductQuantity,
            'product_has_combinations' => !empty($this->combinations),
            'id_product_attribute' => $product['id_product_attribute'],
            'product_title' => $product['title']
        );
        $this->ajaxRender(json_encode($data));

        return;
    }

    private function tryToGetAvailableIdProductAttribute($checkedIdProductAttribute)
    {
        if (!Configuration::get('PS_DISP_UNAVAILABLE_ATTR')) {
            $productCombinations = $this->product->getAttributeCombinations();
            if (!Product::isAvailableWhenOutOfStock($this->product->out_of_stock)) {
                $availableProductAttributes = array_filter(
                    $productCombinations,
                    function ($elem) {
                        return $elem['quantity'] > 0;
                    }
                );
            } else {
                $availableProductAttributes = $productCombinations;
            }

            $availableProductAttribute = array_filter(
                $availableProductAttributes,
                function ($elem) use ($checkedIdProductAttribute) {
                    return $elem['id_product_attribute'] == $checkedIdProductAttribute;
                }
            );

            if (empty($availableProductAttribute) && count($availableProductAttributes)) {
                // if selected combination is NOT available ($availableProductAttribute) but they are other alternatives ($availableProductAttributes), then we'll try to get the closest.
                if (!Product::isAvailableWhenOutOfStock($this->product->out_of_stock)) {
                    // first lets get information of the selected combination.
                    $checkProductAttribute = array_filter(
                        $productCombinations,
                        function ($elem) use ($checkedIdProductAttribute) {
                            return $elem['id_product_attribute'] == $checkedIdProductAttribute || (!$checkedIdProductAttribute && $elem['default_on']);
                        }
                    );
                    if (count($checkProductAttribute)) {
                        // now lets find other combinations for the selected attributes.
                        $alternativeProductAttribute = [];
                        foreach ($checkProductAttribute as $key => $attribute) {
                            $alternativeAttribute = array_filter(
                                $availableProductAttributes,
                                function ($elem) use ($attribute) {
                                    return $elem['id_attribute'] == $attribute['id_attribute'] && !$elem['is_color_group'];
                                }
                            );
                            foreach ($alternativeAttribute as $key => $value) {
                                $alternativeProductAttribute[$key] = $value;
                            }
                        }

                        if (count($alternativeProductAttribute)) {
                            // if alternative combination is found, order the list by quantity to use the one with more stock.
                            usort($alternativeProductAttribute, function ($a, $b) {
                                if ($a['quantity'] == $b['quantity']) {
                                    return 0;
                                }

                                return ($a['quantity'] > $b['quantity']) ? -1 : 1;
                            });

                            return (int) array_shift($alternativeProductAttribute)['id_product_attribute'];
                        }
                    }
                }

                return (int) array_shift($availableProductAttributes)['id_product_attribute'];
            }
        }

        return $checkedIdProductAttribute;
    }

    private function getIdProductAttributeByRequest()
    {
        $requestedIdProductAttribute = (int) Tools::getValue('id_product_attribute');

        return $this->tryToGetAvailableIdProductAttribute($requestedIdProductAttribute);
    }

    public function getBreadcrumbLinks()
    {
        $breadcrumb = FrontController::getBreadcrumbLinks();

        $categoryDefault = new Category($this->product->id_category_default, $this->context->language->id);

        foreach ($categoryDefault->getAllParents() as $category) {
            if ($category->id_parent != 0 && !$category->is_root_category && $category->active) {
                $breadcrumb['links'][] = [
                    'title' => $category->name,
                    'url' => $this->context->link->getCategoryLink($category),
                    'id_cat' => $category->id,
                ];
            }
        }

        if ($categoryDefault->id_parent != 0 && !$categoryDefault->is_root_category && $categoryDefault->active) {
            $breadcrumb['links'][] = [
                'title' => $categoryDefault->name,
                'url' => $this->context->link->getCategoryLink($categoryDefault),
            ];
        }

        $breadcrumb['links'][] = [
            'title' => $this->product->name,
            'url' => $this->context->link->getProductLink($this->product, null, null, null, null, null, (int) $this->getIdProductAttributeByRequest()),
        ];

        return $breadcrumb;
    }
}