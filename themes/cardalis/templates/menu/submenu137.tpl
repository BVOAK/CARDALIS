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

{* ID 137 *}
{if $subCatNiv1.id == 137}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper">
            <div class="colMenu col-md-2">
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 138}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$subCatNiv2.link}"
                                        class="{if empty($subCatNiv2.children)}noChild{/if} titleRubrique">{l s="à imprimer"}</a>
                                </li>
                                <li><a href="{$link->getCategoryLink(139)|escape:'html':'UTF-8'}">PVC blanc</a></li>
                                <li><a href="{$link->getCategoryLink(141)|escape:'html':'UTF-8'}">PVC couleur</a></li>
                                <li><a href="{$link->getCategoryLink(140)|escape:'html':'UTF-8'}">Piste magnétique</a></li>
                                <li><a href="{$link->getCategoryLink(142)|escape:'html':'UTF-8'}">Perforées et sécables</a></li>
                                <li><a href="{$link->getCategoryLink(143)|escape:'html':'UTF-8'}">Adhésives</a></li>
                                <li><a href="{$link->getCategoryLink(144)|escape:'html':'UTF-8'}">Cartonnées</a></li>
                                {* {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach} *}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 145}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$link->getCategoryLink(145)|escape:'html':'UTF-8'}"
                                        class="titleRubrique {if empty($subCatNiv2.children)}noChild{/if}">{$subCatNiv2.name}</a>
                                </li>
                                {* {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach} *}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 151}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$subCatNiv2.link}"
                                        class="titleRubrique noChild">{l s="Cartes RFID MIFARE"}</a>
                                </li>
                                {* {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach} *}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
                {* {foreach from=$subCatNiv1.children item=subCatNiv2}

                    {if $subCatNiv2.id == 308}
                                    <div class="listMenu">
                                        <ul>
                                            <li class="subCatNiv2"><a href="{$subCatNiv2.link}"
                                                    class="titleRubrique 
                        {if empty($subCatNiv2.children)}noChild
                        {/if}">
                        {l s="Etiquettes RFID"}</a>
                                            </li>

                        {foreach from=$subCatNiv2.children item=subCatNiv3}
                                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>

                        {/foreach}
                                        </ul>
                                    </div>

                    {/if}

                {/foreach} *}
                {foreach from=$subCatNiv1.children item=subCatNiv2}
                    {if $subCatNiv2.id == 220}
                        <div class="listMenu">
                            <ul>
                                <li class="subCatNiv2"><a href="{$subCatNiv2.link}"
                                        class="titleRubrique noChild">{$subCatNiv2.name}</a>
                                </li>
                                {* {foreach from=$subCatNiv2.children item=subCatNiv3}
                                    <li class="subCatNiv3"><a href="{$subCatNiv3.link}">{$subCatNiv3.name}</a></li>
                                {/foreach} *}
                            </ul>
                        </div>
                    {/if}
                {/foreach}
            </div>
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
                        <a href="{$link->getCategoryLink(151)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-cartes-rfid-208.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">Cartes RFID</span>
                        </a>
                    </div>
                    <div class="blockBanner">
                        <a href="{$link->getCategoryLink(220)|escape:'html':'UTF-8'}"
                            style="background-image: url('{$urls.img_url}encart-etiquettes-rfid-208.jpg')"
                            class="width1 bannerImg">
                            <span class="titleCat">ÉTIQUETTES RFID</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/if}