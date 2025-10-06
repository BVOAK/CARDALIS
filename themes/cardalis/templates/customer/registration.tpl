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
    <span class="headerTitle d-block">
        <span class="h1 mainTitle d-block">{l s='Create an account' d='Shop.Theme.Customeraccount'}</span>
    </span>
{/block}

{block name='page_content'}
    {block name='register_form_container'}
        {$hook_create_account_top nofilter}
        <div class="d-flex flex-wrap">
          <section class="register-form col-md-8 p-3">              
              {render file='customer/_partials/customer-form.tpl' ui=$register_form}
              <p class="text-center m-5">{l s='Already have an account?' d='Shop.Theme.Customeraccount'} <a
                      href="{$urls.pages.authentication}">{l s='Log in instead!' d='Shop.Theme.Customeraccount'}</a></p>
          </section>
          <div class="col-md-4 p-3">
              <div id="newsletterSubscriptionAccount">
                <iframe data-w-type="embedded" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://llsm.mj.am/wgt/llsm/5g9/form?c=fca991cd" width="100%"></iframe>
                <script type="text/javascript" src="https://app.mailjet.com/pas-nc-embedded-v1.js"></script>
              </div>
            </div>
        </div>
    {/block}
{/block}