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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div class="trustedshops-back">
  <div class="main-menu-wrapper clearfix">
    {include file="../_partials/menu.tpl"}
  </div>

  <div class="content-wrapper full-width">
    {block name="content"}
      <div class="alert alert-info">
        <p>
          {{l s='Before accessing the module, you need to associate your Trusted Shops IDs with the proper Prestashop shops and languages.' mod='trustedshopsintegration'}|totlreplace}<br>
          {{l s='If your Trusted Shops IDs were to change, we would prompt you to associate them again.' mod='trustedshopsintegration'}|totlreplace}
        </p>
        <p>{{l s='You can go back to this page anytime, by clicking the [b]configure my shops[/b] button.' mod='trustedshopsintegration'}|totlreplace}</p>
      </div>

      {$content|escape:'quotes':'UTF-8'}
    {/block}
  </div>
</div>
