<?php

if (!defined('_PS_VERSION_')) {
    exit;
}

require_once _PS_MODULE_DIR_ . 'pm_advancedsearch4/controllers/front/searchresults.php';

class pm_advancedsearch4searchresultsModuleFrontController extends AdvancedSearchProductListingFrontController
{
    protected function setSmartyVars()
    {
        // Appel de la méthode parente
        parent::setSmartyVars();
        
        // Notre logique de titre SEO améliorée
        $dynamicTitle = $this->generateDynamicSeoTitle();
        
        // Override du titre
        $this->context->smarty->assign([
            'as_seo_title' => $dynamicTitle,
        ]);
    }
    
    private function generateDynamicSeoTitle()
    {
        $currentSearchInstance = $this->getSearchEngine();
        $baseTitle = $currentSearchInstance->title; // Titre par défaut
        
        // Si on est dans une catégorie
        if (!empty($this->currentIdCategory) && !empty($this->currentCategoryObject)) {
            $categoryTitle = $this->currentCategoryObject->name;
            
            // Pour l'instant on retourne juste le nom de catégorie pour tester
            return $categoryTitle;
        }
        
        // Sinon on garde le titre par défaut
        return $baseTitle;
    }
}