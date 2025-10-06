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
<div class="cart-overview js-cart" data-refresh-url="{url entity='cart' params=['ajax' => true, 'action' => 'refresh']}">
{*$cart.products|var_dump*}
  {if $cart.products}
  <ul class="cart-items">
    <li class="cartHead row m-0">
      <div class="col-md-8">{l s='Article(s)' d='Shop.Theme.Checkout'}</div>
      <div class="col-md-4 row">
        <div class="col-md-6 hidden-sm-down">{l s='Qty' d='Shop.Theme.Checkout'}</div>
        <div class="col-md-6 hidden-sm-down text-center">{l s='Price' d='Shop.Theme.Checkout'}</div>
        <div class="col-md-2 col-2"></div>
      </div>
    </li>

    {foreach from=$cart.products item=product key=k}
      <li class="cart-item" data-id-product="{$product.id_product}">
        {include file='checkout/_partials/cart-detailed-product-line.tpl' product=$product}
      </li>
    {/foreach}

  </ul>
  {else}
    <span class="no-items">{l s='There are no more items in your cart' d='Shop.Theme.Checkout'}</span>
  {/if}
</div>