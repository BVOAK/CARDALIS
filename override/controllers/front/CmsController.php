<?php
/**
* This file will override class CmsControllerCore. Do not modify this file if you want to upgrade the module in future
* 
* @author    Globo Software Solution JSC <contact@globosoftware.net>
* @copyright  2017 Globo., Jsc
* @license   please read license in file license.txt
* @link	     http://www.globosoftware.net
*/
class CmsController extends CmsControllerCore
{
    /*
    * module: gformbuilderpro
    * date: 2021-11-19 13:46:45
    * version: 1.3.5
    */
    public function initContent()
    {
        if(Module::isInstalled('gformbuilderpro') && Module::isEnabled('gformbuilderpro'))
        {
            if(Tools::getValue('id_cms') > 0){
                $cmshtml = $this->cms->content;
                $formObj = Module::getInstanceByName('gformbuilderpro');
                $this->cms->content = $formObj->getFormByShortCode($cmshtml);
            }
        }

        $params = array();
		$wbp_module = Module::getInstanceByName('wordpressblogposts');
		preg_match_all('/\[wordpressblogposts([^\]]*)\]/', $this->cms->content, $matches);
		if (!empty($matches[1]))
		{
			$i = 0;
			foreach ($matches[1] as $match)
			{
				$params_tmp = explode(',', $match);
				if (!empty($params_tmp))
				{
					foreach ($params_tmp as $param)
					{
						$arr_parts = explode('=', $param);
						$key = trim($arr_parts[0], ' ');
						$value = trim($arr_parts[1], "'");
						$params[$key] = $value;
					}
					$this->cms->content = str_replace($matches[0][$i], $posts = $wbp_module->hookDisplayWBPPostsCustom($params), $this->cms->content);
				}
				$i++;
			}
		}

		$lid = $this->context->language->id;

		if($this->cms->id==13){
			$this->context->smarty->assign(array(
				'blockCartesImprimeesVosCouleurs' => new CMS(9, $lid),
				'blockEpaisseursTechnologies' => new CMS(10, $lid),
				'blockCommandeLivraison' => new CMS(11, $lid)
			));

			$this->context->smarty->assign('HOOK_CONTACT_FORM_BOTTOM', Hook::exec('contactFormBottom'));
		}


		if($this->cms->id==4){
			$this->context->smarty->assign(array(
				'blockAbout1' => new CMS(52, $lid),
				'blockAbout2' => new CMS(53, $lid),
				'blockAbout3' => new CMS(54, $lid),
				'blockAbout4' => new CMS(55, $lid),
				'blockAbout5' => new CMS(56, $lid),
			));
		}

		/************* MARQUES **************/

		//EVOLIS
		if($this->cms->id==154){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(162, $lid),
				'blockImg' => new CMS(163, $lid),
			));
		}

		//IDP
		if($this->cms->id==155){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(164, $lid),
				'blockImg' => new CMS(165, $lid),
			));
		}

		//NISCA
		if($this->cms->id==156){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(166, $lid),
				'blockImg' => new CMS(167, $lid),
			));
		}

		//ZEBRA
		if($this->cms->id==157){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(168, $lid),
				'blockImg' => new CMS(169, $lid),
			));
		}

		//FARGO
		if($this->cms->id==158){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(170, $lid),
				'blockImg' => new CMS(171, $lid),
			));
		}

		//ENTRUST
		if($this->cms->id==159){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(172, $lid),
				'blockImg' => new CMS(173, $lid),
			));
		}

		//EDIKIO
		if($this->cms->id==160){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(174, $lid),
				'blockImg' => new CMS(175, $lid),
			));
		}

		//MAGICARD
		if($this->cms->id==161){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(176, $lid),
				'blockImg' => new CMS(177, $lid),
			));
		}


		/************* CONSEILS **************/

		if($this->cms->id==180){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(180, $lid),
			));
		}

		if($this->cms->id==181){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(181, $lid),
			));
		}

		if($this->cms->id==182){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(182, $lid),
			));
		}

		if($this->cms->id==187){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(187, $lid),
			));
		}

		if($this->cms->id==188){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(188, $lid),
			));
		}

		if($this->cms->id==189){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(189, $lid),
			));
		}

		if($this->cms->id==190){
			$this->context->smarty->assign(array(
				'blockText' => new CMS(190, $lid),
			));
		}

        parent::initContent();
    }
}