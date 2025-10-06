<?php

class ManufacturerController extends ManufacturerControllerCore
{

    public function initContent()
    {
        parent::initContent();
        $this->handlePaginationSEO();
    }
    
    /**
     * Gestion complète du SEO pour la pagination
     */
    protected function handlePaginationSEO()
    {
        $page = max(1, (int)Tools::getValue('page', 1));
        $totalPages = $this->getTotalPages();

        $this->setCanonicalURL($page);
        $this->setPaginationLinks($page, $totalPages);
        $this->setPaginatedMetaDescription($page);
    }
    
    protected function buildUrlWithPage($page)
    {
        // Repart de l’URL courante et conserve les params
        $params = Tools::getAllValues();
        if ($page > 1) {
            $params['page'] = (int)$page;
        } else {
            unset($params['page']);
        }

        // Base “propre” du fabricant
        $baseUrl = $this->context->link->getManufacturerLink($this->manufacturer);

        return !empty($params) ? $baseUrl.'?'.http_build_query($params) : $baseUrl;
    }

    /**
     * Définit la canonical URL pour la page courante
     */
    protected function setCanonicalURL($page)
    {
        $canonicalUrl = $this->buildUrlWithPage($page);

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
        if ($currentPage > 1) {
        $this->context->smarty->assign('prev_url', $this->buildUrlWithPage($currentPage - 1));
        }
        if ($currentPage < $totalPages) {
            $this->context->smarty->assign('next_url', $this->buildUrlWithPage($currentPage + 1));
        }

        $this->context->smarty->assign([
            'current_page_seo' => $currentPage,
            'total_pages_seo'  => $totalPages,
            'pagination_seo_enabled' => true,
        ]);
        }
    
    /**
     * Définit une meta description unique pour chaque page
     */
    protected function setPaginatedMetaDescription($page)
    {
        if ($page <= 1) { return; }

        $currentPage = $this->context->smarty->getTemplateVars('page') ?: [];
        $baseDescription = $currentPage['meta']['description'] ?? $this->manufacturer->meta_description;

        if (empty($baseDescription)) {
            $baseDescription = strip_tags($this->manufacturer->description);
            $baseDescription = Tools::substr($baseDescription, 0, 160);
        }

        if (empty($baseDescription)) {
            $baseDescription = 'Trouvez chez Cardalis une vaste gamme de produits et consommables pour imprimantes à badges '.
                            'de la marque '. $this->manufacturer->name .'.';
        }

        $currentPage['meta']['description'] = 'Page '.$page.' – '.$baseDescription;
        $this->context->smarty->assign('page', $currentPage);
    }

    protected function setPaginatedMetaTitle($page)
    {
        if ($page <= 1) { return; }
        $currentPage = $this->context->smarty->getTemplateVars('page') ?: [];
        $baseTitle = $currentPage['meta']['title'] ?? $this->manufacturer->name;
        $currentPage['meta']['title'] = $baseTitle.' – Page '.$page;
        $this->context->smarty->assign('page', $currentPage);
    }
    
    /**
     * Calcule le nombre total de pages (version simplifiée)
     */
    protected function getTotalPages()
{
    try {
        // 1) Per-page : prend en compte ?n=XX s'il existe (tri/facettes peuvent le poser)
        $perPage = (int)Tools::getValue('n');
        if ($perPage <= 0) {
            $perPage = (int)Configuration::get('PS_PRODUCTS_PER_PAGE');
            if ($perPage <= 0) { $perPage = 12; }
        }

        // 2) Total produits : privilégier la valeur déjà calculée par le contrôleur
        if (property_exists($this, 'nb_products') && (int)$this->nb_products > 0) {
            $total = (int)$this->nb_products;
        } else {
            // 3) Recalcul robuste via la méthode statique
            $total = (int)Manufacturer::getProducts(
                (int)$this->manufacturer->id,
                (int)$this->context->language->id,
                1,      // page
                0,      // n (0 => on ne retourne pas la liste)
                null,   // order_by
                null,   // order_way
                true,   // get_total
                true,   // active
                true,   // active_category
                $this->context
            );
        }

        return max(1, (int)ceil($total / $perPage));
    } catch (\Throwable $e) {
        // Compat >= PHP7 (Throwable) et <= PHP5 (Exception) si besoin
        return 1;
    }
}

}