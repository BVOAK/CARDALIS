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
  <div class="panel panel-sign-in">
    {* Sign in *}
    <div class="sign-in clearfix" {if isset($ts_page) && ($ts_page == "create" || $ts_page == "expiredTrial")}style="display: none;"{/if} data-sign-in>
      {* Form *}
      <form method="POST">
        <img class="logo" src="{$ts_img_dir|escape:'htmlall':'UTF-8'}logo_trusted-shops.png" alt="Trusted Shops logo">

        <h2 class="text-center">{{l s='Sign up' mod='trustedshopsintegration'}|totlreplace}</h2>

        <p class="small text-center mt3 mb3">
          {{l s='No credit card required.' mod='trustedshopsintegration'}|totlreplace}<br/>
          {{l s='Try it for free! Cancel or upgrade anytime.' mod='trustedshopsintegration'}|totlreplace}
        </p>

        <a class="btn btn-block btn-cta mb4" href="javascript:void(0);" data-toggle-trial>{{l s='Start free trial' mod='trustedshopsintegration'}|totlreplace}</a>

        <hr class="or" data-text="{l s='Or' mod='trustedshopsintegration'}">

        <p class="small text-center mt3 mb3">
          {{l s='Do you already have an account?' mod='trustedshopsintegration'}|totlreplace}<br/>
          {{l s='Please insert your "My Trusted Shops" credentials:' mod='trustedshopsintegration'}|totlreplace}
        </p>

        <div class="form-group">
          <label class="label-control">{l s='Email address' mod='trustedshopsintegration'}</label>
          <input class="form-control" type="email" name="ts_login_email" value="" />
        </div>

        <div class="form-group mb3">
          <label class="label-control">{l s='Password' mod='trustedshopsintegration'}</label>
          <input class="form-control" type="password" name="ts_login_password" value="" />
          <div class="help-block text-center">
            <a href="{get_multilang_var varName='forgotten-password-link'}" target="_blank">{{l s='Forgot your password?' mod='trustedshopsintegration'}|totlreplace}</a>
          </div>
        </div>

        <input class="btn btn-primary btn-block" type="submit" name="submit_ts_infos" value="{{l s='Sign in' mod='trustedshopsintegration'}|totlreplace}" />
      </form>

      {* Aside image + contact *}
      <aside class="aside pos-a">
        <div class="pos-r">
          <img src="{$ts_img_dir|escape:'htmlall':'UTF-8'}{get_multilang_var varName='sign-in-image'}" alt="Icone connexion">

          <div class="bubble">
            <span>{{l s='Call us on:' mod='trustedshopsintegration'}|totlreplace}</span><br>
            <span><i class="icon icon-phone"></i>{get_multilang_var varName='phone-number-test'}</span>
          </div>

          <div class="info">
            <span class="title">
              {{l s='Trusted Shops Reviews' mod='trustedshopsintegration'}|totlreplace}
            </span>
            <span class="baseline">
              {{l s='The best way to display your customers reviews on the internet and in-store.' mod='trustedshopsintegration'}|totlreplace}
            </span>
          </div>
        </div>
      </aside>
    </div>

    {* Free trial modal *}
    <div class="sign-up-trial pos-r clearfix" {if !isset($ts_page) || $ts_page != "create"}style="display: none;"{/if} data-trial>
      <form method="POST">
        <i class="icon icon-close btn-close" data-toggle-trial></i>
        <img class="logo" src="{$ts_img_dir|escape:'htmlall':'UTF-8'}logo_trusted-shops.png" alt="Trusted Shops logo">

        <h2 class="text-center">{{l s='Try Trusted Shops[br] Verified Reviews.[br] For 14 days. For free!' mod='trustedshopsintegration'}|totlreplace}</h2>
        <p class="small text-center mt3 mb3">
          {{l s='At Trusted Shops, we’ve made it simple and quick to collect, share and engage with both service and product reviews, online and offline.' mod='trustedshopsintegration'}|totlreplace}<br/>
          {{l s='Verified Reviews is the customer feedback platform helping retailers and online merchants to improve review collection and customer engagement.' mod='trustedshopsintegration'}|totlreplace}
          {{l s='Invite up to 1,000 existing customers and quickly get your first reviews. No credit card required.' mod='trustedshopsintegration'}|totlreplace}
          {{l s='Try it for free. Cancel or upgrade anytime.' mod='trustedshopsintegration'}|totlreplace}
        </p>

        <div class="form-group">
          <label class="label-control">{l s='Lastname' mod='trustedshopsintegration'}</label>
          <input class="form-control is_required validate" data-validate="isName" type="text" name="free_trial_lastname" value="{$smarty.post.free_trial_lastname|default:$employee->lastname|default:''|escape:'htmlall':'UTF-8'}" />
        </div>

        <div class="form-group">
          <label class="label-control">{l s='Firstname' mod='trustedshopsintegration'}</label>
          <input class="form-control is_required validate" data-validate="isName" type="text" name="free_trial_firstname" value="{$smarty.post.free_trial_firstname|default:$employee->firstname|default:''|escape:'htmlall':'UTF-8'}" />
        </div>

        <div class="form-group">
          <label class="label-control">{l s='Phone number' mod='trustedshopsintegration'}</label>
          <input class="form-control is_required validate" data-validate="isPhoneNumber" type="phone" name="free_trial_phone" value="{$smarty.post.free_trial_phone|default:''|escape:'htmlall':'UTF-8'}" />
        </div>

        <div class="form-group">
          <label class="label-control">{l s='Email address' mod='trustedshopsintegration'}</label>
          <input class="form-control is_required validate" data-validate="isEmail" type="email" name="free_trial_email" value="{$smarty.post.free_trial_email|default:$employee->email|default:''|escape:'htmlall':'UTF-8'}" />
        </div>

        <div class="form-group">
          <label class="label-control">{l s='Password' mod='trustedshopsintegration'}</label>
          <input class="form-control is_required validate" data-validate="isPasswd" type="password" name="free_trial_password" value="{$smarty.post.free_trial_password|default:''|escape:'htmlall':'UTF-8'}" />
          <div class="help-block small">
            {l s='Your password must contain at least 6 characters, 1 uppercase and 1 digit.' mod='trustedshopsintegration'}
          </div>
        </div>

        <div class="form-group">
          <label class="label-control">{l s='Company name' mod='trustedshopsintegration'}</label>
          <input class="form-control is_required validate" data-validate="isGenericName" type="text" name="free_trial_company" value="{$smarty.post.free_trial_company|default:$current_shop_name|default:''|escape:'htmlall':'UTF-8'}" />
        </div>

        {if $possibleShopsLangs|count == 1}
        <input type="hidden" name="free_trial_shop_lang" value="{foreach from=$possibleShopsLangs item=possibleShopsLang}{$possibleShopsLang.id_shop|escape:'htmlall':'UTF-8'}_{$possibleShopsLang.id_lang|escape:'htmlall':'UTF-8'}{/foreach}" />
        {else}
        <div class="form-group">
            <label class="control-label">{l s='PrestaShop Shop / Language' mod='trustedshopsintegration'}</label>
            <select name="free_trial_shop_lang">
                {foreach from=$possibleShopsLangs item=possibleShopsLang}
                <option value="{$possibleShopsLang.id_shop|escape:'htmlall':'UTF-8'}_{$possibleShopsLang.id_lang|escape:'htmlall':'UTF-8'}">{$possibleShopsLang.shop_name|escape:'htmlall':'UTF-8'} - {$possibleShopsLang.lang_name|escape:'htmlall':'UTF-8'}</option>
                {/foreach}
            </select>
        </div>
        {/if}
        <p class="small mt3 mb3">
          {{l s='By clicking on [b]Start free trial[/b] I agree to the [a-href][a-txt]terms and conditions[/a].' mod='trustedshopsintegration'}|totlreplace:['@href@' => {get_multilang_var varName='cgu-link'}, '@target@' => 'target="_blank"']}
        </p>

        <div class="form-group mb0">
          <input class="btn btn-primary btn-block mb2" type="submit" name="submit_free_trial" value="{l s='Start free trial now' mod='trustedshopsintegration'}" />
          <div class="help-block text-center mb0">
            <a href="javascript:void(0);" data-toggle-trial>{{l s='I\'m already a member' mod='trustedshopsintegration'}|totlreplace}</a>
          </div>
        </div>

      </form>
    </div>

    {* Trial expired modal *}
    <div class="sign-up-trial pos-r clearfix" {if isset($ts_page) && $ts_page != "expiredTrial"}style="display: none;"{/if} data-expired>
      <form method="POST">
        <i class="icon icon-close btn-close" data-toggle-expired></i>
        <img class="logo" src="{$ts_img_dir|escape:'htmlall':'UTF-8'}logo_trusted-shops.png" alt="Trusted Shops logo">

        <h2 class="text-center">{{l s='Free trial expired' mod='trustedshopsintegration'}|totlreplace}</h2>

        <p class="text-center mt3 mb4">
          {{l s='You have reached the end of your 14-day free trial. We hope you enjoyed it.' mod='trustedshopsintegration'}|totlreplace}
        </p>

        <h2 class="text-center mb3">
          {{l s='What to do next:' mod='trustedshopsintegration'}|totlreplace}
        </h2>

        <ul>
          <li>
            <p>
              <b>{{l s='Subscribe' mod='trustedshopsintegration'}|totlreplace}</b> : {{l s='Select the most suitable offer and get in touch with us to complete your subscription.' mod='trustedshopsintegration'}|totlreplace}
            </p>
            <a href="{get_multilang_var varName='upgrade-link'}" target="_blank" class="btn btn-primary mt1">{{l s='Subscribe now' mod='trustedshopsintegration'}|totlreplace}</a>
          </li>

          <li class="mt4">
            <p>
              <b>{{l s='Talk to us' mod='trustedshopsintegration'}|totlreplace}</b> : {{l s='If you have a question or any specific requirements, let our experts provide you with a tailored answer or quotation.' mod='trustedshopsintegration'}|totlreplace}
            </p>
            <a href="{get_multilang_var varName='contact-link'}" target="_blank" class="btn btn-primary mt1">{{l s='Talk to us' mod='trustedshopsintegration'}|totlreplace}</a>
          </li>
        </ul>
      </form>
    </div>
  </div>
</div>
