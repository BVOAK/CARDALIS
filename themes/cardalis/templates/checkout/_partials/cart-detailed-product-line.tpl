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

<div class="product-line-grid row m-0">
  <!--  product left content: image-->
  <div class="product-line-grid-left col-md-2">
    <a class="label productName" href="{$product.url}">
      <span class="product-image media-middle">
        <img src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}">
      </span>
    </a>
  </div>

  <!--  product left body: description -->
  <div class="product-line-grid-body col-md-6">
      <p class="productRef">Ref : {$product.reference}</p>
    <div class="product-line-info">
      <a class="label productName cBlue" href="{$product.url}">{$product.name}</a>
    </div>

    <div class="product-line-info">
        {if $product.price_with_reduction != 0}
          <span class="value productPrice">{$product.price}</span>
        {/if}
        {if $product.unit_price_full}
          <div class="unit-price-cart">{$product.unit_price_full}</div>
        {/if}
    </div>

      {foreach from=$product.attributes key="attribute" item="value"}
        <div class="product-line-info">
          <span class="label productRef">{$attribute} :</span>
          <span class="value productRef">{$value}</span>
        </div>
      {/foreach}

      <div class="product-quantity-stock">
              {if $product.available_for_order == 1}
                  <span class="info-stock 
                  {if $product.id_manufacturer == "3"}
                      {if $product.stock_quantity > 0}product-available{elseif $product.stock_quantity <= 0 && $product.availability_message != "Sur commande"}product-available{else}product-unavailable{/if}
                  {else}
                      {if $product.stock_quantity > 0}product-available{else}product-unavailable{/if}
                  {/if}">
                      <i class="fa fa-check" aria-hidden="true"></i>
                      {if $product.stock_quantity > 0}
                        {if $product.availability_message}
                            {$product.availability_message}
                        {else}
                            {l s="Article en stock" d='Shop.Theme.Catalog'}
                        {/if}
                    {elseif $product.stock_quantity <= 0}
                        {if $product.availability_message}
                            {$product.availability_message}
                        {else}
                            {l s="En réapprovisionnement" d='Shop.Theme.Catalog'}
                        {/if}
                    {/if}
                  </span>
              {else}
                  <span class="info-stock product-unavailable">
                      {if $product.availability_message}
                          {$product.availability_message}
                      {elseif $product.available_later}
                          {$product.available_later}
                      {else}
                          {l s="Livré sous 7 à 10 jours" d='Shop.Theme.Catalog'}
                      {/if}
                  </span>
              {/if}
      </div>

      {if $product.customizations|count}
        <br/>
          {*<pre>{$product.customizations[0].fields|@var_dump}</pre>*}
          {foreach from=$product.customizations item="customization"}

                  <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
                  <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                  </button>
                                  <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
                              </div>

                              <div class="modal-body">
                                  {foreach from=$customization.fields item="field"}
                                      <div class="product-customization-line row">
                                          <div class="col-sm-3 col-4 label">
                                              {$field.label}
                                          </div>
                                          <div class="col-sm-9 col-8 value">
                                              {if $field.type == 'text'}
                                                  {if (int)$field.id_module}
                                                      {$field.text nofilter}
                                                  {else}
                                                      &nbsp;{$field.text}
                                                  {/if}
                                              {elseif $field.image.medium.url|substr:-3 == 'pdf' || $field.image.medium.url|substr:-3  =='.ai'}
                                                <a href="{$field.image.medium.url}" target="_blank">&nbsp;Lien du fichier</a>
                                              {elseif $field.type == 'image'}
                                                  &nbsp;<img src="{$field.image.small.url}" alt="Image Produit">
                                              {/if}
                                          </div>
                                      </div>
                                  {/foreach}
                              </div>
                          </div>
                      </div>
                  </div>

          {/foreach}



      {/if}
  </div>

  <!--  product left body: description -->
  <div class="product-line-grid-right product-line-actions col-md-4">
    <div class="row">
      <div class="col-4 hidden-md-up"></div>
      <div class="col-md-10 col-6">
        <div class="row">
          <div class="col-md-6 col-6 qty">
              {if isset($product.is_gift) && $product.is_gift}
                <span class="gift-quantity">{$product.quantity}</span>
              {else}
                {if $product.price_with_reduction != 0}
                <input
                        class="js-cart-line-product-quantity"
                        data-down-url="{$product.down_quantity_url}"
                        data-up-url="{$product.up_quantity_url}"
                        data-update-url="{$product.update_quantity_url}"
                        data-product-id="{$product.id_product}"
                        type="text"
                        value="{$product.quantity}"
                        name="product-quantity-spin"
                        min="{$product.minimal_quantity}"
                />
                {/if}
              {/if}
          </div>
          <div class="col-md-6 col-2 price">
            <span class="product-price">
              <strong>
                {if isset($product.is_gift) && $product.is_gift}
                  <span class="gift">{l s='Gift' d='Shop.Theme.Checkout'}</span>
                {else}
                    {if $product.price_with_reduction != 0}
                      {$product.total}
                    {else}
                      <span class="cOrange">{$product.total}</span>
                    {/if}
                {/if}
              </strong>
            </span>
          </div>
        </div>
      </div>
      <div class="col-md-2 col-2 text-xs-right">
        <div class="cart-line-product-actions ">
          <a
                  class                       = "remove-from-cart"
                  rel                         = "nofollow"
                  href                        = "{$product.remove_from_cart_url}"
                  data-link-action            = "delete-from-cart"
                  data-id-product             = "{$product.id_product|escape:'javascript'}"
                  data-id-product-attribute   = "{$product.id_product_attribute|escape:'javascript'}"
                  data-id-customization   	  = "{$product.id_customization|escape:'javascript'}"
          >
              {if !isset($product.is_gift) || !$product.is_gift}
                <i class="material-icons pull-xs-left">delete</i>
              {/if}
          </a>
            {hook h='displayCartExtraProductActions' product=$product}
        </div>
      </div>
    </div>
  </div>

  <div class="clearfix"></div>
</div>