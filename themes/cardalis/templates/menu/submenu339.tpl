{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

{* ID 92 *}
{if $subCatNiv1.id == 339}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper justify-content-center align-items-end">
            <div class="colMenu">
                <a href="{$link->getCategoryLink(343)|escape:'html':'UTF-8'}" class="titleRubrique wp10">{l s="TOURS DE COU"}</a>
                <div class="d-flex">
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(183)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-standard-332.jpg')" class="width1 bannerImg">
                            <span class="titleCat">STANDARDS</span>
                            <span class="btCat">Découvrir</span>
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(342)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-imprimes-332.jpg')" class="width1 bannerImg">
                            <span class="titleCat">Pré-imprimés</span>
                            <span class="btCat">Découvrir</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="colMenu">
                <a href="{$link->getCategoryLink(344)|escape:'html':'UTF-8'}" class="titleRubrique wp10">{l s="BRACELETS"}</a>
                <div class="d-flex">
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(346)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-silicone-346.png')" class="width1 bannerImg">
                            <span class="titleCat">Silicone</span>
                            <span class="btCat">Découvrir</span>
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(350)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-vinyle-350.jpg')" class="width1 bannerImg">
                            <span class="titleCat">VINYLE</span>
                            <span class="btCat">Découvrir</span>
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(347)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-tyvek-347.png')" class="width1 bannerImg">
                            <span class="titleCat">Tyvek</span>
                            <span class="btCat">Découvrir</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="colMenu">
                <div class="blockBanner">
                    <a href="{$link->getCategoryLink(338)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-service-impression.jpg')" class="width2 bannerImg"></a>
                </div>
            </div>
        </div>
    </div>
{/if}