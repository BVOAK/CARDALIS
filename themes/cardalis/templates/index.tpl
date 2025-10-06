cd{**
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
{extends file='page.tpl'}

{block name='breadcrumb'}{/block}

{block name='page_content_container'}
    <div id="content" class="page-home">
        {block name='page_content_top'}{/block}
        {block name='page_content'}
            <div id="blockHomeTop">
                <section class="container p-0">

                    <div class="row wrapper" id="sectionSlider">
                    {hook h='CETemplate' id=28}

                        {* <div class="col-lg-9 col-md-8 p-0">
                            {widget name="ps_imageslider"}
                        </div>
                        <div class="col-lg-3 col-md-4 p-0 pl-md-3">
                            {widget name="ps_banner"}
                        </div> *}
                    </div>


                    <div class="row wrapper flex-column d-lg-block d-none">
                        {hook h="displayHomeTop"}
                        {widget name="pm_advancedsearch4" id_search_engine="37"}
                        {include file='_partials/reinsurance-product.tpl'}
                    </div>
                </section>

                <section class="container catContent pb-4" id="sectionCats">
                    {include file='home/list-categories.tpl'}

                    <div class="row wrapper flex-column p-1 d-lg-none d-md-block">
                        {hook h="displayHomeTop"}
                        {widget name="pm_advancedsearch4" id_search_engine="37"}
                    </div>

                </section>
            </div>

            <section class="container hidden-md-down" id="sectionBrands">
                <div class="row wrapper">
                    {include file='home/brands.tpl'}
                </div>
            </section>
           {*  <section class="container hidden-md-down sectionReviews" id="sectionReviews">
                <div class="row wrapper">
                    {include file='home/reviews.tpl'}
                </div>
            </section> *}
            <section class="container-fluid bgGrey" id="sectionBlog">
                <div class="row wrapper p-0">
                    {$HOOK_HOME nofilter}
                </div>
            </section>

            {include file='home/cardalis.tpl'}

        {/block}
    </div>
{/block}