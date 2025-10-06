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

    <div class="headerTitle">
      <h1 class="h1 mainTitle">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</h1>
    </div>

    <div class="wrapper row">

      <!-- Left Block: cart product informations & shpping -->
      <div class="cart-grid-body col-xs-12 col-lg-8">

        <!-- cart products detailed -->
        <div class="cart-container">
          {block name='cart_overview'}
            {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
          {/block}
          {*
            TODO override du panier
            <a class="btn btn-primary" style="float:right" id="removeAll" href="javascript:void(0)">
              Empty Cart
            </a>
            *}
        </div>

        <div class="cross-selling-container mt-3 mb-5">
          {if $crossSellingProduct}
            <div class="cross-selling-product d-flex m-0 bgGrey p-3 justify-content-around align-items-center flex-wrap">
              <div class="col-md-2 p-0">
                <span class="product-image media-middle">
                  <img src="{$crossSellingProduct.image_url}" alt="{$crossSellingProduct.name}"
                    class="mr-3 p-md-0 p-2 img-fluid" />
                </span>
              </div>
              <div class="col-md-6 p-0">
                <p class="m-0 cBlue text-uppercase titleSec"><strong>{$crossSellingProduct.name}</strong></p>
                <div class="cBlue description">
                  <p class="m-0">{l s="Envie d'essayer avant d'acheter ?"}</p>
                  <p class="m-0">{l s="Ajoutez un Kit Échantillon à votre panier."}</p>
                </div>
              </div>
              <div class="col-md-4 d-flex justify-content-end align-items-center pl-3">
                {* <span class="m-0 p-3 cOrange price"><strong>
                    {if $crossSellingProduct.price == 0}
                      {l s='Offert' d='Shop.Theme.Actions'}
                    {else}
                      {$crossSellingProduct.price_formatted}
                    {/if}
                  </strong></span> *}
                <p class="m-0"><a
                    href="{$link->getPageLink('cart', null, null, ['add' => 1, 'id_product' => $crossSellingProduct.id_product, 'token' => $static_token])}"
                    class="btn btn-primary bgOrange add-to-cart-cs text-uppercase">Ajouter au panier</a></p>
              </div>
            </div>
          {/if}
        </div>


        <div class="justify-content-between d-flex" id="anchorQuotation">
          {block name='continue_shopping'}
            <div class="text-sm-center mt-1 mb-1">
              <a class="btn btn-outline text-uppercase" href="{$urls.pages.index}">
                <i class="material-icons">chevron_left</i>{l s='Continue shopping' d='Shop.Theme.Actions'}
              </a>
            </div>
          {/block}

          {* {hook h='displayShoppingCart'} *}

        </div>

        <!-- shipping informations -->
        <div class="clearfix">
          {hook h='displayShoppingCartFooter'}
        </div>

      </div>

      <!-- Right Block: cart subtotal & cart total -->
      <div class="cart-grid-right col-xs-12 col-lg-4">

        {block name='cart_summary'}
          <div class="cart-summary">

            <p class="title">{l s="Récapitulatif de la commande" d='Shop.Theme.Actions'}</p>

            {block name='cart_totals'}
              {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
            {/block}

            {block name='cart_actions'}
              {include file='checkout/_partials/cart-detailed-actions.tpl' cart=$cart}
            {/block}

          </div>
        {/block}

        {*{block name='display_reassurance'}*}
          {*{hook h='displayReassurance'}*}
        {*{/block}*}


        {if $blockInfosBannerHeader->active == "1"}
          <div class="infoCardalis">
            {$blockInfosCart->content nofilter}
          </div>
        {/if}

      </div>

    </div>

  </section>

  {*   {assign var="ajaxCrossSellingUrl" value="http://cardalis.test/panier?ajax=1&action=getCrossSellingProduct"}
 *}
  {literal}
    <script>
      var ajaxCrossSellingUrl = {/literal}"{$ajaxCrossSellingUrl}"{literal};
    </script>
  {/literal}

{/block}