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

<section id="main" itemscope itemtype="https://schema.org/Product" class="row">

    <meta itemprop="url" content="{$product.url}">

    <div class="wrapper">

        <div class="col-md-5" id="blockPhotos">

            <a class="backCat"
                href="{$link->getCategoryLink($category->id_category, $category->link_rewrite)|escape:'html':'UTF-8'}">
                <i class="material-icons">&#xE314;</i> {l s='Retour à la catégorie' d='Shop.Theme.Catalog'}
            </a>

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

        </div>

        <div class="col-md-7" id="blockContent">
            <div class="col-lg-7 col-md-12 blockLeft">
                {block name='page_header_container'}
                    {block name='page_header'}
                        <div class="blockTitle">
                            <span class="ref">{l s="Référence" d='Shop.Theme.Catalog'} : {$product.reference}</span>
                            <h1 class="titleProduct" itemprop="name">{block name='page_title'}{$product.name}{/block}</h1>
                            {if $product_manufacturer->name != ""}
                                <h2 class="titleBrand">{l s="de" d='Shop.Theme.Catalog'} {$product_manufacturer->name}</h2>
                            {/if}
                        </div>
                    {/block}
                {/block}

                {block name='product_description_short'}
                    <div id="product-description-short-{$product.id}" itemprop="description" class="blockShortDesc">
                        {$product.description nofilter}
                    </div>

                    {block name='product_features'}
                        <div class="titleFeaturesCustomProduct">{l s="Caractéristiques du produit" d='Shop.Theme.Catalog'}</div>
                        {$product.description_short nofilter}
                    {/block}
                {/block}

            </div>
            <div class="col-lg-5 col-md-12 blockRight">

                <div class="product-actions">

                    <div id="blockContactReduced">
                        <p class="w-100">Pour toute question ou demande de devis</p>
                        <div class="itemContact d-flex flex-wrap">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                            <div class="text">
                                <span>Appelez nous au</span>
                                <a href="tel:0422140086">04 22 14 00 86</a>
                            </div>
                        </div>
                        <div class="itemContact d-flex flex-wrap">
                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                            <div class="text">
                                <span>Contactez nous par email</span>
                                <a href="mailto:"contact@cardalis.fr">contact@cardalis.fr</a>
                            </div>
                        </div>
                    </div>

                </div>

                {hook h='displayProductButtons' product=$product}

            </div>
        </div>
    </div>
</section>

{assign var="ContentStep" value=CMS::getCMSContent(88, null, null)}
<section class="container" id="sectionCommandeLivraison">
    <div class="row">
        <div class="wrapper">
            <p class="title">DE LA COMMANDE A LA LIVRAISON</p>
            {$ContentStep.content nofilter}
        </div>
    </div>
</section>

<div id="blockShippingDelayStep" class="d-none">
    {foreach from=$product.features item=feature}
        {if $feature.id_feature == "40"}
            {$feature.value}
        {/if}
    {/foreach}
</div>