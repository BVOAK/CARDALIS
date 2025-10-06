<?php

class CategoryController extends CategoryControllerCore
{
    public function init()
    {
        parent::init();
        $lid = $this->context->language->id;
        $this->context->smarty->assign(array(
            'categoryPrincipale' => new Category($this->getCategoryPrincipale($this->category->id_category), $lid),
        ));

        //Meilleures ventes
        if ($idMeilleuresVentes = $this->getCategoryBestSales($this->category->id_category, $lid) != 0) {
            $meilleuresVentes = new Category($idMeilleuresVentes, $lid);

            $this->context->smarty->assign(array(
                'meilleuresVentes' => $meilleuresVentes,
                'meilleuresVentesProduct' => $meilleuresVentes->getProducts($lid, 1, 12)
            ));
        }

        $subcats =  $this->getTemplateVarSubCategories();
        $subcatsProductCount = array();
        foreach ($subcats as $index => $value) {
            $subcatsProductCount[$index] = (new Category($value['id_category'], $lid))->getProducts($lid, 1, 1000, null, null, true);
        }
        $this->context->smarty->assign(array('subcatsProductCount' => $subcatsProductCount));
    }

    /**
     * @param $idCategory
     * Attention, cette fonction est récursive
     */
    public function getCategoryPrincipale($idCategory)
    {
        $category = new Category($idCategory);
        if ($category->id_parent == 1 || $category->id_parent == 0) {
            return $idCategory;
        } else {
            return $this->getCategoryPrincipale($category->id_parent);
        }
    }

    public function getCategoryBestSales($idCategory, $idLang)
    {
        $category = new Category($idCategory);
        if ($category->id_parent == 1) {
            $subcats = $category->getSubCategories($idLang, false);
            foreach ($subcats as $key => $subcat) {
                if ($subcat['link_rewrite'] == "meilleures-ventes") {
                    return intval($subcat['id_category']);
                }
            }
            return 0;
        } else {
            return 0;
        }
    }

    public function getBreadcrumbLinks()
    {
        $breadcrumb = FrontController::getBreadcrumbLinks();

        foreach ($this->category->getAllParents() as $category) {
            if ($category->id_parent != 0 && !$category->is_root_category && $category->active) {
                $breadcrumb['links'][] = [
                    'title' => $category->name,
                    'id_cat' => $category->id,
                    'url' => $this->context->link->getCategoryLink($category),
                ];
            }
        }

        if ($this->category->id_parent != 0 && !$this->category->is_root_category && $category->active) {
            $breadcrumb['links'][] = [
                'title' => $this->category->name,
                'id_cat' => $this->category->id,
                'url' => $this->context->link->getCategoryLink($this->category),
            ];
        }

        return $breadcrumb;
    }

    /**
     * Initialisation du contenu avec gestion SEO pagination
     */
    public function initContent()
    {
        parent::initContent();
        
        // Ton code métier existant
        $this->initCustomCMSBlocks();
        
        // Gestion spécifique de la pagination pour le SEO
        $this->handlePaginationSEO();
    }

    /**
     * Gestion de tous tes blocs CMS spécifiques par catégorie
     */
    protected function initCustomCMSBlocks()
    {
        $lid = $this->context->language->id;

        $this->context->smarty->assign(array(
            'blockBICom01' => new CMS(102, $lid),
            'blockBICom02' => new CMS(103, $lid),
            'blockLICom01' => new CMS(203, $lid),
            'blockLICom02' => new CMS(204, $lid),
        ));

        if ($this->category->id_category == 92) {
            $this->context->smarty->assign(array(
                'block9201' => new CMS(30, $lid),
                'block9202' => new CMS(31, $lid),
                'block9203' => new CMS(32, $lid),
                'block9204' => new CMS(152, $lid),
            ));
        }

        if ($this->category->id_category == 208) {
            $this->context->smarty->assign(array(
                'block20801' => new CMS(33, $lid),
                'block20802' => new CMS(34, $lid),
                'block20803' => new CMS(35, $lid),
                'block20804' => new CMS(36, $lid),
            ));
        }

        if ($this->category->id_category == 109) {
            $this->context->smarty->assign(array(
                'block10901' => new CMS(37, $lid),
                'block10902' => new CMS(38, $lid),
            ));
        }

        if ($this->category->id_category == 365) {
            $this->context->smarty->assign(array(
                'block36201' => new CMS(57, $lid),
                'block36202' => new CMS(58, $lid),
                'block36203' => new CMS(59, $lid),
            ));
        }

        if ($this->category->id_category == 137) {
            $this->context->smarty->assign(array(
                'block13701' => new CMS(60, $lid),
                'block13702' => new CMS(61, $lid),
                'block13703' => new CMS(62, $lid),
                'block13704' => new CMS(63, $lid),
                'block13705' => new CMS(64, $lid),
            ));
        }

        if (($this->category->id_category == 344) || ($this->category->id_category == 343)) {
            $this->context->smarty->assign(array(
                'block33901' => new CMS(65, $lid),
                'block33902' => new CMS(66, $lid),
                'block33903' => new CMS(67, $lid),
                'block33904' => new CMS(68, $lid),
                'block33905' => new CMS(69, $lid),
                'block33906' => new CMS(70, $lid),
                'block33907' => new CMS(71, $lid),
                'block33908' => new CMS(78, $lid),
                'block33909' => new CMS(79, $lid),
                'block33910' => new CMS(92, $lid),
            ));
        }

        if ($this->category->id_category == 171) {
            $this->context->smarty->assign(array(
                'block17101' => new CMS(72, $lid),
                'block17102' => new CMS(73, $lid),
                'block17103' => new CMS(74, $lid),
            ));
        }

        if ($this->category->id_category == 338) {
            $this->context->smarty->assign(array(
                'block33801' => new CMS(75, $lid),
                'block33802' => new CMS(76, $lid),
                'block33803' => new CMS(77, $lid),
            ));
        }

        if ($this->category->id_category == 341) {
            $this->context->smarty->assign(array(
                'block34101' => new CMS(199, $lid),
                'block34102' => new CMS(200, $lid),
                'block34103' => new CMS(201, $lid),
                'block34104' => new CMS(202, $lid),
            ));
        }

        if ($this->category->id_category == 369) {
            $this->context->smarty->assign(array(
                'block36901' => new CMS(95, $lid),
                'block36902' => new CMS(96, $lid),
                'block36903' => new CMS(97, $lid),
            ));
        }

        if (($this->category->id_category == 369) || ($this->category->id_category == 385) || ($this->category->id_category == 386) || ($this->category->id_category == 387)) {
            $this->context->smarty->assign(array(
                'block36904' => new CMS(98, $lid),
            ));
        }

        if ($this->category->id_category == 384) {
            $this->context->smarty->assign(array(
                'block38401' => new CMS(99, $lid),
                'block38402' => new CMS(100, $lid),
                'block38404' => new CMS(104, $lid),
                'block38405' => new CMS(105, $lid),
                'block38406' => new CMS(106, $lid),
                'block38407' => new CMS(107, $lid),
                'block38408' => new CMS(108, $lid),
                'block38409' => new CMS(109, $lid),
                'block38410' => new CMS(110, $lid),
                'block38411' => new CMS(111, $lid),
                'block38412' => new CMS(112, $lid),
                'block38413' => new CMS(113, $lid),
            ));
        }

        if ($this->category->id_category == 386) {
            $this->context->smarty->assign(array(
                'block38601' => new CMS(114, $lid),
                'block38602' => new CMS(115, $lid),
                'block38604' => new CMS(116, $lid),
                'block38605' => new CMS(117, $lid),
                'block38606' => new CMS(118, $lid),
                'block38607' => new CMS(119, $lid),
                'block38608' => new CMS(120, $lid),
                'block38609' => new CMS(121, $lid),
                'block38610' => new CMS(122, $lid),
                'block38611' => new CMS(123, $lid),
                'block38612' => new CMS(124, $lid),
                'block38613' => new CMS(125, $lid),
                'block38614' => new CMS(126, $lid),
                'block38615' => new CMS(127, $lid),
            ));
        }

        if ($this->category->id_category == 387) {
            $this->context->smarty->assign(array(
                'block38701' => new CMS(128, $lid),
                'block38702' => new CMS(129, $lid),
                'block38703' => new CMS(130, $lid),
                'block38704' => new CMS(131, $lid),
                'block38705' => new CMS(132, $lid),
                'block38706' => new CMS(133, $lid),
                'block38707' => new CMS(134, $lid),
                'block38708' => new CMS(135, $lid),
                'block38709' => new CMS(136, $lid),
                'block38710' => new CMS(137, $lid),
            ));
        }

        if ($this->category->id_category == 385) {
            $this->context->smarty->assign(array(
                'block38501' => new CMS(138, $lid),
                'block38502' => new CMS(139, $lid),
                'block38503' => new CMS(140, $lid),
                'block38504' => new CMS(141, $lid),
                'block38505' => new CMS(142, $lid),
                'block38506' => new CMS(143, $lid),
                'block38507' => new CMS(144, $lid),
                'block38508' => new CMS(145, $lid),
                'block38509' => new CMS(146, $lid),
                'block38510' => new CMS(151, $lid),
            ));
        }

        if ($this->category->id_category == 399) {
            $this->context->smarty->assign(array(
                'block39901' => new CMS(205, $lid),
                'block39902' => new CMS(206, $lid),
            ));
        }

        if ($this->category->id_category == 400) {
            $this->context->smarty->assign(array(
                'block40001' => new CMS(207, $lid),
                'block40002' => new CMS(208, $lid),
            ));
        }

        if ($this->category->id_category == 401) {
            $this->context->smarty->assign(array(
                'block40101' => new CMS(213, $lid),
                'block40102' => new CMS(214, $lid),
            ));
        }

        if ($this->category->id_category == 402) {
            $this->context->smarty->assign(array(
                'block40201' => new CMS(219, $lid),
                'block40202' => new CMS(220, $lid),
                'block40203' => new CMS(221, $lid),
                'block40204' => new CMS(222, $lid),
                'block40205' => new CMS(223, $lid),
                'block40206' => new CMS(224, $lid),
                'block40207' => new CMS(226, $lid),
                'block40208' => new CMS(227, $lid),
                'block40209' => new CMS(225, $lid),
            ));
        }

        if ($this->category->id_category == 145) {
            $this->context->smarty->assign(array(
                'block14501' => new CMS(9, $lid),
                'block14502' => new CMS(10, $lid),
                'block14503' => new CMS(11, $lid),
                'block14504' => new CMS(12, $lid),
                'block14505' => new CMS(235, $lid),
                'block14506' => new CMS(236, $lid),
                'block14507' => new CMS(237, $lid),
                'block14508' => new CMS(238, $lid),
                'block14509' => new CMS(242, $lid),
                'block14510' => new CMS(244, $lid),
            ));
        }
    }
    
    /**
     * Gestion complète du SEO pour la pagination
     */
    protected function handlePaginationSEO()
    {
        $page = (int)Tools::getValue('page', 1);
        $totalPages = $this->getTotalPages();
        
        // 1. Canonical vers la page courante
        $this->setCanonicalURL($page);
        
        // 2. Balises rel="prev" et rel="next"
        $this->setPaginationLinks($page, $totalPages);
        
        // 3. Meta description unique par page
        $this->setPaginatedMetaDescription($page);
    }
    
    /**
     * Définit la canonical URL pour la page courante
     */
    protected function setCanonicalURL($page)
    {
        $baseUrl = $this->context->link->getCategoryLink($this->category);
        
        if ($page > 1) {
            $canonicalUrl = $baseUrl . '?page=' . $page;
        } else {
            $canonicalUrl = $baseUrl;
        }
        
        // Met à jour la canonical dans l'objet page (utilisé par le template)
        $this->context->smarty->assign([
            'page' => array_merge(
                $this->context->smarty->getTemplateVars('page') ?: [],
                ['canonical' => $canonicalUrl]
            )
        ]);
    }
    
    /**
     * Définit les balises rel="prev" et rel="next"
     */
    protected function setPaginationLinks($currentPage, $totalPages)
    {
        $baseUrl = $this->context->link->getCategoryLink($this->category);
        
        // rel="prev"
        if ($currentPage > 1) {
            $prevPage = $currentPage - 1;
            $prevUrl = ($prevPage == 1) ? $baseUrl : $baseUrl . '?page=' . $prevPage;
            $this->context->smarty->assign('prev_url', $prevUrl);
        }
        
        // rel="next"
        if ($currentPage < $totalPages) {
            $nextPage = $currentPage + 1;
            $nextUrl = $baseUrl . '?page=' . $nextPage;
            $this->context->smarty->assign('next_url', $nextUrl);
        }
        
        // Variables pour debug/template
        $this->context->smarty->assign([
            'current_page_seo' => $currentPage,
            'total_pages_seo' => $totalPages,
            'pagination_seo_enabled' => true
        ]);
    }
    
    /**
     * Définit une meta description unique pour chaque page
     */
    protected function setPaginatedMetaDescription($page)
    {
        if ($page <= 1) return; // Pas de modification pour la page 1
        
        // Récupération de la description de base de la catégorie
        $currentPage = $this->context->smarty->getTemplateVars('page') ?: [];
        $baseDescription = $currentPage['meta']['description'] ?? $this->category->meta_description;
        
        if (empty($baseDescription)) {
            $baseDescription = strip_tags($this->category->description);
            $baseDescription = Tools::substr($baseDescription, 0, 120);
        }
        
        if (empty($baseDescription)) {
            $baseDescription = "Trouvez chez Cardalis une vaste gamme de " . 
                              strtolower($this->category->name) . 
                              " et consommables pour imprimantes à badges.";
        }
        
        // Modification pour les pages 2+
        $pageDescription = "Page {$page} – " . $baseDescription;
        
        // Met à jour la description dans l'objet page
        $currentPage['meta']['description'] = $pageDescription;
        $this->context->smarty->assign('page', $currentPage);
    }
    
    /**
     * Calcule le nombre total de pages (version simplifiée)
     */
    protected function getTotalPages()
    {
        try {
            $nbProducts = $this->category->getProducts(
                $this->context->language->id,
                1,
                999999, // Grande valeur pour compter
                null,
                null,
                false,
                true,
                false,
                999999,
                false,
                null,
                true
            );
            
            $productsPerPage = (int)Configuration::get('PS_PRODUCTS_PER_PAGE') ?: 12;
            return ceil(count($nbProducts) / $productsPerPage);
        } catch (Exception $e) {
            return 1; // Fallback en cas d'erreur
        }
    }
}