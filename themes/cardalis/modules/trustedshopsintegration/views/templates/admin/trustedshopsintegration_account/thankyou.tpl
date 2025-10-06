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
  <div class="errors">
    {if isset($errors) && $errors|@count > 0}
      {foreach from=$errors item=error}
        <span>{$error|escape:'htmlall':'UTF-8'}</span><br/>
      {/foreach}
    {/if}
  </div>

  <div class="panel panel-thank-you">
    <div class="clearfix">
      <div class="container text-center">
        <div class="confirm-message">
          <i class="icon-thumbs-up mb4"></i>
          <p>
            {l s='Thank you for signing up.' mod='trustedshopsintegration'}
          </p>
        </div>

        <div class="message">
          <p>
            {l s='Just one more step and you are ready to start.' mod='trustedshopsintegration'}
          </p>

          <p class="list">
            <i class="icon-check-circle"></i>
            {l s='We\'ve sent you an email.' mod='trustedshopsintegration'}
          </p>

          <p class="list">
            <i class="icon-envelope"></i>
            {l s='Please go to your mailbox and click on the *activation button* to activate your account.' mod='trustedshopsintegration'}
          </p>

          <p class="small">
            {{l s='Didn‘t get any email from us?[br]Please check your spam folder or contact us at' mod='trustedshopsintegration'}|replace:'[br]':'<br>'} {get_multilang_var varName='phone-number-test'}.
          </p>
        </div>
      </div>
    </div>

    <div class="panel-footer panel-footer-sm clearfix">
      <a href="{$adminTsUrl.home|escape:'htmlall':'UTF-8'}&ts_logout=true" class="btn btn-link">{l s='Log out' mod='trustedshopsintegration'}</a>
    </div>
  </div>
</div>
