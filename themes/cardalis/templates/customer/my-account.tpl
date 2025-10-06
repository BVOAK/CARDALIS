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
{extends file='customer/page.tpl'}

{block name='page_title'}
    <div class="headerTitle">
        <h1 class="h1 mainTitle">{l s='Mon compte' d='Shop.Theme.Checkout'}</h1>
    </div>
{/block}

{block name='page_content'}
    <div class="row m-0">
        <div class="links">

            {if !$configuration.is_catalog}
                <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="history-link" href="{$urls.pages.history}">
                    <span class="link-item link">
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                        {l s='Order history and details' d='Shop.Theme.Customeraccount'}
                    </span>
                </a>
            {/if}

            <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="identity-link" href="{$urls.pages.identity}">
                <span class="link-item link">
                    <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                    {l s='Informations personnelles' d='Shop.Theme.Customeraccount'}
                </span>
            </a>

            {if $customer.addresses|count}
                <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="addresses-link" href="{$urls.pages.addresses}">
                    <span class="link-item link">
                        <i class="fa fa-address-book-o" aria-hidden="true"></i>
                        {l s='Addresses' d='Shop.Theme.Customeraccount'}
                    </span>
                </a>
            {else}
                <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="address-link" href="{$urls.pages.address}">
                    <span class="link-item link">
                        <i class="fa fa-address-book-o" aria-hidden="true"></i>
                        {l s='Add first address' d='Shop.Theme.Customeraccount'}
                    </span>
                </a>
            {/if}

            <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="quotations-link" href="/module/pdfquotation/accountpdfquotation">
                <span class="link-item link">
                    <i class="fa fa-file-o" aria-hidden="true"></i>
                    {l s='My quotations' d='Shop.Theme.Customeraccount'}
                </span>
            </a>

            <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="order-slips-link"
                href="{$link->getModuleLink('atoosynccustomerdocuments', 'invoices', array(), true)|escape:'html':'UTF-8'}">
                <span class="link-item link">
                    <i class="fa fa-file" aria-hidden="true"></i>
                    {l s='Mes factures' mod='atoosynccustomerdocuments' d='Shop.Theme.Customeraccount'}
                </span>
            </a>

            {if !$configuration.is_catalog}
                <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="order-slips-link" href="{$urls.pages.order_slip}">
                    <span class="link-item link">
                        <i class="fa fa-percent" aria-hidden="true"></i>
                        {l s='Mes avoirs' d='Shop.Theme.Customeraccount'}
                    </span>
                </a>
            {/if}

            {if $configuration.voucher_enabled && !$configuration.is_catalog}
                <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="discounts-link" href="{$urls.pages.discount}">
                    <span class="link-item link">
                        <i class="fa fa-ticket" aria-hidden="true"></i>
                        {l s='Vouchers' d='Shop.Theme.Customeraccount'}
                    </span>
                </a>
            {/if}

            {if $configuration.return_enabled && !$configuration.is_catalog}
                <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="returns-link" href="{$urls.pages.order_follow}">
                    <span class="link-item link">
                        <i class="fa fa-reply" aria-hidden="true"></i>
                        {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
                    </span>
                </a>
            {/if}

            <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="quotations-link" href="/module/psgdpr/gdpr">
                <span class="link-item link">
                  <i class="fa fa-database" aria-hidden="true"></i>
                    {l s='Personal Data' d='Shop.Theme.Customeraccount'}
                </span>
            </a>

            {* {block name='display_customer_account'}
                {hook h='displayCustomeraccount'}
            {/block} *}

        </div>
    </div>
{/block}