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
{if $subCatNiv1.id == 357}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper justify-content-center">
            <div class="colMenu col-md-2">
                <div class="listMenu">
                    <p class="titleRubrique">{l s="PAR MARQUE"}</p>
                    <ul>
                        <li>
                            <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/marque_2-zebra" class="brandLogo">
                                <img src="{$urls.img_url}logo-zebra.jpg" alt="Logo Zebra" />
                            </a>
                        </li>
                        <li>
                            <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/marque_2-datalogic"
                                class="brandLogo">
                                <img src="{$urls.img_url}logo-datalogic.png" alt="Logo Datalogic" />
                            </a>
                        </li>
                        <li>
                            <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/marque_2-honeywell" class="brandLogo">
                                <img src="{$urls.img_url}honeywell.png" alt="Logo HoneyWell" />
                            </a>
                        </li>
                        <li>
                            <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/marque_2-metapace" class="brandLogo">
                                <img src="{$urls.img_url}metapace.png" alt="Logo Metapace" />
                            </a>
                        </li>
                        <li>
                            <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/marque_2-syris" class="brandLogo">
                                <img src="{$urls.img_url}logo-syris.png" alt="Logo Syris" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="colMenu">
                <div class="d-flex">
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/type_de_lecteur-lecteur_sans_fil"
                            style="background-image: url('{$urls.img_url}encart-lecteur-main-357.png')"
                            class="width1 bannerImg">
                            <span class="titleCat">Lecteur sans fil</span>
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}/s-36/type_de_lecteur-lecteur_filaire"
                            style="background-image: url('{$urls.img_url}encart-lecteur-fixe-357.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Lecteur filaire</span>
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(337)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-lecteur-cartes-337.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Lecteurs de cartes</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/if}