<?php
/**
 * Override du module gformbuilderpro
 * Désactive le chargement des CSS corrompus du dossier customcss
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class GformbuilderproOverride extends Gformbuilderpro
{
    /**
     * Hook hookDisplayHeader surchargé pour éviter le chargement des CSS corrompus
     */
    public function hookDisplayHeader($params){
        $this->context->controller->addCSS(_MODULE_DIR_.$this->name.'/views/css/front/jquery.minicolors.css');
        $this->context->controller->addCSS(_MODULE_DIR_.$this->name.'/views/css/front/gformbuilderpro.css');
        
        /*$css_files = Tools::scandir(_PS_MODULE_DIR_.$this->name.'/views/css/front/customcss', 'css');
        if (!empty($css_files)) {
            foreach ($css_files as $css_file) {
                $this->context->controller->addCSS(_PS_MODULE_DIR_.$this->name.'/views/css/front/customcss/'.$css_file);
            }
        }*/  

        $this->context->controller->addJqueryUI('ui.datepicker');
        $this->context->controller->addJqueryUI('ui.slider');
        $this->context->controller->addJqueryPlugin('fancybox');
        if (version_compare(_PS_VERSION_, '1.6.0.0', '<')){
            $this->context->controller->addJS(_MODULE_DIR_.$this->name.'/views/js/front/gformbuilderpro_oldversion.js');
        }
        $this->context->controller->addJS(_MODULE_DIR_.$this->name.'/views/js/front/tinymce/tinymce.min.js');
        $this->context->controller->addJS(_MODULE_DIR_.$this->name.'/views/js/front/jquery.minicolors.js');
        $this->context->controller->addJS(_MODULE_DIR_.$this->name.'/views/js/front/gformbuilderpro.js');
    }
    
}