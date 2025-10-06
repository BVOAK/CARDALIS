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

{if !isset($currentPage) || empty($currentPage)}
  {assign var="currentPage" value=null}
{/if}

<!-- Toggle get grouped for better mobile display -->
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu-collapse"
        aria-expanded="false">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
</button>

<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="main-menu-collapse" data-main-menu>
    <ul class="main-menu nav navbar-nav">
        <li {if $currentPage == 'home'}class="active"{/if}><a href="{$adminTsUrl.home|escape:'htmlall':'UTF-8'}"><i class="icon-home"></i> {l s='Home' mod='trustedshopsintegration'}</a></li>
        <li {if $currentPage == 'invites'}class="active"{/if} data-wizard="invites"><a href="{$adminTsUrl.invites|escape:'htmlall':'UTF-8'}"><i class="icon-envelope"></i> {l s='Invites' mod='trustedshopsintegration'}</a></li>
        <li {if $currentPage == 'site'}class="active"{/if} data-wizard="site"><a href="{$adminTsUrl.site|escape:'htmlall':'UTF-8'}"><i class="icon-desktop"></i> {l s='Service reviews' mod='trustedshopsintegration'}</a></li>
        <li {if $currentPage == 'products'}class="active"{/if} data-wizard="products"><a href="{$adminTsUrl.products|escape:'htmlall':'UTF-8'}"><i class="icon-star"></i> {l s='Product reviews' mod='trustedshopsintegration'}</a></li>
    </ul>
</div>
