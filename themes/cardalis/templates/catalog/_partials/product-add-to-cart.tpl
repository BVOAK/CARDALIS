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
            <div class="col-xl-7 col-lg-6" id="blockLeftContent">
                <div id="blockPrice">
                    {block name='product_prices'}
                        {include file='catalog/_partials/product-prices.tpl'}
                    {/block}
                </div>

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

                            {if $product.quantity >= 1}
                                <div class="stockProduct">
                                    {if $product.quantity > 1}
                                        {l s="%qty% en stock (%unity%)" d='Shop.Theme.Catalog' sprintf=['%qty%' => $product.quantity, '%unity%' => $product.unity]}
                                    {elseif $product.quantity == 1}
                                        {l s="%qty% en stock (%unity%)" d='Shop.Theme.Catalog' sprintf=['%qty%' => $product.quantity, '%unity%' => $product.unity]}
                                    {elseif $product.quantity <= 0}
                                        {l s="0 en stock" d='Shop.Theme.Catalog' sprintf=['%qty%' => $product.quantity]}
                                    {/if}
                                </div>
                            {/if}

                            {if $product.available_for_order == 1}
                                {if $product.availability == 'available'}
                                    <span class="info-stock 
                                    {if $product.id_manufacturer == "3"}
                                        {if $product.quantity > 0}product-available{elseif $product.quantity <= 0 && $product.availability_message != "Sur commande"}product-available{else}product-unavailable{/if}
                                    {else}
                                        {if $product.quantity > 0}product-available{else}product-unavailable{/if}
                                    {/if}">
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
                                    {if $totcustomfields_display_message_indisponible_a_la_vente|@count_characters > 55}
                                        {$totcustomfields_display_message_indisponible_a_la_vente nofilter}
                                    {else}
                                        {l s="Nous contacter" d='Shop.Theme.Catalog'}
                                    {/if}
                                </span>
                                {foreach from=$product.features item=feature}
                                    {if $feature.id_feature == "75"}
                                        <div class="mt-3">
                                            {l s="Ce produit est remplacé par le produit : " d='Shop.Theme.Catalog'}
                                            <a href="{$newProductLink}" class="btn btn-primary cWhite bgBlueLight">{$newProductName}</a>
                                        </div>
                                    {/if}
                                {/foreach}
                            {/if}
                        </div>
                    {/if}
                {/block}

                <a class="btn btn-default btn-outline m-0 mb-4" href="#myTabDescription" id="btnMoreProducts">
                    {l s="Voir tous nos modèles" d='Shop.Theme.Catalog'} <i class="fa fa-angle-down" aria-hidden="true"></i>
                </a>

            </div>

            <div class="d-block col-xl-5 col-lg-6" id="blockRightContent">
                {block name='product_discounts'}
                    {include file='catalog/_partials/product-discounts.tpl'}
                {/block}
                {block name='product_variants'}
                    {include file='catalog/_partials/product-variants.tpl'}
                {/block}
                {block name='product_block_sale_with'}
                    {include file='catalog/_partials/product-block-sale-with.tpl'}
                {/block}
            </div>
        </div>

        {block name='product_quantity'}
            <div class="add d-flex flex-wrap">
                {if $mustCustomize == true}
                    {*bouton classique caché et désactivé*}
                    <button style="display:none;" class="btn-primary add-to-cart" data-button-action="add-to-cart" type="submit"
                        {if !$product.add_to_cart_url}{if $product.available_for_order == 0 || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Icône ajout produit" />
                        <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                    </button>
                    {*Bouton qui permet au click de valider la personnalisation d'un produit et d'ajouter au panier*}
                    <div data-save-and-add="1" id="saveAndAddCustomProduct" class="btn-primary"
                        {if !$product.add_to_cart_url}{if $product.available_for_order == 0 || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Icône produit variant" />
                        <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                    </div>
                {else}
                    {* <button class="btn-primary add-to-cart" data-button-action="add-to-cart" type="submit"
                        {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Icône produit variant" />
                        <span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
                    </button> *}

                    <div class="add-to-cart {if !$product.add_to_cart_url}{if $product.available_for_order == 0 || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}"
                        id="add-cart-custom">
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Ajout au panier" />
                        <span>Ajouter au panier</span>
                    </div>

                    <div class="add-to-quote {if !$product.add_to_cart_url}{if $product.available_for_order == 0 || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}"
                        id="add-cart-quote">
                        <img src="{$urls.img_url}iconQuoteButton.svg" alt="Créer un devis" />
                        <span>Créer un devis</span>
                    </div>

                {/if}
            </div>
        {/block}
    {/if}
</div>