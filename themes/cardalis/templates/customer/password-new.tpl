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
    <h1 class="h1 mainTitle">{l s='Reset your password' d='Shop.Theme.Customeraccount'}</h1>
  </div>
{/block}

{block name='page_content'}
    <div class="wrapper" id="blockPasswordNew">
      <form action="{$urls.pages.password}" method="post">

        <section class="form-fields">

          <p class="title">
            <span>{l s='Email address: %email%' d='Shop.Theme.Customeraccount' sprintf=['%email%' => $customer_email|stripslashes]}</span>
          </p>

          <p class="label">
            <span>{l s='New password' d='Shop.Forms.Labels'}</span>
            <input type="password" data-validate="isPasswd" name="passwd" value="">
          </p>

          <p class="label">
            <span>{l s='Confirmation' d='Shop.Forms.Labels'}</span>
            <input type="password" data-validate="isPasswd" name="confirmation" value="">
          </p>

        </section>

        <footer class="form-footer">
          <input type="hidden" name="token" id="token" value="{$customer_token}">
          <input type="hidden" name="id_customer" id="id_customer" value="{$id_customer}">
          <input type="hidden" name="reset_token" id="reset_token" value="{$reset_token}">
          <button type="submit" name="submit" class="form-control-submit btn btn-primary">
              {l s='Change Password' d='Shop.Theme.Actions'}
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

