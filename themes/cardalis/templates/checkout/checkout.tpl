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

{block name='notifications'}
    {include file='_partials/notifications.tpl'}
{/block}

{block name='content'}
  <section id="main" class="clearfix">
    <div class="headerTitle">
      <h1 class="h1 mainTitle">{l s='Commande' d='Shop.Theme.Checkout'}</h1>
    </div>

    <div class="wrapper row">
      <div class="col-xs-12 col-lg-8 blockCol">
          {render file='checkout/checkout-process.tpl' ui=$checkout_process}
      </div>
      <div class="col-xs-12 col-lg-4 blockCol">
        <div class="cart-summary">
          <p class="title">{l s="Récapitulatif de la commande" d='Shop.Theme.Checkout'}</p>
            {include file='checkout/_partials/cart-summary.tpl' cart = $cart}
        </div>
        {* --- Récap adresses (affiché sur l'étape transporteur) --- *}
        {block name='address_recap_above_summary'}
          {if $address_delivery || $address_invoice}
            <div id="address-recap" class="cart-summary mt-2" style="display:none;">
              <div class="card-body">
                <p class="title">{l s='Addresses summary' d='Shop.Theme.Checkout'}</h3>

                {if $same_addresses && $address_delivery}
                  <div class="row">
                    <div class="col-12">
                      <div class="address-block">
                        <div class="address-title mb-1">
                          <strong>{l s='Delivery & Invoice address' d='Shop.Theme.Checkout'}</strong>
                        </div>
                        <address class="mb-0">{$address_delivery.formatted nofilter}</address>
                      </div>
                    </div>
                  </div>
                {else}
                  <div class="row">
                    {if $address_delivery}
                      <div class="col-md-6">
                        <div class="address-block">
                          <div class="address-title mb-1"><strong>{l s='Delivery address' d='Shop.Theme.Checkout'}</strong></div>
                          <address class="mb-0">{$address_delivery.formatted nofilter}</address>
                        </div>
                      </div>
                    {/if}
                    {if $address_invoice}
                      <div class="col-md-6">
                        <div class="address-block">
                          <div class="address-title mb-1"><strong>{l s='Invoice address' d='Shop.Theme.Checkout'}</strong></div>
                          <address class="mb-0">{$address_invoice.formatted nofilter}</address>
                        </div>
                      </div>
                    {/if}
                  </div>
                {/if}
              </div>
            </div>
          {/if}
        {/block}
        {hook h='CETemplate' id=33}
          {*{hook h='displayReassurance'}*}
        {*<p class="infoCardalis">*}
          {*<strong>Attention :  Nos bureaux seront fermés le soir du 3 août jusqu’au lundi 20 août à 09h00.</strong><br />*}
          {*Toutes les commandes reçues sur notre site à partir de 14H00 vendredi 3 août seront traitées et expédiées à partir de lundi 20 août selon la disponibilité de nos stocks.<br />*}
          {*Merci de votre compréhension.*}
        {*</p>*}
      </div>
    </div>
  </section>
{/block}




