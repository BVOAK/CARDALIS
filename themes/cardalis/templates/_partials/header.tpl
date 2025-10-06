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

{block name='header_nav'}
    <nav class="header-nav">
        <div class="container-fluid">
            <div class="row">
                {hook h='displayNav1'}
                {* {if $blockInfosBannerHeader->active == "1"}
                    <div id="BannerInfos">
                        {$blockInfosBannerHeader->content nofilter}
                    </div>
                {/if} *}
            </div>
        </div>
    </nav>
    {* {hook h='CETemplate' id=25} *}
{/block}

{block name='header_top'}
    <div class="container-fluid position-static pl-lg-3 pr-lg-3 p-0">
        <div class="row wrapper">
            <div id="blockHeader1" class="d-flex justify-content-end">
                <div class="blockContact hidden-sm-down">
                    <div id="blockMenuSupport">
                        <ul class="menuSupport">
                            <li>
                                <a class="hidden-md-down d-flex" href="{$link->getPageLink('contact', true)}"><i
                                        class="fa fa-envelope" aria-hidden="true"></i> {l s="Contact"}</a>
                            </li>
                            <li>
                                <a class="hidden-md-down d-flex" href="/blog" target="_blank"><i class="fa fa-rss"
                                        aria-hidden="true"></i> {l s="Blog"}</a>
                            </li>
                            <li>
                                <a class="hidden-md-down d-flex bgWhite cBlue"
                                    href="{$link->getCMSLink('7', 'support-technique-cardalis')}">
                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                    {l s="Support"}</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="blockContact hidden-lg-up">
                    <div class="contentTel">
                        <a href="tel:0422140086"><span class="tel">{$shop.phone}</span></a>
                    </div>
                </div>
                <div id="blockAccountCart" class="hidden-lg-up">
                    {widget name="ps_customersignin"}
                    {widget name="ps_shoppingcart"}
                </div>
            </div>

            <div id="blockHeader2">
                <div class="d-flex align-items-center justify-content-between w-100" id="blockHeaderTopLogo">
                    <button type="button" class="navbar-toggle toggle-menu menu-top push-body hidden-lg-up">
                        <i class="material-icons closed">&#xE5D2;</i>
                        <i class="material-icons opened">&#xE14C;</i>
                    </button>
                    <div id="blockLogo">
                        <a href="{$urls.base_url}" class="btLogo">
                            {hook h='CETemplate' id=26}
                            {* <img class="logo img-responsive" src="{$urls.img_url}logoCardalis.svg" alt="{$shop.name}"> *}
                            {* <img class="logo img-responsive" src="{$urls.img_url}logoCardalisChristmas.svg" alt="{$shop.name}"> *}
                        </a>
                        {* <span
                            class="baselineLogo cWhite">{l s='Parce que chaque personne est unique' d='Shop.Theme.Actions'}</span> *}
                    </div>
                    <div class="contentTel hidden-md-down">
                        <span class="hidden-md-down">{l s='Service client' d='Shop.Theme.Actions'} : </span>
                        <a href="tel:0422140086" class="tel">{$shop.phone}</span></a>
                    </div>
                    <div class="d-lg-block d-none w-100">
                        {widget name="ps_searchbarjqauto"}
                    </div>
                    <div id="blockAccountCart" class="hidden-md-down">
                        {widget name="ps_customersignin"}
                        {widget name="ps_shoppingcart"}
                    </div>
                    <div class="hidden-lg-up">
                        <a href="" class="btSearchMobile">
                            <i class="material-icons search">&#xE8B6;</i>
                        </a>
                    </div>
                </div>
                <div class="d-lg-none d-md-block w-100" id="searchWidgetMobile">
                    {widget name="ps_searchbarjqauto"}
                </div>
                {include file='menu/menu-mobile.tpl'}
            </div>
            {*{hook h='displayTop'}*}
        </div>
        <div class="row d-lg-flex d-none" id="sectionMenu">
            {* <div id="blockLogoScroll">
                <a href="{$urls.base_url}" class="btLogo">
                    <img class="logo img-responsive" src="{$urls.img_url}logoCardalis.svg" alt="{$shop.name}">
                </a>
                <span class="baselineLogo cWhite">{l s='Parce que chaque personne est unique' d='Shop.Theme.Actions'}</span>
            </div> *}
            {include file='menu/menu.tpl'}
        </div>
    </div>

    {*<div id="blockInfoHeader">*}
    {*Attention : Nos bureaux seront fermés le soir du 29 mai jusqu’au lundi  3 juin à 09h00.  Toutes les commandes reçues sur notre site à partir de 14H00 mercredi 29 mai seront traitées et expédiées à partir de lundi 3 juin selon la disponibilité de nos stocks.  Merci de votre compréhension.*}
    {*</div>*}

    {hook h='displayNavFullWidth'}
{/block}