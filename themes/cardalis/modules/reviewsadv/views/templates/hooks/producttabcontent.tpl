{*
/**
 * mitrocops
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the EULA
 * that is bundled with this package in the file LICENSE.txt.
 *
 /*
 * 
 * @author    mitrocops
 * @category content_management
 * @package reviewsadv
 * @copyright Copyright mitrocops
 * @license   mitrocops
 */

*}

<section id="blockReviewsProduct">
    <div class="row">
        <div class="wrapper">
            {if $reviewsadvptabs_type == 1}

                {if $reviewsadvrvis_on == 1}

                    {if $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1 || $reviewsadvratings_on == 1}
                        <h3 class="mainTitle" id="#idTab777">
                            {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"*}
                            {*class="title-rating-one-star"*}
                            {*alt="{l s='Reviews' mod='reviewsadv'}"/>*}
                            &nbsp;{l s='Reviews' mod='reviewsadv'}
                            <span id="count-review-tab">({$reviewsadvcount_reviews|escape:'htmlall':'UTF-8'})</span>
                        </h3>

                    {/if}

                {/if}

            {/if}

            {if $reviewsadvrvis_on == 1}

                {if $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1 || $reviewsadvratings_on == 1}
                    <div id="idTab777" {if $reviewsadvis17 == 1}class="block-categories" {else}class="tab-pane"{/if}>


                        <!-- reviews template -->

                        <div id="shopify-product-reviews">

                            <div class="spr-container {if $reviewsadvis16 == 1}row-custom{/if}">


                                <div class="spr-header spr-summary {if $reviewsadvis16 == 1}col-sm-3-custom-product-page{else}spr-summary15{/if}">

                                    <a class="buttonCustom" href="javascript:void(0)" onclick="show_form_review(1)">
                                    <span>
                                        <i class="icon-pencil"></i>
                                        {l s='Write a Review' mod='reviewsadv'}
                                    </span>
                                    </a>

                                    <span class="spr-starrating spr-summary-starrating">

                                    <b class="total-rating-review">{l s='Total rating' mod='reviewsadv'}:</b>
                                    <br/>

                                        {section name=ratid loop=5}
                                            {if $smarty.section.ratid.index < $reviewsadvavg_rating}
                                                <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                     alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>


                                                                                                                  {else}


                                          <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                               alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                            {/if}
                                        {/section}

                                        <div class="gsniprev-block-ratings-text">
                                    <span>{$reviewsadvavg_decimal|escape:'htmlall':'UTF-8'}</span>/<span>5</span>
                                  </div>

                              </span>



                                    <span class="spr-summary-caption">
                          <span class="spr-summary-actions-togglereviews">
                              {l s='Based on' mod='reviewsadv'} <span
                                      class="font-weight-bold">{$reviewsadvcount_reviews|escape:'htmlall':'UTF-8'}</span> {$reviewsadvtext_reviews|escape:'htmlall':'UTF-8'}
                          </span>
                      </span>


                                    <div class="row-custom filter-reviews-reviewsadv {if $reviewsadvis16 == 0}filter-testimonials-14{/if} product-reviews-filter-block">

                                        <div class="col-sm-12-custom">
                                            <b class="filter-txt-items-block">{l s='Filter' mod='reviewsadv'}:</b>
                                        </div>
                                        <div class="col-sm-12-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 5}active-items-block{/if}">
                                            {if $reviewsadvfive>0}
                                            <a href="{$reviewsadvproduct_url|escape:'html':'UTF-8'}?frat=5{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                                                {/if}
                                                {section name="test" loop=5}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                <span class="count-items-block {if $reviewsadvfive==0}text-decoration-none{/if}">({$reviewsadvfive|escape:'htmlall':'UTF-8'}
                                                    )</span>
                                                {if $reviewsadvfive>0}
                                            </a>
                                            {/if}
                                        </div>
                                        <div class="col-sm-12-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 4}active-items-block{/if}">
                                            {if $reviewsadvfour>0}
                                            <a href="{$reviewsadvproduct_url|escape:'html':'UTF-8'}?frat=4{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                                                {/if}
                                                {section name="test" loop=4}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                {section name="test" loop=1}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}

                                                <span class="count-items-block {if $reviewsadvfour==0}text-decoration-none{/if}">({$reviewsadvfour|escape:'htmlall':'UTF-8'}
                                                    )</span>
                                                {if $reviewsadvfour>0}
                                            </a>
                                            {/if}
                                        </div>
                                        <div class="col-sm-12-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 3}active-items-block{/if}">
                                            {if $reviewsadvthree>0}
                                            <a href="{$reviewsadvproduct_url|escape:'html':'UTF-8'}?frat=3{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                                                {/if}
                                                {section name="test" loop=3}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                {section name="test" loop=2}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                <span class="count-items-block {if $reviewsadvthree==0}text-decoration-none{/if}">({$reviewsadvthree|escape:'htmlall':'UTF-8'}
                                                    )</span>
                                                {if $reviewsadvthree>0}
                                            </a>
                                            {/if}
                                        </div>
                                        <div class="col-sm-12-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 2}active-items-block{/if}">
                                            {if $reviewsadvtwo>0}
                                            <a href="{$reviewsadvproduct_url|escape:'html':'UTF-8'}?frat=2{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                                                {/if}
                                                {section name="test" loop=2}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                {section name="test" loop=3}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}

                                                <span class="count-items-block {if $reviewsadvtwo==0}text-decoration-none{/if}">({$reviewsadvtwo|escape:'htmlall':'UTF-8'}
                                                    )</span>
                                                {if $reviewsadvtwo>0}
                                            </a>
                                            {/if}
                                        </div>
                                        <div class="col-sm-12-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 1}active-items-block{/if}">
                                            {if $reviewsadvone>0}
                                            <a href="{$reviewsadvproduct_url|escape:'html':'UTF-8'}?frat=1{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                                                {/if}
                                                {section name="test" loop=1}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                {section name="test" loop=4}
                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                         alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                                                {/section}
                                                <span class="count-items-block {if $reviewsadvone==0}text-decoration-none{/if}">({$reviewsadvone|escape:'htmlall':'UTF-8'}
                                                    )</span>
                                                {if $reviewsadvone>0}
                                            </a>
                                            {/if}
                                        </div>

                                        {if $reviewsadvfrat}
                                            <div class="col-sm-12-custom">
                                                <a href="{$reviewsadvproduct_url|escape:'html':'UTF-8'}"
                                                   class="reset-items-block">
                                                    <i class="fa fa-refresh"></i>{l s='Reset' mod='reviewsadv'}
                                                </a>
                                            </div>
                                        {/if}


                                    </div>

                                </div>


                                <div class="{if $reviewsadvis16 == 1}spr-content col-sm-9-custom{else}spr-content15{/if}">


                                    {literal}
                                    <script type="text/javascript">
                                        var module_dir = '{/literal}{$module_dir|escape:'htmlall':'UTF-8'}{literal}';
                                        var reviewsadv_star_active = '{/literal}{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}{literal}';
                                        var reviewsadv_star_noactive = '{/literal}{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}{literal}';
                                    </script>
                                    {/literal}



                                    {if $reviewsadvis15 == 0}
                                    {literal}
                                        <script type="text/javascript"
                                                src="{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}views/js/r_stars.js"></script>
                                    {/literal}
                                    {/if}
                                    {literal}
                                        <script type="text/javascript">
                                            document.addEventListener("DOMContentLoaded", function (event) {
                                                jQuery(document).ready(init_rating);

                                                $("#idTab777-my-click").click(function () {
                                                    $('.total-info-tool-product-page .btn-gsnipreview').parent().hide();
                                                });
                                            });

                                            function show_form_review(par) {

                                                $('#add-review-block').toggle();
                                                $('#no-customers-reviews').toggle();

                                                if (par == 1) {
                                                    $('.total-info-tool-product-page .btn-reviewsadv').parent().hide();
                                                } else {
                                                    $('.total-info-tool-product-page .btn-reviewsadv').parent().show();
                                                }

                                            }


                                        </script>
                                    {/literal}


                                    <div id="add-review-block" style="display: none">
                                        {if $reviewsadvid_customer == 0 && $reviewsadvwhocanadd == 'reg'}
                                            <div class="no-registered">
                                                <div class="text-no-reg">
                                                    {l s='You cannot post a review because you are not logged as a customer' mod='reviewsadv'}
                                                </div>
                                                <br/>
                                                <div class="no-reg-button">
                                                    <a href="{if $reviewsadvis_ps15 == 0}{$base_dir_ssl|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}{$reviewsadviso_lang|escape:'htmlall':'UTF-8'}/my-account{else}my-account.php{/if}{else}{$reviewsadvm_acc|escape:'htmlall':'UTF-8'}{/if}"
                                                       class="btn-reviewsadv btn-primary-reviewsadv">{l s='Log in / sign up' mod='reviewsadv'}</a>
                                                </div>

                                            </div>
                                        {elseif $reviewsadvis_buy == 0 && $reviewsadvwhocanadd == 'buy'}
                                            <div class="no-registered">
                                                <div class="text-no-reg">
                                                    {l s='Only users who already bought the product can add review.' mod='reviewsadv'}
                                                </div>
                                            </div>
                                        {else}

                                        {if $reviewsadvis_add == 1}
                                            <div class="advertise-text-review">
                                                {l s='You have already add review for this product' mod='reviewsadv'}
                                            </div>
                                        {else}




                                            {* voucher suggestions *}
                                        {if $reviewsadvvis_on == 1}
                                            <div class="advertise-text-review">
                                <span>
                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>
                                    {l s='Write a review and get voucher for discount' mod='reviewsadv'}
                                    <b>{$reviewsadvdiscount|escape:'htmlall':'UTF-8'}</b> {if $reviewsadvvaluta != '%'}
                                        <b>
                                        ({if $reviewsadvtax == 1}{l s='Tax Included' mod='reviewsadv'}{else}{l s='Tax Excluded' mod='reviewsadv'}{/if}
                                        )</b>{/if}
                                    {if $reviewsadvis_show_min == 1 && $reviewsadvisminamount}
                                        <b>({l s='Minimum amount' mod='reviewsadv'}
                                            : {$reviewsadvminamount|escape:'htmlall':'UTF-8'} {$reviewsadvcurtxt|escape:'htmlall':'UTF-8'}
                                            )</b>
                                    {/if}
                                    ,
                                    {l s='valid for' mod='reviewsadv'} {$reviewsadvsdvvalid|escape:'htmlall':'UTF-8'} {$reviewsadvdays|escape:'htmlall':'UTF-8'}
                                </span>
                                            </div>
                                        {/if}


                                        {if $reviewsadvvis_onfb == 1}
                                        <br/>
                                            <div class="advertise-text-review" id="facebook-share-review-block">
                                <span>
                                    <img width="16" height="16"
                                         src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/btn/ico-facebook.png"/>
                                    {l s='Share your review on Facebook and get voucher for discount' mod='reviewsadv'}
                                    <b>{$reviewsadvdiscountfb|escape:'htmlall':'UTF-8'}</b> {if $reviewsadvvalutafb != '%'}
                                        <b>
                                        ({if $reviewsadvtaxfb == 1}{l s='Tax Included' mod='reviewsadv'}{else}{l s='Tax Excluded' mod='reviewsadv'}{/if}
                                        )</b>{/if}

                                    {if $reviewsadvis_show_minfb == 1 && $reviewsadvisminamountfb}
                                        <b>({l s='Minimum amount' mod='reviewsadv'}
                                            : {$reviewsadvminamountfb|escape:'htmlall':'UTF-8'} {$reviewsadvcurtxtfb|escape:'htmlall':'UTF-8'}
                                            )</b>
                                    {/if}

                                    ,
                                    {l s='valid for' mod='reviewsadv'} {$reviewsadvsdvvalidfb|escape:'htmlall':'UTF-8'} {$reviewsadvdaysfb|escape:'htmlall':'UTF-8'}
                                </span>
                                            </div>
                                        {/if}
                                            {* voucher suggestions *}








                                            {** **}
                                            <div id="add-review-form-review">
                                                <form method="post"
                                                      action="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/upload.php"
                                                      enctype="multipart/form-data"
                                                      id="add_review_item_form" name="add_review_item_form">

                                                    <input type="hidden" name="action" value="add"/>
                                                    <input type="hidden" name="id_product"
                                                           value="{$reviewsadvid_product|escape:'htmlall':'UTF-8'}"/>
                                                    <input type="hidden" name="id_customer"
                                                           value="{$reviewsadvid_customer|escape:'htmlall':'UTF-8'}"/>


                                                    <div class="title-rev">
                                                        <div class="title-form-text-left">
                                                            <b>{l s='Write Your Review' mod='reviewsadv'}</b>
                                                        </div>

                                                        <input type="button" value="{l s='close' mod='reviewsadv'}"
                                                               class="btn-reviewsadv btn-primary-reviewsadv title-form-text-right"
                                                               onclick="show_form_review(0)">
                                                        <div class="clear-reviewsadv"></div>
                                                    </div>

                                                    <div id="body-add-review-form-review">


                                                        {if $reviewsadvratings_on == 1}
                                                            <br/>
                                                            {if $reviewsadvcriterions|@count > 0}

                                                                {foreach from=$reviewsadvcriterions item='criterion'}
                                                                    <label for="rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}"
                                                                           class="float-left">{$criterion.name|escape:'htmlall':'UTF-8'}
                                                                        <sup class="required">*</sup></label>
                                                                    <div class="rat rating-stars-dynamic">
                                                        <span onmouseout="read_rating_review_shop('rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}');">

                                                            <img onmouseover="_rating_efect_rev(1,0,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onmouseout="_rating_efect_rev(1,1,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onclick="rating_review_shop('rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}',1); rating_checked{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}=true; "
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt=""
                                                                 id="img_rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}_1"/>

                                                            <img onmouseover="_rating_efect_rev(2,0,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onmouseout="_rating_efect_rev(2,1,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onclick="rating_review_shop('rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}',2); rating_checked{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt=""
                                                                 id="img_rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}_2"/>

                                                            <img onmouseover="_rating_efect_rev(3,0,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onmouseout="_rating_efect_rev(3,1,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onclick="rating_review_shop('rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}',3); rating_checked{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt=""
                                                                 id="img_rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}_3"/>
                                                            <img onmouseover="_rating_efect_rev(4,0,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onmouseout="_rating_efect_rev(4,1,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onclick="rating_review_shop('rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}',4); rating_checked{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt=""
                                                                 id="img_rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}_4"/>
                                                            <img onmouseover="_rating_efect_rev(5,0,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onmouseout="_rating_efect_rev(5,1,'rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}')"
                                                                 onclick="rating_review_shop('rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}',5); rating_checked{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt=""
                                                                 id="img_rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}_5"/>
                                                        </span>
                                                                        {if strlen($criterion.description)>0}
                                                                            <div class="tip-criterion-description">{$criterion.description|escape:'htmlall':'UTF-8'}</div>
                                                                        {/if}
                                                                    </div>
                                                                    <input type="hidden"
                                                                           id="rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}"
                                                                           name="rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}"
                                                                           value="0"/>
                                                                    <div class="clr"></div>
                                                                    <div class="errorTxtAdd"
                                                                         id="error_rat_rel{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}"></div>
                                                                {/foreach}
                                                            {else}
                                                                <label for="rat_rel"
                                                                       class="float-left">{l s='Rating' mod='reviewsadv'}
                                                                    <sup class="required">*</sup></label>
                                                                <div class="rat rating-stars-dynamic">
                                                        <span onmouseout="read_rating_review_shop('rat_rel');">
                                                            <img onmouseover="_rating_efect_rev(1,0,'rat_rel')"
                                                                 onmouseout="_rating_efect_rev(1,1,'rat_rel')"
                                                                 onclick="rating_review_shop('rat_rel',1); rating_checked=true; "
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt=""
                                                                 id="img_rat_rel_1"/>
                                                            <img onmouseover="_rating_efect_rev(2,0,'rat_rel')"
                                                                 onmouseout="_rating_efect_rev(2,1,'rat_rel')"
                                                                 onclick="rating_review_shop('rat_rel',2); rating_checked=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt="" id="img_rat_rel_2"/>
                                                            <img onmouseover="_rating_efect_rev(3,0,'rat_rel')"
                                                                 onmouseout="_rating_efect_rev(3,1,'rat_rel')"
                                                                 onclick="rating_review_shop('rat_rel',3); rating_checked=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt="" id="img_rat_rel_3"/>
                                                            <img onmouseover="_rating_efect_rev(4,0,'rat_rel')"
                                                                 onmouseout="_rating_efect_rev(4,1,'rat_rel')"
                                                                 onclick="rating_review_shop('rat_rel',4); rating_checked=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt="" id="img_rat_rel_4"/>
                                                            <img onmouseover="_rating_efect_rev(5,0,'rat_rel')"
                                                                 onmouseout="_rating_efect_rev(5,1,'rat_rel')"
                                                                 onclick="rating_review_shop('rat_rel',5); rating_checked=true;"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                 alt="" id="img_rat_rel_5"/>
                                                        </span>
                                                                </div>
                                                                <input type="hidden" id="rat_rel" name="rat_rel" value="0"/>
                                                                <div class="clr"></div>
                                                                <div class="errorTxtAdd" id="error_rat_rel"></div>
                                                            {/if}
                                                            <br/>
                                                        {/if}

                                                        <label for="name-review">{l s='Name' mod='reviewsadv'}<sup
                                                                    class="required">*</sup></label>
                                                        <input type="text" name="name-review" id="name-review"
                                                               value="{$reviewsadvc_name|escape:'htmlall':'UTF-8'}"
                                                               onkeyup="check_inpNameReview();"
                                                               onblur="check_inpNameReview();"/>
                                                        <div class="errorTxtAdd" id="error_name-review"></div>

                                                        <label for="email-review">{l s='Email' mod='reviewsadv'}<sup
                                                                    class="required">*</sup></label>
                                                        <input type="text" name="email-review" id="email-review"
                                                               value="{$reviewsadvc_email|escape:'htmlall':'UTF-8'}"
                                                               onkeyup="check_inpEmailReview();"
                                                               onblur="check_inpEmailReview();"/>
                                                        <div id="error_email-review" class="errorTxtAdd"></div>

                                                        {if $reviewsadvis_avatarr == 1}
                                                            <label for="avatar-review">{l s='Avatar' mod='reviewsadv'}</label>
                                                            {if strlen($reviewsadvc_avatar)>0}
                                                                <div class="avatar-block-rev-form">
                                                                    <input type="radio" name="post_images" checked=""
                                                                           style="display: none">
                                                                    <img src="{$reviewsadvc_avatar|escape:'htmlall':'UTF-8'}"
                                                                         alt="{$reviewsadvc_name|escape:'htmlall':'UTF-8'}"/>
                                                                </div>
                                                            {/if}
                                                            <input type="file" name="avatar-review"
                                                                   id="avatar-review"
                                                                   class="testimonials-input"
                                                            />
                                                            <div class="avatar-guid">
                                                                {l s='Allow formats' mod='reviewsadv'}: *.jpg; *.jpeg;
                                                                *.png; *.gif.
                                                            </div>
                                                            <div class="errorTxtAdd" id="error_avatar-review"></div>
                                                        {/if}



                                                        {if $reviewsadvtitle_on == 1}
                                                            <label for="subject-review">{l s='Title' mod='reviewsadv'}<sup
                                                                        class="required">*</sup></label>
                                                            <input type="text" name="subject-review" id="subject-review"
                                                                   onkeyup="check_inpSubjectReview();"
                                                                   onblur="check_inpSubjectReview();"/>
                                                            <div id="error_subject-review" class="errorTxtAdd"></div>
                                                        {/if}

                                                        {if $reviewsadvtext_on == 1}
                                                            <label for="text-review">{l s='Text' mod='reviewsadv'}<sup
                                                                        class="required">*</sup></label>
                                                            <textarea id="text-review" name="text-review" cols="42" rows="7"
                                                                      onkeyup="check_inpTextReview();"
                                                                      onblur="check_inpTextReview();"></textarea>
                                                            <div id="textarea_feedback"></div>
                                                            <div id="error_text-review" class="errorTxtAdd"></div>
                                                        {/if}


                                                        {if $reviewsadvis_filesr == 1}
                                                            <label for="text-files">{l s='Files' mod='reviewsadv'}</label>
                                                            <span class="file-upload-rev" id="file-upload-rev">
                                            <input type="file" name="files[]" multiple/>
                                            <div class="progress-files-bar">
                                                <div class="progress-files"></div>
                                            </div>
                                            <div id="file-files-list"></div>
                                        </span>
                                                            <div class="avatar-guid">
                                                                {l s='Allow formats' mod='reviewsadv'}: *.jpg; *.jpeg;
                                                                *.png; *.gif.
                                                            </div>
                                                            <div id="error_text-files" class="errorTxtAdd"></div>
                                                        {/if}

                                                        {if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}
                                                            <label for="inpCaptchaReview">{l s='Captcha' mod='reviewsadv'}
                                                                <sup class="required">*</sup></label>
                                                            <div class="clr"></div>
                                                            <img width="100" height="26" class="float-left"
                                                                 id="secureCodReview"
                                                                 src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/captcha.php"
                                                                 alt="Captcha"/>
                                                            <input type="text" class="inpCaptchaReview float-left"
                                                                   id="inpCaptchaReview" size="6" name="captcha"
                                                                   onkeyup="check_inpCaptchaReview();"
                                                                   onblur="check_inpCaptchaReview();"/>
                                                            <div class="clr"></div>
                                                            <div id="error_inpCaptchaReview" class="errorTxtAdd"></div>
                                                        {/if}


                                                    </div>

                                                    <div id="footer-add-review-form-review">
                                                        <button type="submit" value="{l s='Add review' mod='reviewsadv'}" class="buttonCustom">
                                                            <span>{l s='Add review' mod='reviewsadv'}</span>
                                                        </button>
                                                        &nbsp;
                                                        <button onclick="show_form_review(0)" value="{l s='Cancel' mod='reviewsadv'}" class="btn btn-danger">
                                                            <span>{l s='Cancel' mod='reviewsadv'}</span>
                                                        </button>
                                                    </div>


                                                </form>
                                            </div>
                                        {literal}
                                            <script type="text/javascript">

                                                {/literal}{if $reviewsadvis17 == 1}{literal}
                                                var baseDir = '{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}{literal}';
                                                {/literal}{/if}{literal}

                                                var file_upload_url_reviewsadv = baseDir + 'modules/reviewsadv/upload.php';
                                                var file_max_files_reviewsadv = {/literal}{$reviewsadvruploadfiles|escape:'htmlall':'UTF-8'}{literal};
                                                var file_max_message_reviewsadv = '{/literal}{$reviewsadvptc_msg13_1|escape:'htmlall':'UTF-8'}{literal} ' + file_max_files_reviewsadv + ' {/literal}{$reviewsadvptc_msg13_2|escape:'htmlall':'UTF-8'}{literal}';
                                                var file_path_upload_url_reviewsadv = baseDir + '{/literal}{$reviewsadvfpath|escape:'htmlall':'UTF-8'}{literal}tmp/';

                                                var text_min = {/literal}{$reviewsadvrminc|escape:'htmlall':'UTF-8'}{literal};

                                                document.addEventListener("DOMContentLoaded", function (event) {
                                                    $(document).ready(function () {


                                                        $('#textarea_feedback').html($('#text-review').val().length + ' {/literal}{$reviewsadvptc_msg11|escape:'htmlall':'UTF-8'}{literal}. {/literal}{$reviewsadvptc_msg12|escape:'htmlall':'UTF-8'}{literal} ' + text_min + ' {/literal}{$reviewsadvptc_msg11|escape:'htmlall':'UTF-8'}{literal}');

                                                        $('#text-review').keyup(function () {
                                                            var text_length_val = trim(document.getElementById('text-review').value);
                                                            var text_length = text_length_val.length;

                                                            if (text_length < text_min)
                                                                $('#textarea_feedback').css('color', 'red');
                                                            else
                                                                $('#textarea_feedback').css('color', 'green');

                                                            $('#textarea_feedback').html(text_length + ' {/literal}{$reviewsadvptc_msg11|escape:'htmlall':'UTF-8'}{literal}. {/literal}{$reviewsadvptc_msg12|escape:'htmlall':'UTF-8'}{literal} ' + text_min + ' {/literal}{$reviewsadvptc_msg11|escape:'htmlall':'UTF-8'}{literal}');
                                                        });


                                                        /* clear form fields */

                                                        {/literal}{if $reviewsadvratings_on == 1}{literal}

                                                        {/literal}{if $reviewsadvcriterions|@count > 0}

                                                        {foreach from=$reviewsadvcriterions item='criterion'}{literal}

                                                        $('#rat_rel{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal}').val(0);

                                                        {/literal}{/foreach}

                                                        {else}{literal}

                                                        $('#rat_rel').val(0);

                                                        {/literal}{/if}{literal}

                                                        {/literal}{/if}{literal}

                                                        {/literal}{if $reviewsadvid_customer == 0}{literal}
                                                        $('#name-review').val('');
                                                        $('#email-review').val('');
                                                        {/literal}{/if}{literal}

                                                        {/literal}{if $reviewsadvtitle_on == 1}{literal}
                                                        $('#subject-review').val('');
                                                        {/literal}{/if}{literal}
                                                        {/literal}{if $reviewsadvtext_on == 1}{literal}
                                                        $('#text-review').val('');
                                                        {/literal}{/if}{literal}
                                                        {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                        $('#inpCaptchaReview').val('');
                                                        {/literal}{/if}{literal}

                                                        /* clear form fields */
                                                    });
                                                });





                                                {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                function check_inpCaptchaReview() {

                                                    var inpCaptchaReview = trim(document.getElementById('inpCaptchaReview').value);

                                                    if (inpCaptchaReview.length != 6) {
                                                        field_state_change('inpCaptchaReview', 'failed', '{/literal}{$reviewsadvptc_msg1|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('inpCaptchaReview', 'success', '');
                                                    return true;
                                                }
                                                {/literal}{/if}{literal}


                                                {/literal}{if $reviewsadvtext_on == 1}{literal}
                                                function check_inpTextReview() {

                                                    var text_review = trim(document.getElementById('text-review').value);

                                                    if (text_review.length == 0 || text_review.length < text_min) {
                                                        field_state_change('text-review', 'failed', '{/literal}{$reviewsadvptc_msg2|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('text-review', 'success', '');
                                                    return true;
                                                }
                                                {/literal}{/if}{literal}


                                                function check_inpNameReview() {

                                                    var name_review = trim(document.getElementById('name-review').value);

                                                    if (name_review.length == 0) {
                                                        field_state_change('name-review', 'failed', '{/literal}{$reviewsadvptc_msg3|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('name-review', 'success', '');
                                                    return true;
                                                }


                                                function check_inpEmailReview() {

                                                    var email_review = trim(document.getElementById('email-review').value);

                                                    if (email_review.length == 0) {
                                                        field_state_change('email-review', 'failed', '{/literal}{$reviewsadvptc_msg4|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('email-review', 'success', '');
                                                    return true;
                                                }


                                                {/literal}{if $reviewsadvtitle_on == 1}{literal}
                                                function check_inpSubjectReview() {

                                                    var subject_review = trim(document.getElementById('subject-review').value);

                                                    if (subject_review.length == 0) {
                                                        field_state_change('subject-review', 'failed', '{/literal}{$reviewsadvptc_msg5|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('subject-review', 'success', '');
                                                    return true;
                                                }
                                                {/literal}{/if}{literal}





                                                {/literal}{if $reviewsadvratings_on == 1}{literal}



                                                {/literal}{if $reviewsadvcriterions|@count > 0}

                                                {foreach from=$reviewsadvcriterions item='criterion'}{literal}

                                                var rating_checked{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal} = false;

                                                {/literal}{/foreach}

                                                {else}{literal}

                                                var rating_checked = false;

                                                {/literal}{/if}{literal}





                                                {/literal}{if $reviewsadvcriterions|@count > 0}



                                                {foreach from=$reviewsadvcriterions item='criterion'}{literal}

                                                function check_inpRatingReview{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal}() {

                                                    if (!rating_checked{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal}) {
                                                        field_state_change('rat_rel{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal}', 'failed', '{/literal}{$reviewsadvptc_msg6|escape:'htmlall':'UTF-8'} {$criterion.name|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('rat_rel{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal}', 'success', '');
                                                    return true;


                                                }
                                                {/literal}{/foreach}

                                                {else}{literal}
                                                function check_inpRatingReview() {
                                                    if (!rating_checked) {
                                                        field_state_change('rat_rel', 'failed', '{/literal}{$reviewsadvptc_msg7|escape:'htmlall':'UTF-8'}{literal}');
                                                        return false;
                                                    }
                                                    field_state_change('rat_rel', 'success', '');
                                                    return true;

                                                }


                                                {/literal}{/if}{literal}

                                                {/literal}{/if}{literal}

                                                document.addEventListener("DOMContentLoaded", function (event) {
                                                    $(document).ready(function (e) {
                                                        $("#add_review_item_form").on('submit', (function (e) {
                                                            e.preventDefault();
                                                            e.stopPropagation();



                                                            {/literal}{if $reviewsadvis_avatarr == 1}{literal}
                                                            field_state_change('avatar-review', 'success', '');
                                                            {/literal}{/if}{literal}




                                                            {/literal}{if $reviewsadvratings_on == 1}{literal}
                                                            {/literal}{if $reviewsadvcriterions|@count > 0}

                                                            {foreach from=$reviewsadvcriterions item='criterion'}{literal}

                                                            var is_rating{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal} = check_inpRatingReview{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal}();

                                                            {/literal}{/foreach}{literal}

                                                            {/literal}{else}{literal}

                                                            var is_rating = check_inpRatingReview();

                                                            {/literal}{/if}{literal}
                                                            {/literal}{/if}{literal}

                                                            {/literal}{if $reviewsadvtitle_on == 1}{literal}
                                                            var is_subject = check_inpSubjectReview();
                                                            {/literal}{/if}{literal}

                                                            var is_name = check_inpNameReview();
                                                            var is_email = check_inpEmailReview();

                                                            {/literal}{if $reviewsadvtext_on == 1}{literal}
                                                            var is_text = check_inpTextReview();
                                                            {/literal}{/if}{literal}
                                                            {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                            var is_captcha = check_inpCaptchaReview();
                                                            {/literal}{/if}{literal}


                                                            if (
                                                                    {/literal}{if $reviewsadvratings_on == 1}{literal}
                                                            {/literal}{if $reviewsadvcriterions|@count > 0}

                                                            {foreach from=$reviewsadvcriterions item='criterion'}{literal}

                                                            is_rating{/literal}{$criterion.id_reviewsadv_review_criterion|escape:'htmlall':'UTF-8'}{literal} &&

                                                            {/literal}{/foreach}{literal}

                                                            {/literal}{else}{literal}

                                                            is_rating &&

                                                            {/literal}{/if}{literal}
                                                            {/literal}{/if}{literal}

                                                            {/literal}{if $reviewsadvtitle_on == 1}{literal}
                                                            is_subject &&
                                                            {/literal}{/if}{literal}
                                                            is_name &&
                                                            is_email &&
                                                            {/literal}{if $reviewsadvtext_on == 1}{literal}
                                                            is_text &&
                                                            {/literal}{/if}{literal}
                                                            {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                            is_captcha &&
                                                            {/literal}{/if}{literal}
                                                            true
                                                            ) {

                                                                $('#reviews-list').css('opacity', 0.5);
                                                                $('#add-review-form-review').css('opacity', 0.5);


                                                                $.ajax({
                                                                    url: baseDir + 'modules/reviewsadv/reviews.php',
                                                                    type: "POST",
                                                                    data: new FormData(this),
                                                                    contentType: false,
                                                                    cache: false,
                                                                    processData: false,
                                                                    dataType: 'json',
                                                                    success: function (data) {


                                                                        $('#reviews-list').css('opacity', 1);
                                                                        $('#add-review-form-review').css('opacity', 1);

                                                                        if (data.status == 'success') {


                                                                            $('#gsniprev-list').html('');
                                                                            var paging = $('#gsniprev-list').prepend(data.params.content);
                                                                            $(paging).hide();
                                                                            $(paging).fadeIn('slow');

                                                                            $('#gsniprev-nav').html('');
                                                                            var paging = $('#gsniprev-nav').prepend(data.params.paging);
                                                                            $(paging).hide();
                                                                            $(paging).fadeIn('slow');


                                                                            var count_review = data.params.count_reviews;

                                                                            $('#count-review-tab').html('');
                                                                            $('#count-review-tab').html('(' + count_review + ')');





                                                                            {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}

                                                                            var count = Math.random();
                                                                            document.getElementById('secureCodReview').src = "";
                                                                            document.getElementById('secureCodReview').src = "{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}captcha.php?re=" + count;
                                                                            $('#inpCaptchaReview').val('');

                                                                            {/literal}{/if}{literal}

                                                                            jQuery(document).ready(init_rating);


                                                                            $('.advertise-text-review').css('opacity', '0.2');
                                                                            $('#add-review-block').css('opacity', '0.2');

                                                                            var voucher_html_suggestion = data.params.voucher_html_suggestion;


                                                                            {/literal}{if $reviewsadvvis_on == 1}{literal}
                                                                            /* voucher */

                                                                            var voucher_html = data.params.voucher_html;


                                                                            if ($('div#fb-con-wrapper').length == 0) {
                                                                                conwrapper = '<div id="fb-con-wrapper" class="voucher-data"><\/div>';
                                                                                $('body').append(conwrapper);
                                                                            } else {
                                                                                $('#fb-con-wrapper').html('');
                                                                            }

                                                                            if ($('div#fb-con').length == 0) {
                                                                                condom = '<div id="fb-con"><\/div>';
                                                                                $('body').append(condom);
                                                                            }

                                                                            $('div#fb-con').fadeIn(function () {

                                                                                $(this).css('filter', 'alpha(opacity=70)');
                                                                                $(this).bind('click dblclick', function () {
                                                                                    $('div#fb-con-wrapper').hide();
                                                                                    $(this).fadeOut();
                                                                                    showSocialSuggestion(voucher_html_suggestion);

                                                                                });
                                                                            });

                                                                            $('div#fb-con-wrapper').html('<a id="button-close" style="display: inline;"><\/a>' + voucher_html).fadeIn();

                                                                            $("a#button-close").click(function () {
                                                                                $('div#fb-con-wrapper').hide();
                                                                                $('div#fb-con').fadeOut();
                                                                                showSocialSuggestion(voucher_html_suggestion);

                                                                            });

                                                                            /* voucher */
                                                                            {/literal}{else}{literal}
                                                                            showSocialSuggestion(voucher_html_suggestion);

                                                                            {/literal}{/if}{literal}




                                                                        } else {

                                                                            var error_type = data.params.error_type;


                                                                            {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                                            if (error_type == 3) {
                                                                                field_state_change('inpCaptchaReview', 'failed', '{/literal}{$reviewsadvptc_msg8|escape:'htmlall':'UTF-8'}{literal}');

                                                                                {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                                                var count = Math.random();
                                                                                document.getElementById('secureCodReview').src = "";
                                                                                document.getElementById('secureCodReview').src = "{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}captcha.php?re=" + count;
                                                                                $('#inpCaptchaReview').val('');
                                                                                {/literal}{/if}{literal}

                                                                                return false;

                                                                            }
                                                                            {/literal}{/if}{literal}

                                                                            if (error_type == 2) {
                                                                                field_state_change('email-review', 'failed', '{/literal}{$reviewsadvptc_msg9|escape:'htmlall':'UTF-8'}{literal}');
                                                                                field_state_change('inpCaptchaReview', 'failed', '{/literal}{$reviewsadvptc_msg1|escape:'htmlall':'UTF-8'}{literal}');

                                                                                {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                                                var count = Math.random();
                                                                                document.getElementById('secureCodReview').src = "";
                                                                                document.getElementById('secureCodReview').src = "{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}captcha.php?re=" + count;
                                                                                $('#inpCaptchaReview').val('');
                                                                                {/literal}{/if}{literal}

                                                                                return false;
                                                                            }

                                                                            if (error_type == 1) {
                                                                                alert("{/literal}{$reviewsadvptc_msg10|escape:'htmlall':'UTF-8'}{literal}");
                                                                                window.location.reload();
                                                                            }

                                                                            if (error_type == 8) {
                                                                                field_state_change('avatar-review', 'failed', '{/literal}{$reviewsadvava_msg8|escape:'htmlall':'UTF-8'}{literal}');
                                                                                return false;
                                                                            } else if (error_type == 9) {
                                                                                field_state_change('avatar-review', 'failed', '{/literal}{$reviewsadvava_msg9|escape:'htmlall':'UTF-8'}{literal}');
                                                                                return false;
                                                                            }

                                                                            {/literal}{if $reviewsadvis_captcha == 1 && $reviewsadvid_customer == 0}{literal}
                                                                            var count = Math.random();
                                                                            document.getElementById('secureCodReview').src = "";
                                                                            document.getElementById('secureCodReview').src = "{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}captcha.php?re=" + count;
                                                                            $('#inpCaptchaReview').val('');
                                                                            {/literal}{/if}{literal}


                                                                        }

                                                                    }
                                                                });


                                                            } else {
                                                                return false;
                                                            }

                                                        }));

                                                    });
                                                });


                                                //}


                                                function showSocialSuggestion(voucher_html) {
                                                    {/literal}{if $reviewsadvvis_onfb == 1}{literal}
                                                    if ($('div#fb-con-wrapper').length == 0) {
                                                        conwrapper = '<div id="fb-con-wrapper"><\/div>';
                                                        $('body').append(conwrapper);
                                                    } else {
                                                        $('#fb-con-wrapper').html('');
                                                    }

                                                    if ($('div#fb-con').length == 0) {
                                                        condom = '<div id="fb-con"><\/div>';
                                                        $('body').append(condom);
                                                    }

                                                    $('div#fb-con').fadeIn(function () {

                                                        $(this).css('filter', 'alpha(opacity=70)');
                                                        $(this).bind('click dblclick', function () {
                                                            $('div#fb-con-wrapper').hide();
                                                            $(this).fadeOut();
                                                            window.location.reload();
                                                        });
                                                    });

                                                    $('div#fb-con-wrapper').html('<a id="button-close" style="display: inline;"><\/a>' + voucher_html).fadeIn();

                                                    $("a#button-close").click(function () {
                                                        $('div#fb-con-wrapper').hide();
                                                        $('div#fb-con').fadeOut();
                                                        window.location.reload();
                                                    });
                                                    {/literal}{else}{literal}
                                                    window.location.reload();
                                                    {/literal}{/if}{literal}
                                                }


                                            </script>
                                        {/literal}

                                        {/if}



                                        {/if}

                                    </div>


                                    {*<div class="row-custom total-info-tool-product-page">*}
                                    {*<div class="col-sm-5-custom first-block-ti">*}
                                    {*{if $reviewsadvis_add == 0}*}
                                    {*<span class="spr-summary-actions">*}

                                    {*<a class="btn-reviewsadv btn-primary-reviewsadv" href="javascript:void(0)"*}
                                    {*onclick="show_form_review(1)">*}
                                    {*<span>*}
                                    {*<i class="icon-pencil"></i>*}
                                    {*{l s='Write a Review' mod='reviewsadv'}*}
                                    {*</span>*}
                                    {*</a>*}

                                    {*</span>*}
                                    {*{/if}*}
                                    {*</div>*}
                                    {*<div class="col-sm-6-custom b-search-items">*}

                                    {*<form method="get" action="{$reviewsadvproduct_url|escape:'htmlall':'UTF-8'}">*}

                                    {*<fieldset>*}
                                    {*<input type="submit" value="go"*}
                                    {*class="button_mini_custom {if $reviewsadvis_ps15 == 0}search_go{/if}">*}
                                    {*<input type="text"*}
                                    {*class="txt {if $reviewsadvis16 == 0}search-input-height-15{/if}"*}
                                    {*name="search"*}
                                    {*onfocus="{literal}if(this.value == '{/literal}{l s='Search' mod='reviewsadv'}{literal}') {this.value='';};{/literal}"*}
                                    {*onblur="{literal}if(this.value == '') {this.value='{/literal}{l s='Search' mod='reviewsadv'}{literal}';};{/literal}"*}
                                    {*value="{l s='Search' mod='reviewsadv'}"/>*}
                                    {*{if $reviewsadvis_search == 1}*}
                                    {*<a href="{$reviewsadvproduct_url|escape:'htmlall':'UTF-8'}"*}
                                    {*class="clear-search-items">*}
                                    {*{l s='Clear search' mod='reviewsadv'}*}
                                    {*</a>*}
                                    {*{/if}*}

                                    {*</fieldset>*}
                                    {*</form>*}


                                    {*</div>*}

                                    {*</div>*}

                                    {if $reviewsadvis_search == 1}
                                        <h3 class="search-result-item">{l s='Results for' mod='reviewsadv'}
                                            <b>"{$reviewsadvsearch|escape:'quotes':'UTF-8'}"</b></h3>
                                        <br/>
                                    {/if}

                                    {if $reviews}
                                        <div class="spr-reviews">

                                            {foreach from=$reviews item=review}
                                                <div class="spr-review">
                                                    <div class="spr-review-header">
                                                        {if $review.is_active == 1}
                                                            {if $reviewsadvratings_on == 1 && $review.rating!=0}
                                                                <span class="spr-starratings spr-review-header-starratings">

                                  {section name=ratid loop=5}
                                      {if $smarty.section.ratid.index < $review.rating}
                                          <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                               alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>


                                                                                                                                  {else}


                                          <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                               alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                      {/if}
                                  {/section}

                                </span>
                                                                <div class="rating-stars-total">
                                                                    (<span>{$review.rating|escape:'htmlall':'UTF-8'}</span>/<span>5</span>)&nbsp;
                                                                </div>
                                                            {/if}
                                                            {if $reviewsadvtitle_on == 1 && strlen($review.title_review)>0}
                                                                <h3 class="spr-review-header-title">{$review.title_review|escape:'htmlall':'UTF-8' nofilter}</h3>
                                                            {/if}

                                                        {/if}

                                                        <div class="clear-reviewsadv"></div>

                                                        <span class="spr-review-header-byline float-left">
                                {l s='By' mod='reviewsadv'}
                                                            {if $reviewsadvis_avatarr == 1 && strlen($review.avatar)>0 && $review.is_show_ava == 1}
                                                                <span class="avatar-block-rev">
                                        <img alt="{$review.customer_name|escape:'htmlall':'UTF-8'}"
                                             src="{$review.avatar|escape:'htmlall':'UTF-8'}">
                                    </span>
                                                            {/if}
                                                            {if strlen($review.customer_name)>0}
                                                                {if $reviewsadvis_uprof && $review.id_customer > 0 && $review.is_show_ava == 1}<a href="{$reviewsadvuser_url|escape:'htmlall':'UTF-8'}{$review.id_customer|escape:'htmlall':'UTF-8'}" title="{$review.customer_name|escape:'htmlall':'UTF-8'}" class="user-link-to-profile">{/if}
                                                                <strong
                                                                >{$review.customer_name|escape:'htmlall':'UTF-8' nofilter}</strong>{if $reviewsadvis_uprof && $review.id_customer > 0 && $review.is_show_ava == 1}</a>{/if}
                                                            {/if}
                                                            {if strlen($review.customer_name)>0}{l s='on' mod='reviewsadv'}{/if}
                                                            &nbsp;<strong>{$review.time_add|date_format|escape:'htmlall':'UTF-8'}</strong>


                                                            {if $reviewsadvip_on == 1 && strlen($review.ip)>0}
                                                                ({if $review.is_no_ip == 0}<b>{l s='IP' mod='reviewsadv'}
                                                                :</b>&nbsp;{/if}{$review.ip|escape:'htmlall':'UTF-8'})
                                                            {/if}

                                                            <span class="font-size-10">{$review.product_name|escape:'quotes':'UTF-8'}</span>

                            </span>

                                                        {if $review.is_active == 1}
                                                            {if $reviewsadvis_helpfulf == 1}
                                                                <span class="float-right people-folowing-reviews"
                                                                      id="people-folowing-reviews{$review.id|escape:'htmlall':'UTF-8'}"><span
                                                                            class="first-helpful"
                                                                            id="block-helpful-yes{$review.id|escape:'htmlall':'UTF-8'}">{$review.helpfull_yes|escape:'quotes':'UTF-8'}</span> {l s='of' mod='reviewsadv'}
                                                                    <span id="block-helpful-all{$review.id|escape:'htmlall':'UTF-8'}">{$review.helpfull_all|escape:'quotes':'UTF-8'}</span> {l s='people found the following review helpful' mod='reviewsadv'}</span>
                                                            {/if}
                                                        {/if}
                                                        <div class="clear-reviewsadv"></div>

                                                        {if $review.is_buy != 0}
                                                            <span class="spr-review-header-byline float-left">
                                <span class="is_buy_product">{l s='Verified Purchase' mod='reviewsadv'}</span>
                            </span>
                                                            <div class="clear-reviewsadv"></div>
                                                        {/if}

                                                    </div>

                                                    <div class="{if $reviewsadvis16 == 1}row-custom{else}row-list-reviews{/if}">

                                                        {if $review.is_active == 1}
                                                            {if $review.criterions|@count>0}
                                                                <div class="spr-review-content {if $reviewsadvis16 == 1}col-sm-3-custom{else}col-sm-3-list-reviews{/if}">

                                                                    {foreach from=$review.criterions item=criterion}
                                                                        <div class="criterion-item-block">
                                                                            {$criterion.name|escape:'htmlall':'UTF-8'}:

                                                                            {section name=ratid loop=5}
                                                                                {if $smarty.section.ratid.index < $criterion.rating}
                                                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                                                                         class="gsniprev-img-star-list"
                                                                                         alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                                                                {else}
                                                                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"
                                                                                         class="gsniprev-img-star-list"
                                                                                         alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                                                                {/if}
                                                                            {/section}

                                                                        </div>
                                                                    {/foreach}

                                                                </div>
                                                            {/if}
                                                        {/if}

                                                        <div class="spr-review-content {if $reviewsadvis16 == 1}col-sm-{if $review.criterions|@count>0 && $review.is_active == 1}9{else}12{/if}-custom{else}col-sm-{if $review.criterions|@count>0 && $review.is_active == 1}9{else}12{/if}-list-reviews{/if}">

                                                            {if $review.is_active == 1}
                                                                {if $reviewsadvtext_on == 1 && strlen($review.text_review)>0}
                                                                    {*!! no smarty changes |escape:'htmlall':'UTF-8' !!*}
                                                                    <p class="spr-review-content-body">{$review.text_review|escape:'htmlall':'UTF-8'|nl2br nofilter}</p>
                                                                    {*!! no smarty changes |escape:'htmlall':'UTF-8' !!*}
                                                                {/if}

                                                                {if $reviewsadvis_filesr == 1}
                                                                    {if count($review.files)>0}
                                                                        <div class="{if $reviewsadvis16 == 1}row-custom{else}row-list-reviews{/if}">
                                                                            {foreach from=$review.files item=file}
                                                                                <div class="col-sm-{if $reviewsadvis16 == 1}2{else}{if $review.criterions|@count>0}4{else}6{/if}{/if}-custom files-review-reviewsadv">
                                                                                    <a class="fancybox shown"
                                                                                       data-fancybox-group="other-views"
                                                                                       href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}{$file.full_path|escape:'htmlall':'UTF-8'}">
                                                                                        <img class="img-responsive"
                                                                                             width="105" height="105"
                                                                                             src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}{$file.small_path|escape:'htmlall':'UTF-8'}"
                                                                                             alt="{$file.id|escape:'htmlall':'UTF-8'}"

                                                                                        >
                                                                                    </a>
                                                                                    {*<img src="{$file.full_path|escape:'htmlall':'UTF-8'}" alt="{$file.id|escape:'htmlall':'UTF-8'}"  />*}
                                                                                </div>
                                                                            {/foreach}
                                                                        </div>
                                                                    {/if}
                                                                {/if}

                                                            {else}
                                                                <p class="spr-review-content-body">{l s='The customer has rated the product but has not posted a review, or the review is pending moderation' mod='reviewsadv'}</p>
                                                            {/if}



                                                            {if $review.is_active == 1}
                                                            {if strlen($review.admin_response)>0 && $review.is_display_old == 1}
                                                                <div class="clear-reviewsadv"></div>
                                                                <div class="shop-owner-reply-on-review">
                                                                    <div class="owner-date-reply">{l s='Shop owner reply' mod='reviewsadv'}
                                                                        ({$review.review_date_update|date_format|escape:'htmlall':'UTF-8'}
                                                                        ):
                                                                    </div>
                                                                    {$review.admin_response|escape:'htmlall':'UTF-8'|nl2br nofilter}
                                                                </div>
                                                            {/if}
                                                                <div class="clear-reviewsadv"></div>
                                                                <div class="spr-review-footer row-custom">

                                                                    {if $reviewsadvis_helpfulf == 1}
                                                                        <div class="col-sm-{if $reviewsadvis_abusef == 0}12{else}9{/if}-custom margin-bottom-10 block-helpful"
                                                                             id="block-helpful{$review.id|escape:'htmlall':'UTF-8'}">
                                                                            {l s='Was this review helpful to you?' mod='reviewsadv'}
                                                                            <a class="btn-success button_padding_reviewsadv"
                                                                               title="{l s='Yes' mod='reviewsadv'}"
                                                                               href="javascript:void(0)"
                                                                               onclick="report_helpfull_reviewsadv({$review.id|escape:'htmlall':'UTF-8'},1)"><b>{l s='Yes' mod='reviewsadv'}</b></a>
                                                                            <a class="btn-danger button_padding_reviewsadv"
                                                                               title="{l s='No' mod='reviewsadv'}"
                                                                               href="javascript:void(0)"
                                                                               onclick="report_helpfull_reviewsadv({$review.id|escape:'htmlall':'UTF-8'},0)"><b>{l s='No' mod='reviewsadv'}</b></a>
                                                                        </div>
                                                                    {/if}

                                                                    {if $reviewsadvis_abusef == 1}
                                                                        <div class="col-sm-{if $reviewsadvis_helpfulf == 0}12{else}3{/if}-custom margin-bottom-10">
                                                                            <a class="button_padding_reviewsadv spr-review-reportreview"
                                                                               title="{l s='Report abuse' mod='reviewsadv'}"
                                                                               href="javascript:void(0)"
                                                                               onclick="report_abuse_reviewsadv({$review.id|escape:'htmlall':'UTF-8'})"
                                                                            ><b><i class="fa fa-ban text-primary"></i>&nbsp;{l s='Report abuse' mod='reviewsadv'}
                                                                                </b></a>
                                                                        </div>
                                                                    {/if}


                                                                    <div class="clear-reviewsadv"></div>

                                                                </div>
                                                            {if $reviewsadvrsoc_on == 1}
                                                                <div class="fb-like valign-top"
                                                                     data-href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                                                     data-show-faces="false" data-width="60"
                                                                     data-send="false"
                                                                     data-layout="{if $reviewsadvrsoccount_on == 1}button_count{else}button{/if}"></div>
                                                                {*{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}?rid={$review.id|escape:'htmlall':'UTF-8'}*}
                                                            {literal}
                                                                <script type="text/javascript">

                                                                    document.addEventListener("DOMContentLoaded", function (event) {
                                                                        $(document).ready(function () {

                                                                            /* Voucher, when a user share review on the Facebook */
                                                                            // like
                                                                            FB.Event.subscribe("edge.create", function (targetUrlReview) {

                                                                                if (targetUrlReview == '{/literal}{$reviewsadvrev_url|escape:'htmlall':'UTF-8' nofilter}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}{literal}') {

                                                                                    addRemoveDiscountShareReview('facebook',{/literal}{$review.id|escape:'htmlall':'UTF-8'}{literal});

                                                                                }
                                                                            });
                                                                            /* Voucher, when a user share review on the Facebook */

                                                                        });
                                                                    });
                                                                </script>
                                                            {/literal}


                                                            {/if}

                                                            {/if}

                                                        </div>
                                                        <div class="clear-reviewsadv"></div>

                                                    </div>


                                                </div>
                                            {/foreach}


                                        </div>
                                        {*!! no smarty changes |escape:'htmlall':'UTF-8' !!*}
                                        {*<div id="gsniprev-nav-pre">{$paging}</div>*}
                                        {*!! no smarty changes |escape:'htmlall':'UTF-8' !!*}
                                        <div id="gsniprev-nav-pre">
                                            <div class="pages">
                                                <span>{$reviewsadvpage_text|escape:'htmlall':'UTF-8'}:</span>
                                                <span class="nums">
                    {foreach $paging as $page_item}
                        {if $page_item.is_b == 1}
                            <b>{$page_item.page|escape:'htmlall':'UTF-8'}</b>


                                                                                        {else}


                            <a href="{$page_item.url|escape:'quotes':'UTF-8'}"
                               title="{$page_item.title|escape:'htmlall':'UTF-8'}">{$page_item.page|escape:'htmlall':'UTF-8'}</a>
                        {/if}
                    {/foreach}
                </span>
                                            </div>
                                        </div>
                                    {else}
                                        <div class="advertise-text-review advertise-text-review-text-align" id="no-customers-reviews">
                                            {l s='No reviews for the product' mod='reviewsadv'}

                                            {if $reviewsadvcount_reviews == 0}
                                                <br/>
                                                <br/>
                                                <a href="javascript:void(0)" class="buttonCustom" onclick="show_form_review(1)">
                                                <span id="button-addreview-blockreview">
                                                    <i class="icon-pencil"></i>&nbsp;{l s='Be the first to write your review !' mod='reviewsadv'}
                                                </span>
                                                </a>
                                            {/if}
                                        </div>
                                    {/if}

                                </div>

                            </div>
                        </div>

                        <div class="clear-reviewsadv"></div>
                        <!-- reviews template -->


                    </div>
                {/if}

            {/if}







            {if $reviewsadvis17 == 1}

                {if $reviewsadvrvis_on == 1}

                    {if $reviewsadvratings_on == 1 || $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1}

                        {if $reviewsadvhooktodisplay == "product_footer"}
                            <div class="clear-reviewsadv"></div>
                            <div class="{if $reviewsadvis16 == 1}gsniprev-block-16{else}gsniprev-block{/if}">
                                <b class="title-rating-block">
                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>&nbsp;{l s='Total Rating' mod='reviewsadv'}
                                </b><span class="ratings-block-punct">:</span>
                                <br/><br/>

                                <div>


                                    <div class="rating">{$reviewsadvavg_rating|escape:'htmlall':'UTF-8'}</div>
                                    <div class="gsniprev-block-reviews-text">
                                        <span>{$reviewsadvavg_decimal|escape:'htmlall':'UTF-8'}</span>/<span>5</span> -
                                        <span id="count_review_block">{$reviewsadvcount_reviews|escape:'htmlall':'UTF-8'}</span>
                                        <span id="reviews_text_block">{$reviewsadvtext_reviews|escape:'htmlall':'UTF-8'}</span>
                                    </div>
                                    <div class="clear-reviewsadv"></div>
                                </div>
                                <br/>


                                {if $reviewsadvstarratingon == 1}
                                    <a href="javascript:void(0)" onclick="$('.gsniprev-rating-block').toggle();"
                                       class="view-ratings">{l s='View ratings' mod='reviewsadv'}</a>
                                    <br/>
                                    <div class="gsniprev-rating-block">
                                        <table class="gsniprev-rating-block-table">
                                            <tr>
                                                <td class="gsniprev-rating-block-left">
                                                    {section name="test" loop=5}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                </td>
                                                <td class="gsniprev-rating-block-right"><b
                                                            id="five-blockreview">{$reviewsadvfive|escape:'htmlall':'UTF-8'}</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="gsniprev-rating-block-left">
                                                    {section name="test" loop=4}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                    {section name="test" loop=1}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                </td>
                                                <td class="gsniprev-rating-block-right"><b
                                                            id="four-blockreview">{$reviewsadvfour|escape:'htmlall':'UTF-8'}</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="gsniprev-rating-block-left">
                                                    {section name="test" loop=3}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                    {section name="test" loop=2}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                </td>
                                                <td class="gsniprev-rating-block-right"><b
                                                            id="three-blockreview">{$reviewsadvthree|escape:'htmlall':'UTF-8'}</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="gsniprev-rating-block-left">
                                                    {section name="test" loop=2}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                    {section name="test" loop=3}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                </td>
                                                <td class="gsniprev-rating-block-right"><b
                                                            id="two-blockreview">{$reviewsadvtwo|escape:'htmlall':'UTF-8'}</b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="gsniprev-rating-block-left">
                                                    {section name="test" loop=1}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                    {section name="test" loop=4}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"/>
                                                    {/section}
                                                </td>
                                                <td class="gsniprev-rating-block-right"><b
                                                            id="one-blockreview">{$reviewsadvone|escape:'htmlall':'UTF-8'}</b>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <br/>
                                {/if}


                                {if $reviewsadvis_add != 1}
                                    <a class="btn-reviewsadv btn-primary-reviewsadv" href="#idTab777"
                                       id="idTab777-my-click">
                                        <span>
                                            <i class="icon-pencil"></i>&nbsp;

                                            {l s='Add Review' mod='reviewsadv'}

                                        </span>
                                    </a>
                                {/if}


                                <a class="btn-reviewsadv btn-default-reviewsadv" href="#idTab777">
                                <span>
                                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                         class="title-rating-one-star" alt="{l s='View Reviews' mod='reviewsadv'}"/>
                                    {l s='View Reviews' mod='reviewsadv'}
                                </span>
                                </a>


                            </div>
                        {/if}

                    {/if}

                {/if}


            {/if}

        </div>
    </div>
</section>
