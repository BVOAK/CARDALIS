{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<section id="categoryProducts" class="hidden-sm-down">
    <div class="row">
        <div class="wrapper text-center">
            {*<h3 class="mainTitle">{$product.category_name}</h3>*}
            <p class="titleSec">
                {if $products|@count == 1}
                    {l s='%s autre produit de la même categorie' sprintf=[$products|@count] d='Modules.Categoryproducts.Shop'}
                {else}
                    {l s='%s autres produits de la même categorie' sprintf=[$products|@count] d='Modules.Categoryproducts.Shop'}
                {/if}
            </p>
            <div id="bxsliderCategoryProducts" data-number-products="{$products|@count}">
                {assign var="productscount" value=$products|count}
                <div class="products products-slick justify-content-center spacing-md-top{if $productscount > 1} products--slickmobile{/if}" data-slick='{strip}
      {ldelim}
      "slidesToShow": 1,
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
          "centerMode" : true,
          "slidesToShow": 3,
          "slidesToScroll": 1
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
          "centerMode" : true,
          "slidesToShow": 2,
          "slidesToScroll": 1
          {rdelim}
          {else}
          "unslick"
          {/if}
        {rdelim}
      ]{rdelim}{/strip}'>
                {foreach from=$products item="product"}
                    {include file="catalog/_partials/miniatures/product.tpl" product=$product}
                {/foreach}
            </div>
            </div>
        </div>
    </div>
</section>