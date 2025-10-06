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



<section id="main" itemscope itemtype="https://schema.org/Product" class="productCustom productLanyard"
    data-page="lanyardPage">
    <meta itemprop="url" content="{$product.url}">

    {include file='_partials/breadcrumb.tpl'}

    <div class="wrapper">

        <div id="blockHead">
            {block name='page_header_container'}
                {block name='page_header'}
                    <div class="blockTitle">
                        <span class="ref">{l s="Référence" d='Shop.Theme.Catalog'} : {$product.reference}</span>
                        <span class="customTextTitle">{l s="Personnalisation" d='Shop.Theme.Catalog'}</span>
                        <h1 class="titleProduct" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                        {if $product_manufacturer->name != ""}
                            <h2 class="titleBrand">{l s="de" d='Shop.Theme.Catalog'} {$product_manufacturer->name}</h2>
                        {/if}
                    </div>
                {/block}
            {/block}

            {block name='product_description_short'}
                <div id="product-description-short-{$product.id}" itemprop="description" class="blockShortDesc">
                    {$product.description_short nofilter}
                </div>
            {/block}
        </div>

        <div class="row">

            <div class="col-lg-4" id="blockPhotos">

                {*<a class="backCat" href="{$link->getCategoryLink($category->id_category, $category->link_rewrite)|escape:'html':'UTF-8'}">*}
                {*<i class="material-icons">&#xE314;</i> {l s='Retour à la catégorie' d='Shop.Theme.Catalog'}*}
                {*</a>*}

                {foreach from=$product.features item=feature}
                    {if $feature.id_feature == "11"}
                        {if $feature.value == "1"}
                            <span class="labelPromo">
                                {l s='Promo ' d='Shop.Theme.Catalog'}
                            </span>
                        {/if}
                        {if $feature.value == "2"}
                            <span class="labelFinDeSerie">
                                {l s='Fin de série ' d='Shop.Theme.Catalog'}
                            </span>
                        {/if}
                    {/if}
                {/foreach}

                {block name='page_content_container'}
                    {block name='page_content'}
                        {block name='product_cover_tumbnails'}
                            {include file='catalog/_partials/product-cover-thumbnails.tpl'}
                        {/block}
                        <div class="scroll-box-arrows">
                            <i class="material-icons left">&#xE314;</i>
                            <i class="material-icons right">&#xE315;</i>
                        </div>
                    {/block}
                {/block}

                <div id="blockHelp">
                    <p class="title">{l s="Besoin d'aide ?" d='Shop.Theme.Catalog'}</p>
                    <p>{$blockHelp->content nofilter}</p>
                </div>

                <div id="blockDescription">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#desc"
                                role="tab">{l s="Description" d='Shop.Theme.Catalog'}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#why"
                                role="tab">{l s="Comment commander ?" d='Shop.Theme.Catalog'}</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="desc" role="tabpanel">{$product.description nofilter}</div>
                        <div class="tab-pane" id="why" role="tabpanel">
                            {$blockHowPurchase->content nofilter}
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-lg-8" id="blockContent">

                {*{block name='product_discounts'}*}
                    {*{include file='catalog/_partials/product-discounts.tpl'}*}
                {*{/block}*}


                <div class="product-actions">



                    {block name='product_buy'}
                        <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh" autocomplete="off"
                            enctype="multipart/form-data">
                            <input type="hidden" name="token" value="{$static_token}">
                            <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                            <input type="hidden" name="id_customization" value="{$product.id_customization}"
                                id="product_customization_id">

                            <div class="col-lg-6">
                                {block name='product_variants'}
                                    {include file='catalog/_partials/product-variants.tpl'}
                                {/block}

                                {if $product.is_customizable && count($product.customizations.fields)}
                                    {block name='product_customization'}
                                        {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
                                    {/block}
                                {/if}
                            </div>

                            <div class="col-lg-6 colPrice">
                                <div id="blockPriceAddCart">

                                    <div id="blockPrice">
                                        {block name='product_prices'}
                                            {include file='catalog/_partials/product-prices.tpl'}
                                        {/block}
                                    </div>

                                    {block name='product_add_to_cart'}
                                        {include file='catalog/_partials/product-add-to-cart-custom.tpl'}
                                    {/block}


                                    {block name='product_refresh'}
                                        <input class="product-refresh ps-hidden-by-js" name="refresh" type="submit"
                                            value="{l s='Refresh' d='Shop.Theme.Actions'}">
                                    {/block}

                                </div>

                                {hook h='displayProductButtons' product=$product}

                                <div id="blockContactProduct">
                                    {l s="NOS CONSEILS & NOTRE EXPERTISE" d='Shop.Theme.Actions'}
                                    <span class="tel">{$shop.phone}</span>
                                </div>

                            </div>

                        </form>



                    {/block}
                </div>

            </div>
        </div>
    </div>
</section>
{*{if $manufacturer_image_url}*}
    {*<section id="logoBrand" class="row">*}
    {*<div class="col-md-6 offset-md-6 blockContent">*}
    {*<img src="{$manufacturer_image_url}" />*}
    {*</div>*}
    {*</section>*}
{*{/if}*}

{*{if $product.description}*}
    {*<section id="productDescription" class="row">*}
    {*<div class="wrapper">*}
    {*<div class="product-description col-md-8">*}
    {*{block name='product_description'}*}
        {*<h2 class="titleProduct">{$product.name}</h2>*}
        {*{$product.description nofilter}*}
    {*{/block}*}
    {*</div>*}

    {*<div class="product-photo col-md-4">*}
    {*{if !empty($product.images[1])}*}
        {*<img src="{$product.images[1].bySize.large_default.url}" alt="{$product.images[1].legend}" title="{$product.images[1].legend}" itemprop="image" class="photoProduct hidden-sm-down" id="photo1" />*}
    {*{else}*}
        {*{if !empty($product.images[0])}*}
            {*<img src="{$product.images[0].bySize.large_default.url}" alt="{$product.images[0].legend}" title="{$product.images[0].legend}" itemprop="image" class="photoProduct hidden-sm-down" id="photo0" />*}
        {*{/if}*}
    {*{/if}*}

    {*{block name='product_attachments'}*}
        {*{if $product.attachments}*}

            {*<section class="product-attachments">*}
            {*<h3 class="h5 text-uppercase">{l s='DOCUMENTS À TÉLÉCHARGER' d='Shop.Theme.Actions'}</h3>*}
            {*{foreach from=$product.attachments item=attachment}*}
                {*<div class="attachment">*}
                {*<a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a>*}
                {*<p>{$attachment.description}</p*}
                {*<a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">*}
                {*{l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})*}
                {*</a>*}
                {*</div>*}
            {*{/foreach}*}
            {*</section>*}
        {*{/if}*}
    {*{/block}*}

    {*{if $packItems}*}
        {*<div id="productPackContain" >*}
        {*{block name='product_pack'}*}
            {*<div class="product-pack">*}
            {*<h5 class="title">{l s='This pack contains' d='Shop.Theme.Catalog'}</h5>*}
            {*{foreach from=$packItems item="product_pack"}*}
                {*{block name='product_miniature'}*}
                    {*{include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack}*}
                {*{/block}*}
            {*{/foreach}*}
            {*</div>*}
        {*{/block}*}
        {*</div>*}
    {*{/if}*}
    {*</div>*}
    {*</div>*}
    {*</section>*}
{*{/if}*}