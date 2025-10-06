{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2017 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div class="trustedshops-back">
    <div class="main-menu-wrapper clearfix">
        {include file="../_partials/menu.tpl"}
    </div>

    <div class="content-wrapper">
        {* Left column - main content *}
        <div class="left-column">
            {block name="content"}{/block}
        </div>

        {* Right column *}
        <div class="right-column">
              {* User block *}
              {include file="../_partials/user-block.tpl"}

              {* Onboarding block *}
              {if $trial == 'TRIAL'}
                  {include file="../_partials/onboarding-block.tpl"}
              {/if}

              {* Logo *}
              <div class="logo-block">
                  <img class="logo" src="{$ts_img_dir|escape:'htmlall':'UTF-8'}logo_trusted-shops.png"
                       alt="{l s='Trusted Shops logo' mod='trustedshopsintegration'}">
              </div>
        </div>
    </div>
</div>
