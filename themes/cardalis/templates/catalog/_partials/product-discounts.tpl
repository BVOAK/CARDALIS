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
<section class="product-discounts">

  {if (isset($product.quantity_discounts) && $product.quantity_discounts != "0" && count($product.quantity_discounts) > 0)}

    {* <button class="btn btn-primary btnPrixDegressif" type="button" data-toggle="collapse" data-target="#quantityDiscount"
      aria-expanded="false" aria-controls="quantityDiscount">PRIX DÉGRESSIF <i class="fa fa-arrow-down" aria-hidden="true"></i>
    </button> *}

    <!-- quantity discount -->
    <div id="quantityDiscount" class="clearfix">
      <div class="clearfix container_price_degr">

        <div class="title_prix_degressif">
          <span class="prix_degressif">Prix <span>dégressif</span></span>
{*           <span class="eco_quantite">{l s='Économisez sur la quantité !'}</span>
 *}        </div>

        <div class="table_prix_degressif">
          <div class="title_content_price">
            <span class="qty_prix_degr">{l s='Quantité'} /
              {if !empty($product.unity)}{$product.unity|escape:'htmlall':'UTF-8'}{/if}</span>
            <span class="montant_prix_degr">{l s='Prix'}</span>
          </div>
          <div class="line_prd_price_degr" id="quantityDiscount_0">

            <span class="qty_prix_degr">{l s='Par 1 et +'}</span>
            <span class="montant_prix_degr montant_prix_degressif">
              {if $priceDisplay >= 0 && $priceDisplay <= 2}
                {Tools::displayPrice($productPriceWithoutReduction)}
                {if $tax_enabled  && ((isset($display_tax_label) && $display_tax_label == 1) OR !isset($display_tax_label))}
                  <span>
                    {if $priceDisplay == 1}
                      {l s='tax excl.'  d='Shop.Theme.Catalog'}
                    {else}
                      {l s='tax incl.'  d='Shop.Theme.Catalog'}
                    {/if}
                  </span>
                {/if}
              {/if}
            </span>
          </div>
          <script>
            var product_price_degr = new Array(); // 1 => 59, 10 => 56
            var unit_price_ratio = {$product.unit_price_ratio};
            product_price_degr[1] = {$product.price_without_reduction};
          </script>
          {foreach from=$product.quantity_discounts item='quantity_discount' key='keyDiscount' name='quantity_discounts'}
            <div class="line_prd_price_degr" id="quantityDiscount_{$keyDiscount}">
              <span class="qty_prix_degr">{l s='Par %qty% et +' sprintf=['%qty%' => $quantity_discount.quantity]}</span>
              {*<span class="qty_prix_degr">{l s='à partir de'} {$quantity_discount.quantity} {if !empty($product.unity)}{l s='unités'}{else}{l s='articles'}{/if}</span>*}
              {*                   <span class="reduc_prix_degr">{if !empty($product.unity)}{$product.unity|escape:'htmlall':'UTF-8'}{/if}</span> *}
              <span class="montant_prix_degr montant_prix_degressif">
                {if $priceDisplay >= 0 && $priceDisplay <= 2}
                  {if $quantity_discount.reduction_type != 'percentage'}
                    {if $quantity_discount.quantity > 1}
                      {assign var=productPriceDegr value=$quantity_discount.price}
                    {/if}
                  {else}
                    {if $quantity_discount.price >= 0}
                      {assign var=productPriceDegr value=$quantity_discount.price-($quantity_discount.price * $quantity_discount.reduction)}
                    {else}
                      {assign var=productPriceDegr value=$product.price_without_reduction-(($product.price_without_reduction * $quantity_discount.real_value)/100)}
                    {/if}
                  {/if}
                  {Tools::displayPrice($productPriceDegr)}
                  <span>
                    {if $tax_enabled  && ((isset($display_tax_label) && $display_tax_label == 1) OR !isset($display_tax_label))}
                      {if $priceDisplay == 1}
                        {l s='tax excl.'  d='Shop.Theme.Catalog'}
                      {else}
                        {l s='tax incl.'  d='Shop.Theme.Catalog'}
                      {/if}
                    {/if}
                  </span>
                {/if}
              </span>
            </div>
            <script>
              product_price_degr[{$quantity_discount.quantity}] = {$productPriceDegr};
            </script>
          {/foreach}
        </div>

      </div>
    </div>
  {/if}
</section>