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

<div id="main">
    <section itemscope itemtype="https://schema.org/Product">

        <meta itemprop="name" content="{$product.name}" />
        <link itemprop="image" href="{$product.cover.bySize.large_default.url}" />
        <meta itemprop="description" content="{$page.meta.description|regex_replace:"/[\r\n]/" : " "}" />
        <meta itemprop="sku" content="{$product.reference}" />
        <meta itemprop="category" content="{$product.category_name}" />
        <div itemprop="brand" itemtype="https://schema.org/Brand" itemscope>
            <meta itemprop="name" content="{if $product_manufacturer->name}{$product_manufacturer->name|escape:'html':'UTF-8'}{else}{$shop.name}{/if}" />
        </div>

        <div class="d-md-block d-none">
            {include file='_partials/reinsurance-product.tpl'}
        </div>

        {include file='_partials/breadcrumb.tpl'}

        <div class="row wrapper" id="wrapperContent">

            <div class="col-lg-7 col-md-6" id="blockPhotos">

                <div class="labelsList">
                    <button class="backCat d-md-block d-none" onclick="history.back()">
                        <i class="material-icons">&#xE314;</i> {l s='Retour à la catégorie' d='Shop.Theme.Catalog'}
                    </button>
                    {if $product.id_manufacturer == 7}
                        <img src="{$urls.img_url}reseller-{$product.id_manufacturer}.png" class="reseller-logo-partner"
                            alt="{l s='Cardalis : Partenaire Zebra' d='Shop.Theme.Catalog'}">
                    {/if}
                    {if $product.id_manufacturer == 9}
                        <img src="{$urls.img_url}reseller-{$product.id_manufacturer}.png" class="reseller-logo-partner"
                            alt="{l s='Cardalis : Partenaire IDP Smart' d='Shop.Theme.Catalog'}">
                    {/if}
                    {if $product.id_manufacturer == 6}
                        <img src="{$urls.img_url}reseller-{$product.id_manufacturer}.png" class="reseller-logo-partner"
                            alt="{l s='Cardalis : Partenaire Fargo' d='Shop.Theme.Catalog'}">
                    {/if}
                    {foreach from=$product.features item=feature}
                        {if $feature.id_feature == "11"}
                            {if $feature.value == "1"}
                                <span class="labelPromo labelFlag">
                                    {l s='Promo ' d='Shop.Theme.Catalog'}
                                </span>
                            {/if}
                            {if $feature.value == "2"}
                                <span class="labelFinDeSerie labelFlag">
                                    {l s='Fin de série ' d='Shop.Theme.Catalog'}
                                </span>
                            {/if}
                        {/if}

                        {if $feature.id_feature == "12"}
                            {if $feature.value == "1"}
                                <div class="madeInFrance labelFlag">
                                    <img src="{$urls.img_url}flagMadeInFrance.jpg" alt="Logo made in france" />
                                    <span>Made in France</span>
                                </div>
                            {/if}
                        {/if}
                        {if $feature.id_feature == "75"}
                            {assign var="urlRedirectionProduct" value=$feature.value}
                        {/if}
                    {/foreach}
                </div>

                <div class="labelsListRight">
                    {foreach from=$product.features item=feature}
                        {if $feature.id_feature == "58"}
                            <div class="labelEdikio">
                                <img src="{$urls.img_url}label-edikio-{$feature.value}.png" alt="{$feature.value}"
                                    class="img-fluid" />
                            </div>
                        {/if}
                        {if $feature.id_feature == "62"}
                            <span class="labelCustom">
                                <img src="{$urls.img_url}label-personnalisable.png" alt="{$feature.value}" class="img-fluid" />
                            </span>
                        {/if}
                        {if $feature.id_feature == "17"}
                            <span class="labelECO">
                                <img src="{$urls.img_url}label-eco.png" alt="Produit éco-responsable" class="img-fluid" />
                            </span>
                        {/if}
                        {if $feature.id_feature == "60"}
                            <div class="labelConnexionType">
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


                {block name='page_content_container'}
                    {block name='page_content'}
                        {block name='product_cover_tumbnails'}
                            {include file='catalog/_partials/product-cover-thumbnails.tpl'}
                        {/block}
                    {/block}
                {/block}

            </div>

            <div class="col-lg-5 col-md-6" id="blockContent">

                {block name='page_header_container'}
                    {block name='page_header'}
                        <div class="blockTitle">
                            <span class="ref">{l s="Référence" d='Shop.Theme.Catalog'} : {$product.reference}</span>
                            <h1 class="titleProduct">{block name='page_title'}{$product.name}{/block}</h1>
                        </div>
                    {/block}
                {/block}

                <div class="product-actions">

                    {block name='product_buy'}
                        <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
                            <input type="hidden" name="token" value="{$static_token}">
                            <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                            <input type="hidden" name="id_customization" value="{$product.id_customization}"
                                id="product_customization_id">

                            {block name='product_add_to_cart'}
                                {include file='catalog/_partials/product-add-to-cart.tpl'}
                            {/block}

                            {block name='product_refresh'}
                                <input class="product-refresh ps-hidden-by-js" name="refresh" type="submit"
                                    value="{l s='Refresh' d='Shop.Theme.Actions'}">
                            {/block}

                        </form>
                    {/block}
                </div>

                {hook h='displayProductButtons' product=$product}


                <div id="blockTabProduct" class="w-100">
                    <ul class="nav nav-tabs w-100" role="tablist">
                        <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                            <a class="nav-link active" id="desc-tab" data-toggle="tab" href="#desc" role="tab"
                                aria-controls="desc" aria-selected="true">
                                <i class="fa fa-align-left d-lg-none d-md-block" aria-hidden="true"></i>
                                <span class="d-lg-block d-none">DESCRIPTION PRODUIT</span></a>
                        </li>
                        {if $totcustomfields_display_ce_qui_est_inclus|@count_characters > 55}
                            <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                                <a class="nav-link" id="include-tab" data-toggle="tab" href="#include" role="tab"
                                    aria-controls="include" aria-selected="false">
                                    <i class="fa fa-inbox d-lg-none d-md-block" aria-hidden="true"></i>
                                    <span class="d-lg-block d-none">CE QUI EST INCLUS</span></a>
                            </li>
                        {/if}
                        {if $product.attachments}
                            <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                                <a class="nav-link" id="download-tab" data-toggle="tab" href="#download" role="tab"
                                    aria-controls="download" aria-selected="false">
                                    <i class="fa fa-download d-lg-none d-md-block" aria-hidden="true"></i>
                                    <span class="d-lg-block d-none">DOCUMENTS À TÉLÉCHARGER</span></a>
                            </li>
                        {/if}
                        {if $totcustomfields_display_compatibilite_rubans|@count_characters > 55}
                            <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                                <a class="nav-link" id="ribbons-tab" data-toggle="tab" href="#ribbons" role="tab"
                                    aria-controls="ribbons" aria-selected="false">
                                    <img src="{$urls.img_url}ink-icon.svg" class="d-lg-none d-md-block icon">
                                    <span class="d-lg-block d-none">COMPATIBILITÉ RUBANS</span></a>
                            </li>
                        {/if}
                        {if $totcustomfields_display_compatibilite_imprimantes|@count_characters > 55}
                            <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                                <a class="nav-link" id="printer-tab" data-toggle="tab" href="#printer" role="tab"
                                    aria-controls="printer" aria-selected="false">
                                    <i class="fa fa-print d-lg-none d-md-block" aria-hidden="true"></i>
                                    <span class="d-lg-block d-none">COMPATIBILITÉ IMPRIMANTES</span></a>
                            </li>
                        {/if}
                        {if $totcustomfields_display_utilisation|@count_characters > 55}
                            <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                                <a class="nav-link" id="use-case-tab" data-toggle="tab" href="#use-case" role="tab"
                                    aria-controls="use-case" aria-selected="false">CAS D'UTILISATION</a>
                        </li>
                        {/if}
                        {if $totcustomfields_display_personnalisation|@count_characters > 55}
                        <li class="nav-item" role="presentation">
                            <a class="nav-link d-flex justify-content-center align-items-center" id="custom-tab"
                                data-toggle="tab" href="#custom" role="tab" aria-controls="custom"
                                aria-selected="false">
                                <img src="{$urls.img_url}label-personnalisable.png" alt="Produit personnalisable"
                                    class="img-fluid" width="25" />
                                PERSONNALISATION
                            </a>
                        </li>
                        {/if}
                        {if $totcustomfields_display_ecologique|@count_characters > 55}
                        <li class="nav-item" role="presentation">
                            <a class="nav-link d-flex justify-content-center align-items-center" id="ecolo-tab"
                                data-toggle="tab" href="#ecolo" role="tab" aria-controls="custom" aria-selected="false">
                                <img src="{$urls.img_url}label-ECO.png" alt="Produit éco-responsable" class="img-fluid"
                                    width="25" />
                                ECO-RESPONSABLE
                            </a>
                        </li>
                        {/if}
                    </ul>

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="desc" role="tabpanel" aria-labelledby="desc-tab">
                            {block name='product_description_short'}
                            <div id="product-description-short-{$product.id}"
                                class="blockShortDesc">
                                {$product.description_short nofilter}
                            </div>
                            {/block}
                        </div>

                        {if $totcustomfields_display_ce_qui_est_inclus|@count_characters > 55}
                        <div class="tab-pane fade" id="include" role="tabpanel" aria-labelledby="include-tab">
                            {$totcustomfields_display_ce_qui_est_inclus nofilter}
                        </div>
                        {/if}

                        {if $product.attachments}
                        <div class="tab-pane fade" id="download" role="tabpanel" aria-labelledby="download-tab">
                            {foreach from=$product.attachments item=attachment}
                            <div class="attachment">
                                <a
                                    href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                                    <i class="fa fa-file-pdf-o" aria-hidden="true"></i> {$attachment.name}
                                </a>
                            </div>
                            {/foreach}
                        </div>
                        {/if}

                        {if $totcustomfields_display_compatibilite_rubans|@count_characters > 55}
                        <div class="tab-pane fade" id="ribbons" role="tabpanel" aria-labelledby="ribbons-tab">
                            {$totcustomfields_display_compatibilite_rubans nofilter}
                        </div>
                        {/if}

                        {if $totcustomfields_display_compatibilite_imprimantes|@count_characters > 55}
                        <div class="tab-pane fade" id="printer" role="tabpanel" aria-labelledby="printer-tab">
                            {$totcustomfields_display_compatibilite_imprimantes nofilter}
                        </div>
                        {/if}

                        {if $totcustomfields_display_utilisation|@count_characters > 55}
                        <div class="tab-pane fade" id="use-case" role="tabpanel" aria-labelledby="use-case-tab">
                            {$totcustomfields_display_utilisation nofilter}
                        </div>
                        {/if}

                        {if $totcustomfields_display_personnalisation|@count_characters > 55}
                        <div class="tab-pane fade" id="custom" role="tabpanel" aria-labelledby="custom-tab">
                            <div class="d-flex">
                                <div>
                                    {$totcustomfields_display_personnalisation nofilter}
                                </div>
                                <img src="{$urls.img_url}img-custom-tab.jpg" class="img-fluid" alt="Produits personnalisés" />
                            </div>
                        </div>
                        {/if}

                        {if $totcustomfields_display_ecologique|@count_characters > 55}
                        <div class="tab-pane fade" id="ecolo" role="tabpanel" aria-labelledby="ecolo-tab">
                            <div class="d-flex">
                                <div>
                                    {$totcustomfields_display_ecologique nofilter}
                                </div>
                                <img src="{$urls.img_url}img-eco-tab.jpg" class="img-fluid" alt="Produits écologiques" />
                            </div>
                        </div>
                        {/if}
                    </div>
                </div>

            </div>

        </div>
    </section>

    <div class="pl-3 pr-3 p-md-0">
        <div id="blockTabDescription" class="mt-4">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                    <a class="nav-link active" id="descfull-tab" data-toggle="tab" href="#descfull" role="tab"
                        aria-controls="descfull" aria-selected="true">
                        <span>Description</span></a>
                </li>
                <li class="nav-item d-flex justify-content-center align-items-center" role="presentation">
                    <a class="nav-link" id="similar-tab" data-toggle="tab" href="#similarproducts" role="tab"
                        aria-controls="similar" aria-selected="false">
                        <span>Produits similaires</span></a>
                </li>
            </ul>
        </div>

        <div class="tab-content" id="myTabDescription">
            <div class="tab-pane fade show active" id="descfull" role="tabpanel" aria-labelledby="descfull-tab">
                {if $product.description}
                <section id="productDescription">
                    <div class="row">
                        <div class="wrapper d-flex flex-wrap">
                            <div class="product-description col-lg-8">
                                {block name='product_description'}
                                {$product.description nofilter}
                                {/block}
                            </div>
                            <div class="product-video col-lg-4 d-flex align-items-center">
                                {if $totcustomfields_display_video|@count_characters > 55}
                                {$totcustomfields_display_video nofilter}
                                {/if}
                            </div>
                        </div>
                    </div>
                </section>
                {/if}

                {if $product.id == "3485" || $product.id == "3486" || $product.id == "3487"}
                <section id="sectionEasyBadge">
                    <div class="row wrapper justify-content-center">
                        {assign var=blockEasyBadge value=CMS::getCMSContent(239, 2, true)}
                        {$blockEasyBadge.content nofilter}
                    </div>
                </section>
                {/if}

                {if $totcustomfields_display_notre_avis|@count_characters > 55}
                <section id="sectionReviewCardalis">
                    <div class="row wrapper flex-column">
                        {$totcustomfields_display_notre_avis nofilter}
                    </div>
                </section>
                {/if}

            </div>
            <div class="tab-pane" id="similarproducts" role="tabpanel" aria-labelledby="similar-tab">
                {block name='product_footer'}
                {hook h='displayFooterProduct' product=$product category=$category}
                {/block}
            </div>

        </div>

    </div>

</div>

{* {hook h='displayFooterProduct' product=$product category=$category} *}

{block name='warranty_modal'}
{* offcanvas search filter *}
<div class="modal fade" id="warranty_modal" tabindex="-1" role="dialog" data-modal-hide-mobile>
    <div class="modal-dialog modal-dialog__offcanvas modal-dialog__offcanvas--right" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                    aria-label="{l s='Close' d='Shop.Theme.Global'}">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                {assign var=blockPopupWarrantyEvolis value=CMS::getCMSContent(178, 2, true)}
                {$blockPopupWarrantyEvolis.content nofilter}
            </div>
        </div>
    </div>
</div>
{* end search filter *}
{/block}

{block name='double_exchange_modal'}
{* offcanvas search filter *}
<div class="modal fade" id="double_exchange_modal" tabindex="-1" role="dialog" data-modal-hide-mobile>
    <div class="modal-dialog modal-dialog__offcanvas modal-dialog__offcanvas--right" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                    aria-label="{l s='Close' d='Shop.Theme.Global'}">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
                    {assign var=blockPopupWarrantyCardalis value=CMS::getCMSContent(179, 2, true)}
                    {$blockPopupWarrantyCardalis.content nofilter}
                </div>
            </div>
        </div>
    </div>
    {* end search filter *}
{/block}