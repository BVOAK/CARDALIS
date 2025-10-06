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

{capture name=path}{l s='Review in the shop' mod='reviewsadv'}{/capture}
{*{include file="$tpl_dir./breadcrumb.tpl"}*}


<h3 class="page-subheading">{l s='Review for' mod='reviewsadv'}&nbsp;"{$reviewsadvreviews_all[0].product_name|escape:'htmlall':'UTF-8'}"</h3>


<div class="block-last-reviewsadvs block blockmanufacturer {if $reviewsadvis17 == 1}block-categories{/if}">

    <div class="row-custom">

        <div class="col-sm-6-custom">

                <a title="{$reviewsadvreviews_all[0].product_name|escape:'htmlall':'UTF-8'}" href="{$reviewsadvreviews_all[0].product_link|escape:'htmlall':'UTF-8'}">
                    <img alt="{$reviewsadvreviews_all[0].product_name|escape:'htmlall':'UTF-8'}" src="{$reviewsadvreviews_all[0].product_img|escape:'htmlall':'UTF-8'}" class="border-image-review img-responsive" />

                </a>

        </div>
        <div class="col-sm-5-custom margin-left-10">
                <span>
                     <a title="{$reviewsadvreviews_all[0].product_name|escape:'htmlall':'UTF-8'}" href="{$reviewsadvreviews_all[0].product_link|escape:'htmlall':'UTF-8'}">
                          <strong>{$reviewsadvreviews_all[0].product_name|escape:'htmlall':'UTF-8'}</strong>
                     </a>
                    <br/><br/>
                    {$reviewsadvreviews_all[0].description_short|escape:'htmlall':'UTF-8' nofilter}
                </span>
        </div>
    </div>
    <div class="clear-reviewsadv"></div>
    <br/>

		<div class="block_content" id="shopify-product-reviews">

            <h3 class="page-subheading">{l s='Review' mod='reviewsadv'}</h3>

                <div class="spr-reviews">

                    {foreach from=$reviewsadvreviews_all item=review}
                        <div class="spr-review">
                            <div class="spr-review-header">

                                {if $review.is_active == 1}

                                {if $reviewsadvratings_on == 1 && $review.rating!=0}
                                    <span class="spr-starratings spr-review-header-starratings">

                                  {section name=ratid loop=5}
                                      {if $smarty.section.ratid.index < $review.rating}
                                          <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
								  	{else}
								    	<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}"  alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                      {/if}
                                  {/section}

                                </span>
                                    <div class="rating-stars-total">
                                        (<span>{$review.rating|escape:'htmlall':'UTF-8'}</span>/<span>5</span>)&nbsp;
                                    </div>

                                {/if}
                                {if $reviewsadvtitle_on == 1 && strlen($review.title_review)>0}
                                    <h3 class="spr-review-header-title">
                                            {$review.title_review|escape:'htmlall':'UTF-8' nofilter}
                                    </h3>
                                {/if}

                                {/if}

                                <div class="clear-reviewsadv"></div>

                            <span class="spr-review-header-byline float-left">
                                {l s='By' mod='reviewsadv'}
                                {if $reviewsadvis_avatarr == 1 && strlen($review.avatar)>0 && $review.is_show_ava}

                                    <span class="avatar-block-rev">
                                        <img alt="{$review.customer_name|escape:'htmlall':'UTF-8'}"
                                             src="{$review.avatar|escape:'htmlall':'UTF-8'}">
                                    </span>

                                {/if}

                                {if strlen($review.customer_name)>0}
                                    {if $reviewsadvis_uprof && $review.is_show_ava && $review.id_customer > 0}<a href="{$reviewsadvuser_url|escape:'htmlall':'UTF-8'}{$review.id_customer|escape:'htmlall':'UTF-8'}" title="{$review.customer_name|escape:'htmlall':'UTF-8'}" class="user-link-to-profile">{/if}<strong
                                            >{$review.customer_name|escape:'htmlall':'UTF-8' nofilter}</strong>{if $reviewsadvis_uprof && $review.id_customer > 0}</a>{/if}
                                {/if}
                                {if strlen($review.customer_name)>0}{l s='on' mod='reviewsadv'}{/if}&nbsp;<strong>{$review.time_add|date_format|escape:'htmlall':'UTF-8'}</strong>

                                {if $reviewsadvip_on == 1 && strlen($review.ip)>0}
                                    ({if $review.is_no_ip == 0}<b>{l s='IP' mod='reviewsadv'}:</b>&nbsp;{/if}{$review.ip|escape:'htmlall':'UTF-8'})
                                {/if}
                                <span itemprop="itemReviewed" class="font-size-10">
                                    <a href="{$review.product_link|escape:'quotes':'UTF-8'}"
                                       title="{$review.product_name|escape:'quotes':'UTF-8'}"
                                            class="title-review-all">
                                        {$review.product_name|escape:'quotes':'UTF-8'}
                                    </a>
                                </span>

                            </span>

                                {if $review.is_active == 1}
                                {if $reviewsadvis_helpfulf == 1}
                                    <span class="float-right people-folowing-reviews" id="people-folowing-reviews{$review.id|escape:'htmlall':'UTF-8'}"><span class="first-helpful" id="block-helpful-yes{$review.id|escape:'htmlall':'UTF-8'}">{$review.helpfull_yes|escape:'quotes':'UTF-8'}</span> {l s='of' mod='reviewsadv'} <span id="block-helpful-all{$review.id|escape:'htmlall':'UTF-8'}">{$review.helpfull_all|escape:'quotes':'UTF-8'}</span> {l s='people found the following review helpful' mod='reviewsadv'}</span>
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
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list" alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                                    {else}
                                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list"  alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
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
                                            <p class="spr-review-content-body">{$review.text_review|escape:'htmlall':'UTF-8'|nl2br nofilter}</p>
                                        {/if}

                                        {if $reviewsadvis_filesr == 1}
                                            {if count($review.files)>0}
                                                <div  class="{if $reviewsadvis16 == 1}row-custom{else}row-list-reviews{/if}">
                                                    {foreach from=$review.files item=file}
                                                        <div class="col-sm-{if $reviewsadvis16 == 1}2{else}3{/if}-custom files-review-reviewsadv">
                                                            <a class="fancybox shown" data-fancybox-group="other-views" href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}{$file.full_path|escape:'htmlall':'UTF-8'}">
                                                                <img class="img-responsive"  width="105" height="105" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}{$file.small_path|escape:'htmlall':'UTF-8'}" alt="{$file.id|escape:'htmlall':'UTF-8'}"

                                                                        >
                                                            </a>

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
                                            <div class="owner-date-reply">{l s='Shop owner reply' mod='reviewsadv'} ({$review.review_date_update|date_format|escape:'htmlall':'UTF-8'}): </div>
                                            {$review.admin_response|escape:'htmlall':'UTF-8'|nl2br nofilter}
                                        </div>

                                    {/if}

                                        <div class="clear-reviewsadv"></div>
                                    <div class="spr-review-footer row-custom">

                                        {if $reviewsadvis_helpfulf == 1}
                                            <div class="col-sm-{if $reviewsadvis_abusef == 0}12{else}9{/if}-custom margin-bottom-10" id="block-helpful{$review.id|escape:'htmlall':'UTF-8'}">
                                                {l s='Was this review helpful to you?' mod='reviewsadv'}
                                                <a class="btn-success button_padding_reviewsadv" title="{l s='Yes' mod='reviewsadv'}"
                                                   href="javascript:void(0)" onclick="report_helpfull_reviewsadv({$review.id|escape:'htmlall':'UTF-8'},1)" ><b>{l s='Yes' mod='reviewsadv'}</b></a>
                                                <a class="btn-danger button_padding_reviewsadv" title="{l s='No' mod='reviewsadv'}"
                                                   href="javascript:void(0)" onclick="report_helpfull_reviewsadv({$review.id|escape:'htmlall':'UTF-8'},0)"><b>{l s='No' mod='reviewsadv'}</b></a>
                                            </div>
                                        {/if}

                                        {if $reviewsadvis_abusef == 1}
                                            <div class="col-sm-{if $reviewsadvis_helpfulf == 0}12{else}3{/if}-custom margin-bottom-10">
                                                <a class="button_padding_reviewsadv spr-review-reportreview"
                                                   title="{l s='Report abuse' mod='reviewsadv'}"
                                                   href="javascript:void(0)" onclick="report_abuse_reviewsadv({$review.id|escape:'htmlall':'UTF-8'})"
                                                        ><b><i class="fa fa-ban text-primary"></i>&nbsp;{l s='Report abuse' mod='reviewsadv'}</b></a>
                                            </div>
                                        {/if}


                                        <div class="clear-reviewsadv"></div>

                                    </div>

                                    {if $reviewsadvrsoc_on == 1}
                                        <div class="fb-like valign-top" data-href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                             data-show-faces="false" data-width="60" data-send="false" data-layout="{if $reviewsadvrsoccount_on == 1}button_count{else}button{/if}"></div>
                                    {literal}
                                        <script type="text/javascript">

                                            document.addEventListener("DOMContentLoaded", function(event) {
                                            $(document).ready(function(){

                                                /* Voucher, when a user share review on the Facebook */
                                                // like
                                                FB.Event.subscribe("edge.create", function(targetUrlReview) {

                                                    if(targetUrlReview == '{/literal}{$reviewsadvrev_url|escape:'htmlall':'UTF-8' nofilter}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}{literal}'){

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


	    </div>

</div>


