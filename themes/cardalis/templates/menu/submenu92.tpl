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

{assign var=langID value=$language.id}

{* ID 92 *}
{if $subCatNiv1.id == 92}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper">
            <div class="colMenu col-md-2">
                <div class="listMenu">
                    <p class="titleRubrique">{l s="Imprimantes"}</p>
                    <ul>
                        <li><a href="{$link->getCategoryLink(93)|escape:'html':'UTF-8'}">Toutes les imprimantes</a></li>
                        <li><a href="{$link->getCategoryLink(94)|escape:'html':'UTF-8'}">Simple face</a></li>
                        <li><a href="{$link->getCategoryLink(95)|escape:'html':'UTF-8'}">Recto-verso</a></li>
                        <li><a href="{$link->getCategoryLink(97)|escape:'html':'UTF-8'}">Retransfert</a></li>
                        <li><a href="{$link->getCategoryLink(365)|escape:'html':'UTF-8'}">Imprimantes étiquettes prix</a></li>
                        <li><a href="{$link->getCategoryLink(100)|escape:'html':'UTF-8'}">Pack tout-en-un</a></li>
                    </ul>
                </div>
                <div class="listMenu">
                    <p class="titleRubrique">{l s="Accessoires"}</p>
                    <ul>
                        <li><a href="{$link->getCategoryLink(109)|escape:'html':'UTF-8'}">Logiciels et tablettes</a></li>
                        <li><a href="{$link->getCategoryLink(366)|escape:'html':'UTF-8'}">Produits d'entretien</a></li>
                        <li><a href="{$link->getCategoryLink(367)|escape:'html':'UTF-8'}">Pièces et upgrades</a></li>
                        <li><a href="{$link->getCategoryLink(368)|escape:'html':'UTF-8'}">Destructeurs de rubans</a></li>
                        <li><a href="{$link->getCategoryLink(392)|escape:'html':'UTF-8'}">Extensions de garantie</a></li>
                        <li><a href="{$link->getCategoryLink(393)|escape:'html':'UTF-8'}">Double échange by Cardalis</a></li>
                </ul>
            </div>
        </div>
        <div class="colMenu col-md-3" id="listBrandsMenuPrinter">
            <div class="listMenu">
                <p class="titleRubrique">{l s="PAR MARQUE"}</p>
                <ul>
                    <li>
                        <a href="{$link->getCategoryLink(103)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-evolis.jpg" alt="Logo Evolis" />
                        </a>
                    </li>
                    
                    <li>
                        <a href="{$link->getCategoryLink(361)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-magicard.jpg" alt="Logo Magicard" />
                        </a>
                    </li>
                    <li>
                        <a href="{$link->getCategoryLink(314)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-idp.jpg" alt="Logo IDP" />
                        </a>
                    </li>
                    <li>
                        <a href="{$link->getCategoryLink(409)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-pointman.png" alt="Logo PointMan" />
                        </a>
                    </li>
                    <li>
                        <a href="{$link->getCategoryLink(104)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-fargo.jpg" alt="Logo Fargo" />
                        </a>
                    </li>
                    <li>
                        <a href="{$link->getCategoryLink(365)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-edikio.jpg" alt="Logo Edikio" />
                        </a>
                    </li>
                    <li>
                        <a href="{$link->getCategoryLink(105)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-zebra.jpg" alt="Logo Zebra" />
                        </a>
                    </li>
                    <li>
                        <a href="{$link->getCategoryLink(102)|escape:'html':'UTF-8'}" class="brandLogo">
                            <img src="{$urls.img_url}logo-datacard.jpg" alt="Logo Datacard" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="colMenu col-md-5">
            {hook h='CETemplate' id=33}
        </div>
        {* <div class="colMenu">
            <div class="blockBanner">
                <p class="titleRubrique">{l s="NOS PACKS TOUT EN UN"}</p>
                <a href="{$link->getCategoryLink(100)|escape:'html':'UTF-8'}"
                    style="background-image: url('{$urls.img_url}encart-packs.jpg')" class="width1 bannerImg"></a>
            </div>
        </div>
        <div class="colMenu">
            <div class="blockBanner">
                <p class="titleRubrique">{l s="NOUVEAUTES"}</p>
                <div class="width1 bannerImg bannerCustom">
                        {assign var=bannerNewPrinter value=CMS::getCMSContent(183, $langID, true)}
                        {$bannerNewPrinter.content nofilter}
                    </div>
                </div>
            </div>
        </div> *}
    </div>
{/if}