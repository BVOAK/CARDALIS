<?php
/**
 * Created by PhpStorm.
 * User: 6po
 * Date: 29/12/2016
 * Time: 12:42
 */
class IndexController extends IndexControllerCore {
    public function initContent() {
        $lid = $this->context->language->id;
        $this->context->smarty->assign(array(
            'blockCardalisCats' => new CMS(19, $lid),
            'blockCardalis' => new CMS(20, $lid),
            'blockContact' => new CMS(21, $lid),
            /*'blockEpaisseursTechnologies' => new CMS(12, $lid),
            'blockCommandeLivraison' => new CMS(11, $lid) */

            'blockHomeCat92' => new CMS(80, $lid),
            'blockHomeCat120' => new CMS(81, $lid),
            'blockHomeCat137' => new CMS(82, $lid),
            'blockHomeCat171' => new CMS(83, $lid),
            'blockHomeCat343' => new CMS(84, $lid),
            'blockHomeCat344' => new CMS(153, $lid),
            'blockHomeCat208' => new CMS(85, $lid),
            'blockHomeCat338' => new CMS(86, $lid),
            'blockHomeCat357' => new CMS(87, $lid),
            'blockHomeCat402' => new CMS(233, $lid),
            'gtmiPrinters' => $this->gtmiGetPrinters(),
            'gtmiTypesOfRubans' => $this->gtmiGetRuban(14),
        ));
        parent::initContent();
    }

    /**
     * Handle printers models from ajax request
     *
     * @return void
     */
    public function displayAjaxModels() {
        $idCat = (int) Tools::getValue('model');
        die(json_encode($this->gtmiGetModelsFromParentCat($idCat)));
    }

    /**
     * Get brands from subcategory of main category id 120
     *
     * @return array
     */
    public function gtmiGetPrinters() {
        $idLang = $this->context->language->id;
        $models = (new Category(120))->getSubCategories($idLang);
        $brands = [];
        foreach($models as $cat) {
            $name = str_ireplace('consommables ', '', $cat['name']);
            $brands[] = [
                'id' => $cat['id_category'],
                'name' =>  $name,
            ];
        }
        usort($brands, function($a,$b){
            return $a['name'] <=> $b['name'];
        });
        return $brands;
    }

    /**
     * Get models from id category (brand)
     *
     * @param int $idModel
     * @return array|false
     */
    public function gtmiGetModelsFromParentCat($idModel) {
        $idLang = $this->context->language->id;
        $idModel = (int) $idModel;
        $models = (new Category($idModel))->getSubCategories($idLang);
        $results = [];
        $excludeIds = [124, 321, 132, 323, 128, 322, 317, 325, 304, 136, 324, 363, 374, 364];
        foreach($models as $cat) {
            $id = $cat['id_category'];
            if(!in_array($id, $excludeIds)) {
                $name = str_ireplace('consommables ', '', $cat['name']);
                $results[] = [
                    'id' => $id,
                    'name' =>  $name,
                ];
            }
        };
        usort($results, function($a,$b){
            return $a['name'] <=> $b['name'];
        });
        return $results;
    }

    /**
     * Get ruban types from id model
     *
     * @param int $idFeature
     * @return array|false
     */
    public function gtmiGetRuban($idFeature) {
        $idFeature = (int) $idFeature;
        $sql = $this->gtmiSqlRequestTypeRuban($idFeature);
        $types = Db::getInstance()->executeS($sql);
        usort($types, function($a,$b){
            return $a['name'] <=> $b['name'];
        });
        return $types;
    }

    /**
     * Make sql statement to get model, type of ruban features and their values
     *
     * @param int $idFeature
     * @return string
     */
    public function gtmiSqlRequestTypeRuban($idFeature) {
        $idLang = $this->context->language->id;
        $idFeature = (int) $idFeature;
        $sql ='SELECT DISTINCT L.id_feature_value id, L.value as name 
        FROM `'._DB_PREFIX_.'feature_product` F
        JOIN `'._DB_PREFIX_.'feature_value_lang` L
        ON L.id_feature_value = F.id_feature_value
        WHERE F.id_feature = '.$idFeature.'
        AND L.id_lang = '.$idLang.'
        AND L.id_feature_value NOT IN (160,254)
        ORDER BY L.value ASC';
        return $sql;
    }
}