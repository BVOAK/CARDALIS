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
<div class="row" id="blockProductsList">
    <div class="wrapper d-flex">

        <section id="leftColumn" class="hidden-sm-down">
            {hook h='displayLeftColumnCat'}
        </section>

        <section id="products" class="">

            {block name='product_list_header'}

                <div id="headerCategory">
                    <div class="blockTitle">

                        <h1 class="titleCat">
                            {if $totcustomfields_display_title_h1|@count_characters > 55}
                                {$totcustomfields_display_title_h1|strip_tags nofilter}
                            {else}
                                {$category.name nofilter}
                            {/if}
                        </h1>
                    </div>

                    <div class="blockDesc">
                        <div id="category-description">
                            {$category.description nofilter}
                            {if $totcustomfields_display_description_longue|@count_characters > 55}
                                <a href="#sectionDescriptionLongue" class="readMoreBtn js-scrollTo">{l s="Lire la suite"}</a>
                            {/if}
                        </div>
                    </div>
                </div>
            {/block}

            {if $listing.products|count}

                {block name='product_list_top'}
                    {include file='catalog/_partials/products-top.tpl' listing=$listing}
                {/block}

                {block name='product_list_active_filters'}
                    <div id="" class="hidden-sm-down">
                        {$listing.rendered_active_filters nofilter}
                    </div>
                {/block}

                <div id="">
                    {block name='product_list'}
                        {include file='catalog/_partials/products.tpl' listing=$listing}
                    {/block}
                </div>

            {/if}
        </section>

    </div>
</div>

<section id="sectionProcedesImpression">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block34101->meta_title nofilter}
                </h2>
            </div>
            <div id="blockProcedesImpressionList" class="d-flex flex-wrap">
                {$block34101->content nofilter}
            </div>
        </div>
    </div>
</section>

<section id="sectionLanyardsOptions">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block33904->meta_title nofilter}
                </h2>
            </div>
            <div id="blockLanyardsOptionsList" class="d-flex flex-wrap">
                {$block33904->content nofilter}
            </div>
        </div>
    </div>
    <div class="row" id="blockInfosLanyardsCustom">
        <div class="wrapper">
            <div class="description">
                {$block33905->content nofilter}
            </div>
        </div>
    </div>
</section>

<section id="sectionLanyardsType">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block34102->meta_title nofilter}
                </h2>
            </div>
            <div id="blockLanyardsTypeList" class="d-flex justify-content-center">
                {$block34102->content nofilter}
            </div>
        </div>
    </div>
    <div class="row">
        <div class="wrapper blockContactInfoLanyards">
            {$block34103->content nofilter}
            <a href="{$urls.pages.contact}">Nous contacter</a>
        </div>
    </div>
</section>