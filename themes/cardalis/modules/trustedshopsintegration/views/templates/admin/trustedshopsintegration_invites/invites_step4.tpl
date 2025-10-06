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
  {include file="../_partials/breadcrumb.tpl" step=4}

  <div class="panel">
    <div class="panel-heading">
      <i class="icon-send"></i> {l s='Send invite emails' mod='trustedshopsintegration'}
    </div>

    <p class="h3 mt3 mb3">{$invites|count} 
        {if $invites|count > 1}
            {{l s='invites are ready to be sent.' mod='trustedshopsintegration'}|totlreplace}
        {else}
            {{l s='invite are ready to be sent.' mod='trustedshopsintegration'}|totlreplace}
        {/if}</p>
        
{if $invites|count > 1}
    <p>{{l s='By clicking on the "Send" button, we will process your [b][nb] invites[/b] based on the settings you have just configured and ask your past customers to write a review. Go back to the previous step to edit your settings or click on send.' mod='trustedshopsintegration'}|totlreplace:['[nb]' => $invites|count]}</p>
{else} 
    <p>{{l s='By clicking on the "Send" button, we will process your [b]invite[/b] based on the settings you have just configured and ask your past customers to write a review. Go back to the previous step to edit your settings or click on send.' mod='trustedshopsintegration'}|totlreplace:['[nb]' => $invites|count]}</p>
{/if}
    <form method="POST">
      <input type="hidden" name="invites_step" value="step5" />
      <input type="hidden" name="retrieve_reviews" value="{$retrieve_reviews|escape:'htmlall':'UTF-8'}" />
      <input type="hidden" name="orders_last" value="{$orders_last|escape:'htmlall':'UTF-8'}" />
      {foreach from=$payments item=payment}
        <input type="hidden" name="payments[]" value="{$payment|escape:'htmlall':'UTF-8'}" />
      {/foreach}
      {foreach from=$invites item=invite}
        <input type="hidden" name="invites[]" value="{$invite|escape:'htmlall':'UTF-8'}" />
      {/foreach}

      <div class="panel-footer">
        <a class="btn btn-default" data-history-back="step3"><i class="process-icon-next icon-rotate-180"></i> {l s='Previous' mod='trustedshopsintegration'}</a>
        <button type="submit" class="btn btn-primary pull-right" name="submit_step"><i class="process-icon-send"></i> {l s='Send' mod='trustedshopsintegration'}</button>
      </div>

    </form>
  </div>
{/block}
