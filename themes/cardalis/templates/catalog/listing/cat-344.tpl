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
    <div class="row wrapper">
        <div class="col-lg-7 blockText">
            <h1 class="titleCat">
                {$block33906->meta_title nofilter}
            </h1>
            <div class="description">
                {$block33906->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5 text-center">
            <img class="img-fluid" src="{$urls.img_url}bracelet-header.png" alt="{$block33906->meta_title nofilter}" />
        </div>
    </div>
</section>

<section id="sectionBracelets" class="padSection50 u-bor-bot">
    <div class="row wrapper">
        <div class="col-lg-7 p-0">
            {$block33907->content nofilter}
        </div>
        <div class="col-lg-5 mt-lg-0 mt-4 p-0">
            {$block33909->content nofilter}
        </div>
    </div>
</section>

<section id="products" class="sectionProducts">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <p class="titleSec">
                    {l s="Les produits phares de Cardalis"}
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