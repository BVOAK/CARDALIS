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

<article class="product-miniature js-product-miniature article{$i}" data-id-product="{$product.id_product}"
    data-id-category="{$product.id_category_default}" data-id-product-attribute="{$product.id_product_attribute}"
    itemscope itemtype="http://schema.org/Product">
    <div class="thumbnail-container link">
        <a href="{$product.canonical_url}" class="blockThumbnail">
            {block name='product_thumbnail'}
                <div href="{$product.canonical_url}" class="thumbnail product-thumbnail">
                    {if isset($product.cover.bySize.home_default.url)}
                        <img itemprop="image" loading="lazy" src="{$product.cover.bySize.home_default.url}"
                            alt="{$product.cover.legend}" data-full-size-image-url="{$product.cover.large.url}" />
                    {else}
                        <img src="{$urls.img_prod_url}noImg.jpg" alt="" />
                    {/if}
                </div>
            {/block}

            
            {assign var="price_ht" value=$product.price_tax_exc}{* ex: 20 pour 20% *}
            {assign var="price_ttc" value=($price_ht * 1.2)}
            {assign var="regular_price" value=$product.regular_price_amount}
            {assign var="discounted_price" value=$product.price_amount}
            {assign var="reduction_percent" value=(100 - ($discounted_price / $regular_price * 100))}
            {assign var="reduction_percent" value=($reduction_percent|string_format:"%.0f"|replace:'.':',')}

            <div class="blockLabelsLeft">               

                {if $product.has_discount}
                    <span class="labelPromo labelTxt">
                        {if $product.discount_type === 'percentage'}
                            - {$product.discount_percentage_absolute}
                        {else}
                            - {$reduction_percent}%
                        {/if}
                    </span>
                {/if}

                {foreach from=$product.features item=feature}
                    {if $feature.id_feature == "11" && !$product.has_discount}
                        {if $feature.value == "1"}
                            <span class="labelPromo labelTxt">
                                {l s='Promo ' d='Shop.Theme.Catalog'}
                            </span>
                        {/if}
                        {if $feature.value == "2"}
                            <span class="labelFinDeSerie labelTxt">
                                {l s='Fin de série ' d='Shop.Theme.Catalog'}
                            </span>
                        {/if}
                    {/if}
                    {if $feature.id_feature == "46"}
                        <span class="labelNew labelTxt">
                            {$feature.value}
                        </span>
                    {/if}

                    {if $feature.name == "Titre caractéristique" && $category.id == '92'}
                        <div class="labelCaracteristique">
                            {$feature.value}
                        </div>
                    {/if}
                    {if $feature.name == "60"}
                        <div class="labelConnexionType">
                            <img src="{$urls.img_url}{$feature.value}.png" alt="{$feature.value}" class="img-fluid" />
                        </div>
                    {/if}
                    {if $feature.id_feature == "12"}
                        <div class="labelMadeInFrance labelTxt" title="Made in France">
                            <img src="{$urls.img_url}flagMadeInFrance.jpg" alt="Logo Made in france" />
                            <span>Made in France</span>
                        </div>
                    {/if}
                    {if $feature.id_feature == "80"}
                        {assign var="tagsFeatures" value=$feature.value}
                        {assign var="tagsFeaturesSplit" value=","|explode:$tagsFeatures}
                    {/if}
                {/foreach}
            </div>

            <div class="blockLabelsRight">
                {foreach from=$product.features item=feature}
                    {if $feature.id_feature == "58"}
                        <div class="labelEdikio">
                            <img src="{$urls.img_url}label-edikio-{$feature.value}.png" alt="{$feature.value}"
                                class="img-fluid" />
                        </div>
                    {/if}
                    {if $feature.id_feature == "62"}
                        <span class="labelCustom">
                            <img src="{$urls.img_url}label-personnalisable.png" alt="Produit personnalisable" class="img-fluid" />
                        </span>
                    {/if}
                    {if $feature.id_feature == "17"}
                        <span class="labelECO">
                            <img src="{$urls.img_url}label-ECO.png" alt="Produit éco-responsable" class="img-fluid" />
                        </span>
                    {/if}
                    {if $feature.id_feature == "54"}
                        <span class="labelRFID label{$feature.value}">
                            {$feature.value}
                        </span>
                    {/if}
                    {if $feature.id_feature == "60"}
                        <div class="labelConnexionType {$feature.value}">
                            <img src="{$urls.img_url}{$feature.value}.png" alt="{$feature.value}" class="img-fluid" />
                        </div>
                    {/if}
                    {if $feature.id_feature == "81"}
                        <div class="labelBestSeller">
                                <img src="{$urls.img_url}best-seller-logo.svg" alt="Best Seller Cardalis" class="img-fluid" />
                        </div>
                    {/if}
                {/foreach}
            </div>

        </a>

        <div class="product-description clearfix">

            <div class="product-content">
                {block name='product_name'}
                    <p class="ref">{l s="Ref." d='Shop.Theme.Catalog'} : {$product.reference}</p>
                    <h3 class="product-title" itemprop="name">
                        <a href="{$product.canonical_url}">
                            {$product.name}
                        </a>
                    </h3>
                    <div style="display:none" itemprop="description" content="{$product.description}">
                        {$product.description}
                    </div>
                {/block}

                <div class="d-flex w-100 justify-content-between product-price-and-shipping" itemprop="offers" itemscope
                    itemtype="https://schema.org/Offer">

                    <meta itemprop="price" content="{$product.price_amount * 1.2}" />
                    <meta itemprop="priceCurrency" content="{$currency.iso_code}">
                    <meta itemprop="availability" content="{$product.seo_availability}" />

                    <div class="blockShipping">
                        {if $product.available_for_order == 1}
                            {if $product.availability == 'available'}
                                <span class="info-stock 
                            {if $product.id_manufacturer == "3"}
                                {if $product.quantity > 0}product-available{elseif $product.quantity <= 0 && $product.availability_message != "Sur commande"}product-available{else}product-unavailable{/if}
                            {else}
                                {if $product.quantity > 0}product-available{else}product-unavailable{/if}
                            {/if}">
                                    {if $product.quantity > 0}
                                        {l s="En stock" d='Shop.Theme.Catalog'}
                                    {elseif $product.quantity <= 0}
                                        {if $product.id_manufacturer == "3" && $product.availability_message != "Sur commande"}
                                            {* {l s="En stock" d='Shop.Theme.Catalog'} *}
                                            {$product.availability_message}
                                        {elseif $product.id_manufacturer == "3" && $product.availability_message == "Sur commande"}
                                            {l s="Sur commande" d='Shop.Theme.Catalog'}
                                        {elseif $product.availability_message}
                                            <span
                                                class="cGreen">{$product.availability_message|regex_replace:'/Réapprovisionnement estimé /':'Livraison '|regex_replace:'/jours ouvrés/':'jrs'}</span>
                                        {else}
                                            <span class="cGreen">{l s="Nous contacter" d='Shop.Theme.Catalog'}</span>
                                        {/if}
                                    {/if}
                                </span>
                            {elseif $product.availability == 'last_remaining_items'}
                                <span class="info-stock product-last-items">
                                    {if $product.availability_message}
                                        {$product.availability_message}
                                    {else}
                                        {l s="Article en stock" d='Shop.Theme.Catalog'}
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
                        {else}
                            <span class="info-stock product-available">
                                {l s="Nous contacter" d='Shop.Theme.Catalog'}
                            </span>
                        {/if}


                        {if $tagsFeatures}
                            <ul class="tagsFeaturesBlock d-none">
                                {foreach from=$tagsFeaturesSplit item=tagsFeatureSplit}
                                    <li class="bgOrange cWhite">{$tagsFeatureSplit}</li>
                                {/foreach}
                            </ul>
                        {/if}

                        {* {if $product.available_for_order == 1}
                        {if $product.availability == 'available'}
                            <link itemprop="availability" {if $product.availability == 'available'}
                                href="http://schema.org/InStock" {else}href="http://schema.org/OutOfStock" {/if} />
                                {if $product.quantity > 0}
                                    <span class="info-stock product-available">{l s="En stock" d='Shop.Theme.Catalog'}</span>
                                {elseif $product.quantity <= 0}
                                    {if $product.availability_message}
                                        <span class="info-stock product-available">{l s="En stock" d='Shop.Theme.Catalog'}</span>
                                    {else}
                                        <span class="info-stock product-unavailable">{l s="Nous contacter" d='Shop.Theme.Catalog'}</span>
                                    {/if}
                                {/if}
                        {else}
                            <span class="info-stock product-unavailable">
                                {if $product.availability_message}
                                    {$product.availability_message}
                                {elseif $product.available_later}
                                    {$product.available_later}
                                {else}
                                    {l s="Nous contacter" d='Shop.Theme.Catalog'}
                                {/if}
                            </span>
                        {/if}
                    {else}
                        <span class="info-stock product-available">
                            {l s="Nous contacter" d='Shop.Theme.Catalog'}
                        </span>
                    {/if} *}
                    </div>

                    {block name='product_price_and_shipping'}
                        {if $product.show_price}
                            <div class="blockPrice text-right">
                            <strong class="regular-price price">{Tools::displayPrice($price_ht)} HT</strong>
                                {hook h='displayProductPriceBlock' product=$product type="before_price"}
                                <span class="price cGreyLight {if $product.has_discount}discount{/if}">{Tools::displayPrice($price_ttc)}
                                    TTC</span>
                                {hook h='displayProductPriceBlock' product=$product type='unit_price'}
                                {hook h='displayProductPriceBlock' product=$product type='weight'}
                                {* {if $product.has_discount}
                                    {hook h='displayProductPriceBlock' product=$product type="old_price"}
                                    <strong class="regular-price cBlueLight f14">{Tools::displayPrice($price_ht)} HT</strong>
                                {/if} *}
                                
                            </div>
                        {/if}
                    {/block}

                </div>
            </div>

            <div class="blockButtons">
                <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                    <input type="hidden" name="token" value="{$static_token}">
                    <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                    <input type="hidden" name="id_customization" value="{$product.id_customization}"
                        id="product_customization_id">
                    <button class="btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit"
                        {if !$product.available_for_order}{if !$product.add_to_cart_url || $product.quantity_wanted>$product.quantity}disabled{/if}{/if}>
                        <img src="{$urls.img_url}iconCartHeader.svg" alt="Ajout au panier" />
                        <span>{l s="Ajouter au panier" d='Shop.Theme.Catalog'}</span>
                    </button>
                </form>
            </div>

        </div>

    </div>
</article>