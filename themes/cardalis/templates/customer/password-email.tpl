{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file='page.tpl'}

{block name='breadcrumb'}{/block}

{block name='page_title'}
  <div class="headerTitle">
    <h1 class="h1 mainTitle">{l s='Forgot your password?' d='Shop.Theme.Customeraccount'}</h1>
  </div>
{/block}

{block name='page_content'}
<div class="wrapper">
  <form action="{$urls.pages.password}" method="post">

    <ul class="ps-alert-error">
        {foreach $errors as $error}
          <li class="item">
            <p>{$error}</p>
          </li>
        {/foreach}
    </ul>

    <p>{l s='Please enter the email address you used to register. You will receive a temporary link to reset your password.' d='Shop.Theme.Customeraccount'}</p>
    <section class="form-fields">
      <div class="form-group row">
        <label class="form-control-label required">{l s='Email address' d='Shop.Forms.Labels'}</label>
          <input type="email" name="email" id="email" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}" class="form-control" required>
      </div>
    <div class="form-group captcha-fields">{hook h='displayPaCaptcha' posTo='pwd_recovery'}</div></section>

    <footer class="form-footer text-xs-center">
      <button class="form-control-submit btn btn-primary" name="submit" type="submit">
        {l s='Send reset link' d='Shop.Theme.Actions'}
      </button>
    </footer>

  </form>
</div>
{/block}

{block name='page_footer'}
<div class="wrapper">
  <a href="{$urls.pages.my_account}" class="account-link">
    <i class="material-icons">&#xE5CB;</i>
    <span>{l s='Back to login' d='Shop.Theme.Actions'}</span>
  </a>
</div>
{/block}
