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


{extends file='../layout.tpl'}

{block name="content"}
  {include file="../_partials/breadcrumb.tpl" step=2}

  <div class="panel">
    <div class="panel-heading">
      <i class="icon-envelope"></i> {l s='Preview invite email' mod='trustedshopsintegration'}
    </div>

    <form method="POST">

      <div class="form-group clearfix">
        <div class="alert alert-info">
          {l s='If you wish to edit the invite template, e.g. by adding your logo, please go directly to your My Trusted Shops account. Your changes will be saved and visible here.' mod='trustedshopsintegration'}
        </div>
      </div>

      <div class="form-group clearfix">
        <label class="control-label col-lg-3">{l s='This is how your invite email will look like' mod='trustedshopsintegration'}</label>
        <div class="col-lg-9">
          {$emailContent|escape:'quotes':'UTF-8'}
        </div>
      </div>

      <input type="hidden" name="invites_step" value="step3" />
      <input type="hidden" name="retrieve_reviews" value="{$retrieve_reviews|escape:'htmlall':'UTF-8'}" />
      <input type="hidden" name="orders_last" value="{$orders_last|escape:'htmlall':'UTF-8'}" />
      {foreach from=$payments item=payment}
        <input type="hidden" name="payments[]" value="{$payment|escape:'htmlall':'UTF-8'}" />
      {/foreach}

      <div class="panel-footer">
        <a class="btn btn-default" data-history-back="step1"><i class="process-icon-next icon-rotate-180"></i> {l s='Previous' mod='trustedshopsintegration'}</a>
        <button type="submit" class="btn btn-primary pull-right" name="submit_step"><i class="process-icon-next"></i> {l s='Next' mod='trustedshopsintegration'}</button>
      </div>

    </form>
  </div>
{/block}
