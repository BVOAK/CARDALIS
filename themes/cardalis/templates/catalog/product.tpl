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

{block name='head_seo' prepend}
  <link rel="canonical" href="{$product.canonical_url}">
{/block}

{block name='head' append}
  <meta property="og:type" content="product">
  <meta property="og:url" content="{$urls.current_url}">
  <meta property="og:title" content="{$page.meta.title}">
  <meta property="og:site_name" content="{$shop.name}">
  <meta property="og:description" content="{$page.meta.description}">
  <meta property="og:image" content="{$product.cover.large.url}">
  <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
  <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
  <meta property="product:price:amount" content="{$product.rounded_display_price}">
  <meta property="product:price:currency" content="{$currency.iso_code}">
  {if isset($product.weight) && ($product.weight != 0)}
    <meta property="product:weight:value" content="{$product.weight}">
    <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}
{/block}

{block name='breadcrumb'}{/block}


{block name='content'}

  {if $mustCustomize == true}
    {include file='catalog/product-card/custom-product.tpl'}
  {elseif $category->id == "369"}
    {include file='catalog/product-card/product-custom-nosale.tpl'}
  {else}
    {include file='catalog/product-card/main-product.tpl'}
  {/if}
  
  {block name='product_accessories'}
    {if $accessories}
      <section class="product-accessories clearfix row" id="accessoriesProduct">
        <div class="wrapper text-center">
          <p class="titleSec">{l s='Produits associés' d='Shop.Theme.Catalog'}</p>
          <div id="bxsliderAccessories" data-number-products="{$total_accessories}">
            {assign var="productscount" value=$total_accessories}
            <div class="products products-slick justify-content-center spacing-md-top{if $productscount > 1} products--slickmobile{/if}" data-slick='{strip}
                      {ldelim}
                      "slidesToShow": 2,
                      "slidesToScroll": 1,
                      "mobileFirst":true,
                      "arrows":true,
                      "rows":0,
                      "centerPadding": "60px",
                      "responsive": [
                        {ldelim}
                          "breakpoint": 992,
                          "settings":
                          {if $productscount > 5}
                          {ldelim}
                          "arrows":true,
                          "slidesToShow": 6,
                          "slidesToScroll": 1,
                          "centerMode" : true,
                          "arrows":true
                          {rdelim}
                          {else}
                          "unslick"
                          {/if}
                        {rdelim},
                        {ldelim}
                          "breakpoint": 720,
                          "settings":
                          {if $productscount > 3}
                          {ldelim}
                          "arrows":true,
                          "slidesToShow": 3,
                          "slidesToScroll": 1,
                          "centerMode" : true
                          {rdelim}
                          {else}
                          "unslick"
                          {/if}
                        {rdelim},
                        {ldelim}
                          "breakpoint": 540,
                          "settings":
                          {if $productscount > 2}
                          {ldelim}
                          "arrows":true,
                          "slidesToShow": 2,
                          "slidesToScroll": 1,
                          "centerMode" : true
                          {rdelim}
                          {else}
                          "unslick"
                          {/if}
                        {rdelim}
                      ]{rdelim}{/strip}'>
              {foreach from=$accessories item="product_accessory"}
                {block name='product_miniature'}
                  {if $product_accessory.id_category_default != 392 && $product_accessory.id_category_default != 393}
                    {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory}
                  {/if}
                {/block}
              {/foreach}
            </div>
          </div>
        </div>
      </section>
    {/if}
  {/block}

  {widget name="ps_categoryproducts" product=$product category=$category}

  {block name='product_images_modal'}
    {include file='catalog/_partials/product-images-modal.tpl'}
  {/block}

  {block name='page_footer_container'}
    <footer class="page-footer">
      {block name='page_footer'}
        <!-- Footer content -->
      {/block}
    </footer>
  {/block}

{/block}