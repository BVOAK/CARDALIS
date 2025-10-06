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

{if $product.show_price}
    <div class="product-prices">
        <div class="contentPrice">

            {if $product.has_discount}
                <div class="blockDiscount">
                    {if $product.discount_type === 'percentage'}
                        <span
                            class="discount discount-percentage">{l s='Save %percentage%' d='Shop.Theme.Catalog' sprintf=['%percentage%' => $product.discount_percentage_absolute]}</span>
                    {else}
                        <span class="discount discount-amount">
                            {l s='Save %amount%' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.specific_prices.reduction|string_format:"%.2f"|replace:'.':',']}
                            {$currency.sign}
                        </span>
                    {/if}
                </div>
            {/if}

            <div class="d-flex">
                {block name='product_price'}
                    <div class="product-price {if $product.has_discount}has-discount{/if}" itemprop="offers" itemscope
                        itemtype="https://schema.org/Offer">
                        
                        
                        <link itemprop="url" href="{$product.url}" />
                        <meta itemprop="priceCurrency" content="{$currency.iso_code}">
                        <meta itemprop="price" content="{$product.rounded_display_price}" />
                        <meta itemprop="availability" content="{$product.seo_availability}" />
                        <meta itemprop="priceValidUntil" content="{($smarty.now + (int) (60*60*24*15))|date_format:"%Y-%m-%d"}" />

                        {assign var="price_ht" value=$product.price_tax_exc}{* ex: 20 pour 20% *}
                        {assign var="price_ttc" value=($price_ht * (1 + $tax_rate / 100))}
                        {assign var="regular_price_raw" value=$product.regular_price|replace:',':'.'|replace:' ':''}
                        {assign var="regular_price_float" value=$regular_price_raw+0}
                        {assign var="regular_price_ttc" value=($regular_price_float * (1 + $tax_rate / 100))}

                        <div class="current-price">
                            <p class="regular-price mb-2 cBlue" content="{$product.price_amount}" id="currentPrice" data-price-current="{$product.price_amount}" data-price-fixe="{$productPriceWithoutReduction}">{$product.price} HT</p>
                            <p class="f30 cGreyLight priceTTC" content="{$product.rounded_display_price}">
                            <strong>{Tools::displayPrice($price_ttc)}TTC</strong></p>
                            <a style="display:none" itemprop="url" href="{$product.canonical_url}"
                                content="{$product.canonical_url}">ProductLink</a>
                        </div>
                    </div>
                {/block}
            
                {block name='product_discount'}
                    {if $product.has_discount}
                        <div class="product-discount">
                            {hook h='displayProductPriceBlock' product=$product type="old_price"}
                            <span class="d-block">{l s="au lieu de"}</span><span class="regular-price"
                                content="{$product.regular_price_amount}">{$product.regular_price} HT</span>
                        </div>
                    {/if}

                {/block}
            </div>


            {block name='product_without_taxes'}
                {if $priceDisplay == 2}
                    <p class="product-without-taxes">
                        {l s='%price% tax excl.' d='Shop.Theme.Catalog' sprintf=['%price%' => $product.price_tax_exc]}</p>
                {/if}
            {/block}

            {block name='product_pack_price'}
                {if $displayPackPrice}
                    <p class="product-pack-price">
                        <span>{l s='Instead of %price%' d='Shop.Theme.Catalog' sprintf=['%price%' => $noPackPrice]}</span>
                    </p>
                {/if}
            {/block}

            {block name='product_ecotax'}
                {if $product.ecotax.amount > 0}
                    <p class="price-ecotax">
                        {l s='Including %amount% for ecotax' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.ecotax.value]}
                        {if $product.has_discount}
                            {l s='(not impacted by the discount)' d='Shop.Theme.Catalog'}
                        {/if}
                    </p>
                {/if}
            {/block}

        </div>

        {*         {hook h='displayProductPriceBlock' product=$product type="weight" hook_origin='product_sheet'}
 *}
    </div>

{else}

    <div itemprop="offers" itemscope itemtype="https://schema.org/Offer">
        <link itemprop="url" href="{$product.url}" />
        <meta itemprop="priceCurrency" content="{$currency.iso_code}">
        <meta itemprop="price" content="{$product.rounded_display_price}" />
        <meta itemprop="availability" content="{$product.seo_availability}" />
        <meta itemprop="priceValidUntil" content="{($smarty.now + (int) (60*60*24*15))|date_format:"%Y-%m-%d"}" />
    </div>

{/if}