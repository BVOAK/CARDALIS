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

<section id="sectionHead">
    <div class="row">
        <div class="wrapper d-flex align-items-center flex-wrap">
            <div class="col-lg-3">
                <div class="blockTitle">
                    <h1 class="titleCat">
                        {$block33901->meta_title nofilter}
                    </h1>
                </div>
                <div class="description">
                    {$block33901->content nofilter}
                </div>
            </div>
            <div class="img col-lg-9 text-center">
                <img class="img-fluid" src="{$urls.img_url}tour-de-cou-header.png"
                    alt="{$block33901->meta_title nofilter}" />
            </div>
        </div>
    </div>
</section>

<section id="sectionLanyards">
    <div class="row">
        <div class="wrapper">
            <div class="d-flex flex-wrap blockLanyardsList">
                <div class="col-lg-8">
                    <div class="blockTitle text-center">
                        <h2 class="titleSec">
                            {$block33902->meta_title nofilter}
                        </h2>
                    </div>
                    <div id="blockLanyardsClassicsList" class="d-flex">
                        {$block33902->content nofilter}
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blockTitle text-center">
                        <h2 class="titleSec">
                            {$block33908->meta_title nofilter}
                        </h2>
                    </div>
                    <div id="blockLanyardsCustomList" class="d-flex">
                        {$block33908->content nofilter}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="sectionReviewsLanyards" class="sectionReviews">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block33903->meta_title nofilter}
                </h2>
            </div>
            <div class="descriptionLanyardsList text-center">
                {* {$block33903->content nofilter} *}
                
            </div>
        </div>
    </div>
</section>

<section id="sectionLanyardsAvantages">
    <div class="row">
        <div class="wrapper d-flex align-items-center flex-wrap">
            <div class="col-lg-6">
                <div class="description">
                    {$block33910->content nofilter}
                </div>
            </div>
            <div class="img col-lg-6 text-center">
                <img class="img-fluid" src="{$urls.img_url}tour-de-cou-cardalis.jpg"
                    alt="{$block33910->meta_title nofilter}" />
            </div>
        </div>
    </div>
</section>

<section id="sectionBraceletHead">
    <div class="row">
        <div class="wrapper d-flex align-items-center">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="blockTitle">
                    <h1 class="titleCat">
                        {$block33906->meta_title nofilter}
                    </h1>
                </div>
                <div class="description">
                    {$block33906->content nofilter}
                </div>
            </div>
        </div>
    </div>
</section>

<section id="sectionBracelets">
    <div class="row">
        <div class="wrapper">
            <div class="d-flex flex-wrap blockBraceletsList">
                <div class="col-lg-7">
                    <div class="blockTitle text-center">
                        <h2 class="titleSec">
                            {$block33907->meta_title nofilter}
                        </h2>
                    </div>
                    <div id="blockBraceletsStandardsList" class="d-flex">
                        {$block33907->content nofilter}
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="blockTitle text-center">
                        <h2 class="titleSec">
                            {$block33909->meta_title nofilter}
                        </h2>
                    </div>
                    <div id="blockBraceletsOthersList" class="d-flex">
                        {$block33909->content nofilter}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="products" class="sectionProducts">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <p class="titleSec">
                    {l s="NOS PRODUITS INCONTOURNABLES"}
                </p>
            </div>
            {block name='product_list'}
                <div id="sliderCategoryProducts" data-number-products="{$listing|@count}">
                    {assign var="productscount" value=$listing|count}
                    <div class="products justify-content-center">
                        {foreach from=$listing.products item="product"}
                            {include file="catalog/_partials/miniatures/product.tpl" product=$product}
                        {/foreach}
                    </div>
                </div>
            {/block}
        </div>
    </div>
</section>