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
<div class="user-block block">
    <div class="user-header">
        <div class="holder clearfix">
            <span><i class="icon-user"></i> <span>{$employee->firstname|default:''|escape:'htmlall':'UTF-8'} {$employee->lastname|default:''|escape:'htmlall':'UTF-8'}</span></span>
            <a href="{$adminTsUrl.account|escape:'htmlall':'UTF-8'}&ts_logout=true" class="logout" title="{l s='logout' mod='trustedshopsintegration'}"><i class="icon-signout"></i></a>
        </div>
    </div>

    <div class="user-content">
        <div class="holder">
            <label for="user-select">
                <span data-toggle="tooltip" title="{l s='Select the shop you want to configure. If you are missing one in the list, please go to \"Configure my shops\".' mod='trustedshopsintegration'}">
                    {l s='My shops' mod='trustedshopsintegration'} <i class="icon-info-sign"></i>
                </span>
            </label>
            <select name="id_ts_config" id="id_ts_config" class="custom-select">
                {foreach from=$TSIDs item=TSID}
                    <option value="{$TSID.id_ts_config|escape:'htmlall':'UTF-8'}"{if $TSID.id_ts_config == $tsconfig->id_ts_config|default:''} selected="selected"{/if}>{$TSID.shopname|escape:'htmlall':'UTF-8'} ({$TSID.langname|escape:'htmlall':'UTF-8'})</option>
                {/foreach}
            </select>
            <a href="{$adminTsUrl.configuration|escape:'htmlall':'UTF-8'}" class="btn btn-default btn-block btn-sm mb1">
                <i class="icon-gear"></i> <span>{l s='Configure my shops' mod='trustedshopsintegration'}</span>
            </a>
            <div class="link-wrapper">
                <a href="{get_multilang_var varName='seo-profile-link' langID=$tsconfig->id_lang|escape:'htmlall':'UTF-8' tsid=$tsconfig->id_trusted_shops|escape:'htmlall':'UTF-8'}" target="_blank">{l s='My SEO profile' mod='trustedshopsintegration'}</a>
            </div>
        </div>
    </div>

    <div class="user-footer">
        <div class="holder">
            {if $trial == 'TRIAL'}
                <p class="trial-title">{l s='Upgrade' mod='trustedshopsintegration'}</p>
            {/if}

            {if $trial == 'TRIAL'}
                {assign var='phoneType' value='phone-number-test'}
            {else}
                {assign var='phoneType' value='phone-number'}
            {/if}
            <a href="tel:{get_multilang_var varName=$phoneType}" class="trial-phone v-align"><i class="icon-phone"></i> <span>{get_multilang_var varName=$phoneType}</span></a>
        </div>
    </div>
</div>
