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

<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-top d-lg-none d-md-block" id="menuMobile">
    <div class="accordion" id="accordionMenuMobile">
        {foreach from=$categoriesMenu.children item=cat}
            {foreach from=$cat.children item=subCatNiv1}
                {if $subCatNiv1.id != 357 && $subCatNiv1.id != 338 && $subCatNiv1.id != 402}
                    <div class="d-flex" id="heading{$subCatNiv1.id}">
                        <button class="btnNiv1" data-toggle="collapse" data-target="#collapseId{$subCatNiv1.id}" aria-expanded="false" type="button" aria-controls="collapseId{$subCatNiv1.id}">
                            {if $subCatNiv1.id == 92 }
                                {l s="Imprimante à badges"}
                            {elseif $subCatNiv1.id == 120 }
                                {l s="Ruban à encre"}
                            {elseif $subCatNiv1.id == 137 }
                                {l s="Carte et badge"}
                            {elseif $subCatNiv1.id == 171 }
                                {l s="Porte-badge"}
                            {elseif $subCatNiv1.id == 343 }
                                {l s="Tour de Cou"}
                            {elseif $subCatNiv1.id == 344 }
                                {l s="Bracelet"}
                            {elseif $subCatNiv1.id == 208 }
                                {l s="RFID"}
                            {/if}
                            <i class="material-icons closed">&#xE5CF;</i> <i class="material-icons opened">&#xE5CE;</i>
                        </button>
                        <a href="{$subCatNiv1.link}" class="btnPlus"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
                    </div>
                {/if}
                {if $subCatNiv1.id != 357 && $subCatNiv1.id != 338 && $subCatNiv1.id != 402}
                    <ul class="collapse" id="collapseId{$subCatNiv1.id}" data-parent="#accordionMenuMobile" aria-labelledby="heading{$subCatNiv1.id}">
                        {foreach from=$subCatNiv1.children item=subCatNiv2}
                            <li class="subCatNiv2"><a href="{$subCatNiv2.link}" class="btnNiv2">{$subCatNiv2.name}</a></li>
                        {/foreach}
                    </ul>
                {/if}
            {/foreach}
        {/foreach}

        <div class="d-flex" id="heading357">
            <button class="btnNiv1" data-toggle="collapse" data-target="#collapseId357" aria-expanded="false" type="button" aria-controls="collapseId357">
            {l s="Lecteur"} <i class="material-icons closed">&#xE5CF;</i> <i class="material-icons opened">&#xE5CE;</i>
            </button>
            <a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}" class="btnPlus"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
        </div>
        <ul class="collapse" id="collapseId357" data-parent="#accordionMenuMobile" aria-labelledby="heading357">    
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}?q=Type+de+lecteur-Lecteur+sans+fil-Lecteur+%C3%A0+main" class="btnNiv2">{l s="Lecteur à main"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(357)|escape:'html':'UTF-8'}?q=Type+de+lecteur-Lecteur+de+pr%C3%A9sentation-Lecteur+fixe" class="btnNiv2">{l s="Lecteur fixe"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(337)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Lecteur de cartes"}</a></li>
        </ul>

        <div class="d-flex" id="heading402">
            <button class="btnNiv1 menuEco" data-toggle="collapse" data-target="#collapseId402" aria-expanded="false" type="button" aria-controls="collapseId402">
            {l s="Écoresponsable"} <img class="logo img-responsive" src="{$urls.img_url}label-ECO.png" width="20"> <i class="material-icons closed">&#xE5CF;</i> <i class="material-icons opened">&#xE5CE;</i>
            </button>
            <a href="{$link->getCategoryLink(402)|escape:'html':'UTF-8'}" class="btnPlus"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
        </div>
        <ul class="collapse" id="collapseId402" data-parent="#accordionMenuMobile" aria-labelledby="heading402">    
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(385)|escape:'html':'UTF-8'}#sectionTissuMatieres" class="btnNiv2">{l s="Bracelets écoresponsables"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(145)|escape:'html':'UTF-8'}#sectionCardEco" class="btnNiv2">{l s="Badges et cartes écologiques"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(405)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Tours de cou écologiques"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(406)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Porte-badges écologiques"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(407)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Boîtes de recyclage"}</a></li>
        </ul>

        <div class="d-flex" id="heading338">
            <button class="btnNiv1 menuCustom" data-toggle="collapse" data-target="#collapseId338" aria-expanded="false" type="button" aria-controls="collapseId338">
            {l s="Service impression"} <img class="logo img-responsive" src="{$urls.img_url}label-personnalisable.png" width="20"> <i class="material-icons closed">&#xE5CF;</i> <i class="material-icons opened">&#xE5CE;</i>
            </button>
            <a href="{$link->getCategoryLink(338)|escape:'html':'UTF-8'}" class="btnPlus"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
        </div>
        <ul class="collapse" id="collapseId338" data-parent="#accordionMenuMobile" aria-labelledby="heading338">    
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(145)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Cartes imprimées"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(341)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Tours de cou imprimés"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(369)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Bracelets imprimés"}</a></li>
            <li class="subCatNiv2"><a href="{$link->getCategoryLink(198)|escape:'html':'UTF-8'}" class="btnNiv2">{l s="Enrouleurs imprimés"}</a></li>
        </ul>
        
        <div class="otherLinks mt-4">
            <a class="btnNiv1" href="{$link->getPageLink('my-account', true)}">{l s="Compte client"}</a>
            <a class="btnNiv1" href="{$link->getCMSLink('7', 'support-technique-cardalis')}">{l s="Support"}</a>
            <a class="btnNiv1" href="https://blog.cardalis.fr">{l s="Blog"}</a>
            <a class="btnNiv1" href="{$link->getPageLink('contact', true)}">{l s="Contact"}</a>
        </div>

    </div>
</nav>