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

<div class="product-add-to-cart">
    {if !$configuration.is_catalog}

        <div class="d-flex w-100 flex-wrap">
            <div class="col-lg-7" id="blockLeftContent">
                
                {block name='product_discounts'}
                    {include file='catalog/_partials/product-discounts.tpl'}
                {/block}


                <div id="product-quantity">
                    {if $product.available_for_order}
                        <span class="control-label">{l s='Quantity' d='Shop.Theme.Catalog'}</span>
                        <div class="qty">
                            <input type="text" name="qty" id="quantity_wanted" value="{$product.quantity_wanted}"
                                class="input-group" min="{$product.minimal_quantity}" />
                        </div>
                    {/if}
                </div>

                {block name='product_availability'}
                    {if $mustCustomize == false}
                        <div id="product-availability" class="clearfix">

                            {if $breadcrumb.links[2]['id_cat'] != 93 && $product.quantity >= 1}
                                <div class="stockProduct">
                                    {if $product.quantity > 1}
                                        {l s="%qty% en stock (%unity%)" d='Shop.Theme.Catalog' sprintf=['%qty%' => $product.quantity, '%unity%' => $product.unity]}
                                    {elseif $product.quantity == 1}
                                        {l s="%qty% en stock" d='Shop.Theme.Catalog' sprintf=['%qty%' => $product.quantity]}
                                    {elseif $product.quantity <= 0}
                                        {l s="0 en stock" d='Shop.Theme.Catalog' sprintf=['%qty%' => $product.quantity]}
                                    {/if}
                                </div>
                            {/if}

                            {if $product.available_for_order == 1}
                                {if $product.availability == 'available'}
                                    <span class="info-stock {if $product.quantity <= 0}product-unavailable{else}product-available{/if}">
                                        <i class="fa fa-check" aria-hidden="true"></i>
                                        {if $product.quantity > 0}
                                            {if $product.availability_message}
                                                {$product.availability_message}
                                            {else}
                                                {l s="Article en stock" d='Shop.Theme.Catalog'}
                                            {/if}
                                        {elseif $product.quantity <= 0}
                                            {if $product.availability_message}
                                                {$product.availability_message}
                                            {else}
                                                {l s="En réapprovisionnement" d='Shop.Theme.Catalog'}
                                            {/if}
                                        {/if}
                                    </span>
                                {elseif $product.availability == 'last_remaining_items'}
                                    <span class="info-stock product-last-items">
                                        <i class="fa fa-check" aria-hidden="true"></i>
                                        {l s="Article en stock" d='Shop.Theme.Catalog'}
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
                            {else}
                                <span class="info-stock product-available">
                                    {l s="Nous contacter" d='Shop.Theme.Catalog'}
                                </span>
                            {/if}
                        </div>
                    {/if}
                {/block}
            </div>

        </div>

        {block name='product_quantity'}
            <div class="add d-flex flex-wrap">
                {if $mustCustomize == true}
                    {*bouton classique caché et désactivé*}
                    <button disabled style="display:none;" class="btn-primary add-to-cart" data-button-action="add-to-cart" type="submit"
                        {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Icône ajout produit" />
                        <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                    </button>
                    {*Bouton qui permet au click de valider la personnalisation d'un produit et d'ajouter au panier*}
                    <div data-save-and-add="1" id="saveAndAddCustomProduct" class="btn-primary"
                        {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Icône produit variant" />
                        <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                    </div>
                {else}
                    {* <button class="btn-primary add-to-cart" data-button-action="add-to-cart" type="submit"
                        {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Icône produit variant" />
                        <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                    </button> *}

                    <div class="add-to-cart {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}" id="add-cart-custom">
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Ajout au panier" />
                        <span>Ajouter au panier</span>
                    </div>

                    <div class="add-to-quote {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}" id="add-cart-quote">
                        <img src="{$urls.img_url}iconQuoteButton.svg" alt="Créer un devis" />
                        <span>Créer un devis</span>
                    </div>

                {/if}
            </div>
        {/block}
    {/if}
</div>