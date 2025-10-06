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
{extends file=$layout}

{block name='content'}
    <section id="main">
        {block name='page_title'}{/block}

        <div class="wrapper marginTopHead d-flex" id="pageAccount">

            <div class="col-xl-2 col-lg-3 hidden-md-down" id="menuFast">
                <p class="title">{l s='Mon compte' d='Shop.Theme.Customeraccount'}</p>
                <ul>
                    {* Un element html a s'ajoute juste avant, origine non trouvé => js dans custom.js pour le supprimer *}
                    {if !$configuration.is_catalog}
                        <li {if $page.page_name == 'history'}class="active" {/if}>
                            <a href="{$urls.pages.history}">
                                {l s='Order history and details' d='Shop.Theme.Customeraccount'}
                            </a>
                        </li>
                    {/if}

                    <li {if $page.page_name == 'identity'}class="active" {/if}>
                        <a href="{$urls.pages.identity}">
                            {l s='Informations personnelles' d='Shop.Theme.Customeraccount'}
                        </a>
                    </li>

                    {if $customer.addresses|count}
                        <li {if $page.page_name == 'addresses'}class="active" {/if}>
                            <a href="{$urls.pages.addresses}">
                                {l s='Addresses' d='Shop.Theme.Customeraccount'}
                            </a>
                        </li>
                    {else}
                        <li {if $page.page_name == 'adresse' }class="active" {/if}>
                            <a href="{$urls.pages.address}">
                                {l s='Add first address' d='Shop.Theme.Customeraccount'}
                            </a>
                        </li>
                    {/if}

                    <li>
                        <a href="/module/pdfquotation/accountpdfquotation">
                            {l s='My quotations' d='Shop.Theme.Customeraccount'}
                            <a>
                    </li>

                    <li>
                        <a id="order-slips-link"
                            href="{$link->getModuleLink('atoosynccustomerdocuments', 'invoices', array(), true)|escape:'html':'UTF-8'}">
                            {l s='Mes factures' mod='atoosynccustomerdocuments' d='Shop.Theme.Customeraccount'}
                        </a>
                    </li>

                    {if !$configuration.is_catalog}
                        <li {if $page.page_name == 'order-slip' }class="active" {/if}>
                            <a href="{$urls.pages.order_slip}">
                                {l s='Mes avoirs' d='Shop.Theme.Customeraccount'}
                            </a>
                        </li>
                    {/if}

                    {if $configuration.voucher_enabled && !$configuration.is_catalog}
                        <li {if $page.page_name == 'discount'}class="active" {/if}>
                            <a href="{$urls.pages.discount}">
                                {l s='Vouchers' d='Shop.Theme.Customeraccount'}
                            </a>
                        </li>
                    {/if}

                    {if $configuration.return_enabled && !$configuration.is_catalog}
                        <li>
                            <a href="{$urls.pages.order_follow}">
                                {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
                            </a>
                        </li>
                    {/if}

                    <li>
                        <a href="/module/psgdpr/gdpr">
                            {l s='Personal Data' d='Shop.Theme.Customeraccount'}
                            <a>
                    </li>
                    {* <li>
                        <a href="/module/lgcookieslaw/disallow?token=16c2a2cae53d26099478f4fc0e84f72d">
                            {l s='Revoke cookies' d='Shop.Theme.Customeraccount'}
                            <a>
                    </li> *}
                </ul>

            </div>

            <div class="col-xl-10 col-lg-9" id="contentCustomer">
                {*{block name='notifications'}{/block}*}

                {*{block name='page_content_top'}*}
                    {*{block name='customer_notifications'}*}
                        {*{include file='_partials/notifications.tpl'}*}
                    {*{/block}*}
                {*{/block}*}

                <div id="content">
                    {block name='page_content'}{/block}
                </div>

                {block name='page_footer'}
                    <div id="footerNavCustomer">
                        {block name='my_account_links'}
                            {include file='customer/_partials/my-account-links.tpl'}
                        {/block}
                    </div>
                {/block}
            </div>

        </div>
    </section>

{/block}