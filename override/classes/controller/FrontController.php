<?php
/**
 * Created by PhpStorm.
 * User: 6po
 * Date: 28/12/2016
 * Time: 09:33
 */
use PrestaShop\PrestaShop\Adapter\Cart\CartPresenter;
use PrestaShop\PrestaShop\Adapter\ObjectPresenter;
use PrestaShop\PrestaShop\Adapter\Configuration as ConfigurationAdapter;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Debug\Debug;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Loader\YamlFileLoader;
use Symfony\Component\Config\FileLocator;

class FrontController extends FrontControllerCore
{

    public function initContent()
    {

        parent::initContent();
        $lid = $this->context->language->id;
        //$cats = array(92,120,137,157,171,208);
        $rootCategory = new Category(91, $lid);

        $categoriesMenu = $rootCategory->recurseLiteCategTree(4,0,$lid);

        $this->context->smarty->assign(array(
            'categoriesMenu'=>$categoriesMenu,
            'rootCat'=>$rootCategory,
        ));


        $this->context->smarty->assign(array(
            'blockInfosBannerHeader' => new CMS(93, $lid),
            'blockInfosCart' => new CMS(94, $lid),
            'content404' => new CMS(199, $lid),
        ));  

    }

    protected function getCategoryPath($category)
    {
        if ($category->id_parent != 0 && !$category->is_root_category) {
            return array(
                'title' => $category->name,
                'id_cat' => $category->id,
                'url' => $this->context->link->getCategoryLink($category),
            );
        }
    }

}
