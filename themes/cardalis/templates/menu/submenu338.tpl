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
{if $subCatNiv1.id == 338}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper">
            <div class="colMenu">
                <div class="d-flex">
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(145)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-cartes-imprimees-277.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Cartes imprimées</span>
                            <img class="iconPantonier" src="{$urls.img_url}label-personnalisable.png">
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(341)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-tour-de-cou-277.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Tours de cou imprimés</span>
                            <img class="iconPantonier" src="{$urls.img_url}label-personnalisable.png">
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(369)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-bracelet-277.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Bracelets imprimés</span>
                            <img class="iconPantonier" src="{$urls.img_url}label-personnalisable.png">
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(198)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-enrouleurs-198.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Enrouleurs imprimés</span>
                            <img class="iconPantonier" src="{$urls.img_url}label-personnalisable.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/if}