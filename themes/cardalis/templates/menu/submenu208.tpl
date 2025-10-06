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
{if $subCatNiv1.id == 208}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper">
            {* <div class="colMenu col-md-3">
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 209}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$subCatNiv2.link}" class="titleRubrique">{$subCatNiv2.name}</a>
                                </li>
                                {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 337}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$subCatNiv2.link}" class="titleRubrique">{$subCatNiv2.name}</a>
                                </li>
                                {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 357}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$subCatNiv2.link}" class="titleRubrique">{$subCatNiv2.name}</a>
                                </li>
                                {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
            </div> *}
            <div class="colMenu d-flex ">
                <div class="blockBanner">
                    <a href="{$link->getCategoryLink(151)|escape:'html':'UTF-8'}"
                        style="background-image: url('{$urls.img_url}encart-cartes-rfid-208.jpg')" class="width1 bannerImg">
                        <span class="titleCat">Cartes RFID</span>
                    </a>
                </div>

                <div class="blockBanner">
                    <a href="{$link->getCategoryLink(230)|escape:'html':'UTF-8'}"
                        style="background-image: url('{$urls.img_url}encart-bracelet-rfid-208.jpg')"
                        class="width1 bannerImg">
                        <span class="titleCat">Bracelets RFID</span>
                    </a>
                </div>
                <div class="blockBanner">
                    <a href="{$link->getCategoryLink(220)|escape:'html':'UTF-8'}"
                        style="background-image: url('{$urls.img_url}encart-etiquettes-rfid-208.jpg')"
                        class="width1 bannerImg">
                        <span class="titleCat">ÉTIQUETTES RFID</span>
                    </a>
                </div>
                <div class="blockBanner">
                    <a href="{$link->getCategoryLink(225)|escape:'html':'UTF-8'}"
                        style="background-image: url('{$urls.img_url}encart-portes-cles-rfid-208.jpg')"
                        class="width1 bannerImg">
                        <span class="titleCat">Porte-clés RFID</span>
                    </a>
                </div>
                <div class="blockBanner">
                    <a href="{$link->getCategoryLink(209)|escape:'html':'UTF-8'}"
                        style="background-image: url('{$urls.img_url}encart-lecteur-rfid-209.jpg')"
                        class="width1 bannerImg">
                        <span class="titleCat">Lecteurs RFID</span>
                    </a>
                </div>
            </div>
        </div>
{/if}