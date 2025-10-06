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

{* ID 120 *}
{if $subCatNiv1.id == 120}

    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block flex-wrap">
            {foreach from=$subCatNiv1.children item=subCatNiv2}
            <div class="colMenu">
                <div class="listMenu">
                    <ul>
                        <li class="subCatNiv2">
                            <a href="{$subCatNiv2.link}" class="titleRubrique brandLogo">
                                {if $subCatNiv2.id == 410 }
                                    <img src="{$urls.img_url}logo-pointman.png" alt="Logo PointMan" />
                                {elseif $subCatNiv2.id == 121 }
                                    <img src="{$urls.img_url}logo-datacard.jpg" alt="Logo Datacard" />
                                    {*{l s="consommables datacard"}*}
                                {elseif $subCatNiv2.id == 125 }
                                    <img src="{$urls.img_url}logo-evolis.jpg" alt="Logo Evolis" />
                                    {*{l s="consommables evolis"}*}
                                {elseif $subCatNiv2.id == 129 }
                                    <img src="{$urls.img_url}logo-fargo.jpg" alt="Logo Fargo" />
                                    {*{l s="consommables fargo hid"}*}
                                {elseif $subCatNiv2.id == 315 }
                                    <img src="{$urls.img_url}logo-idp.jpg" alt="Logo IDP" />
                                    {*{l s="consommables idp smart"}*}
                                {elseif $subCatNiv2.id == 300 }
                                    <img src="{$urls.img_url}logo-nisca.jpg" alt="Logo Nisca" />
                                    {*{l s="consommables nisca"}*}
                                {elseif $subCatNiv2.id == 133}
                                    <img src="{$urls.img_url}logo-zebra.jpg" alt="Logo Zebra" />
                                    {*{l s="consommables zebra"}*}
                                {elseif $subCatNiv2.id == 260}
                                    <img src="{$urls.img_url}logo-magicard.jpg" alt="Logo Magicard" /> 
                                    {*{l s="autres consommables"}*}
                                {elseif $subCatNiv2.id == 362}
                                    <img src="{$urls.img_url}logo-matica.png" alt="Logo Matica" /> 
                                {/if}
                            </a>
                        </li>
                        {foreach from=$subCatNiv2.children item=subCatNiv3}
                            <li class="subCatNiv3"><a href="{$subCatNiv3.link}" class="f13">{$subCatNiv3.name}</a></li>
                        {/foreach}
                    </ul>
                </div>
            </div>
            {/foreach}
        </div>
    </div>

{/if}