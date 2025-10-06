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
  <div class="panel trial-confirm">
    <div class="confirm-message">
      <i class="icon-check-circle mb4"></i>
      <p>
        {if $invitesCount > 1}
            {{l s='Your request is confirmed.[br]We will proceed to send your [b][nb][/b] invites.' mod='trustedshopsintegration'}|totlreplace:['[nb]' => $invitesCount|escape:'htmlall':'UTF-8']}
        {else}
           {{l s='Your request is confirmed.[br]We will proceed to send your invite.' mod='trustedshopsintegration'}|totlreplace:['[nb]' => $invitesCount|escape:'htmlall':'UTF-8']}
        {/if}
        
      </p>
    </div>

    {if $trial == 'TRIAL'}
      <div class="trial-footer clearfix">
        <div class="left">
          <i class="icon-home"></i>
          <p>{l s='Go back to the home page.' mod='trustedshopsintegration'}</p>
          <a href="{$adminTsUrl.home|escape:'htmlall':'UTF-8'}" class="btn btn-primary">{l s='home' mod='trustedshopsintegration'}</a>
        </div>
        <div class="right">
          <i class="icon-desktop"></i>
          <p>{{l s='Continue the journey[br]and configure your Service Reviews.' mod='trustedshopsintegration'}|totlreplace}</p>
          <a href="{$adminTsUrl.site|escape:'htmlall':'UTF-8'}" class="btn btn-primary">{l s='Service Reviews' mod='trustedshopsintegration'}</a>
        </div>
      </div>
    {else}
      <div class="panel-footer panel-footer-sm clearfix">
        <a href="{$adminTsUrl.home|escape:'htmlall':'UTF-8'}" class="btn btn-default pull-right">{l s='Close' mod='trustedshopsintegration'}</a>
      </div>
    {/if}
  </div>
{/block}
