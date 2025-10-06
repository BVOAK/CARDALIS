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

<nav class="position-static hidden-md-down wrapper" id="menuHeader" role="navigation">
    <ul class="level01">
        {foreach from=$categoriesMenu.children item=cat}
            {foreach from=$cat.children item=subCatNiv1}
                <li class="mainCategory" id="id{$subCatNiv1.id}">
                    <a class="link" href="{$subCatNiv1.link}">
                        {* WARNING same content on the line 90 *}
                        {if $subCatNiv1.id == 92 }
                            {l s="Imprimante à badges"}
                        {elseif $subCatNiv1.id == 120 }
                            {l s="Ruban encre"}
                        {elseif $subCatNiv1.id == 137 }
                            {l s="Carte et badge"}
                        {elseif $subCatNiv1.id == 171 }
                            {l s="Porte-badge"}
                        {elseif $subCatNiv1.id == 343 }
                            {l s="Tour de cou"}
                        {elseif $subCatNiv1.id == 344 }
                            {l s="Bracelet"}
                        {elseif $subCatNiv1.id == 208 }
                            {l s="RFID"}
                        {elseif $subCatNiv1.id == 357 }
                            {l s="Lecteur"}
                        {elseif $subCatNiv1.id == 402 }
                            <span>{l s="Écoresponsable"}</span>
                        {elseif $subCatNiv1.id == 338 }
                            <span>{l s="Service impression"}</span>
                        {elseif $subCatNiv1.id == 422 }
                            <span>{l s="Déstockage"}</span>
                        {/if}
                    </a>
                    {include file='menu/submenu92.tpl'}
                    {include file='menu/submenu120.tpl'}
                    {include file='menu/submenu137.tpl'}
                    {include file='menu/submenu171.tpl'}
                    {include file='menu/submenu343.tpl'}
                    {include file='menu/submenu344.tpl'}
                    {include file='menu/submenu208.tpl'}
                    {include file='menu/submenu109.tpl'}
                    {include file='menu/submenu338.tpl'}
                    {include file='menu/submenu357.tpl'}
                    {include file='menu/submenu402.tpl'}
                </li>
            {/foreach}
        {/foreach}
    </ul>
</nav>