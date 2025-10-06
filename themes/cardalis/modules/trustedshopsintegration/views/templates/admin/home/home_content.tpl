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

<div class="home home-content">
  <div class="container-fluid">
    <div class="row">

      <div class="col-xs-12 col-sm-8">
        <div class="home-left-block">
          <h1>{{l s='Welcome back' mod='trustedshopsintegration'}|totlreplace} {$employee->firstname|default:''|escape:'htmlall':'UTF-8'} {$employee->lastname|default:''|escape:'htmlall':'UTF-8'}</h1>
          <p>{{l s='This is an overview of your settings. You can always see which features of the module you have already configured on this page.' mod='trustedshopsintegration'}|totlreplace}</p>
          <p>{{l s='If you have any trouble configuring our module, feel free to call us at :' mod='trustedshopsintegration'}|totlreplace}</p>
          <a href="tel:{get_multilang_var varName='phone-number'}" class="support-phone v-align"><i class="icon-phone"></i> <span>{get_multilang_var varName='phone-number'}</span></a>
        </div>
      </div>

      <div class="col-xs-12 col-sm-4">
        <ul class="home-right-block">

          <li data-toggle-wizard="site">
            <p>{{l s='Display Trustbadge' mod='trustedshopsintegration'}|totlreplace}</p>
            {if $tsconfig->display_trustbadge}
              <span class="progress-status text-success v-align"><span>{l s='Enabled' mod='trustedshopsintegration'}</span> <i class="icon-ok-sign"></i></span>
            {else}
              <span class="progress-status v-align"><span>{l s='Disabled' mod='trustedshopsintegration'}</span> <i class="icon-remove"></i></span>
            {/if}
          </li>

          <li data-toggle-wizard="invites">
            <p>{l s='Request reviews' mod='trustedshopsintegration'}</p>
            {if $tsconfig->trigger_reviews_active}
              <span class="progress-status text-success v-align"><span>{l s='Enabled' mod='trustedshopsintegration'}</span> <i class="icon-ok-sign"></i></span>
            {else}
              <span class="progress-status v-align"><span>{l s='Disabled' mod='trustedshopsintegration'}</span> <i class="icon-remove"></i></span>
            {/if}
          </li>

          <li data-toggle-wizard="products">
            <p>{l s='Collect product reviews' mod='trustedshopsintegration'}</p>
            {if $tsconfig->collect_reviews}
              <span class="progress-status text-success v-align"><span>{l s='Enabled' mod='trustedshopsintegration'}</span> <i class="icon-ok-sign"></i></span>
            {else}
              <span class="progress-status v-align"><span>{l s='Disabled' mod='trustedshopsintegration'}</span> <i class="icon-remove"></i></span>
            {/if}
          </li>

          <li data-toggle-wizard="site">
            <p>{l s='Display reviews sticker' mod='trustedshopsintegration'}</p>
            {if $tsconfig->display_shop_reviews}
              <span class="progress-status text-success v-align"><span>{l s='Enabled' mod='trustedshopsintegration'}</span> <i class="icon-ok-sign"></i></span>
            {else}
              <span class="progress-status v-align"><span>{l s='Disabled' mod='trustedshopsintegration'}</span> <i class="icon-remove"></i></span>
            {/if}
          </li>
        </ul>
      </div>

    </div>
  </div>
</div>
