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

{capture name=path}{l s='All Reviews' mod='reviewsadv'}{/capture}
{*{include file="$tpl_dir./breadcrumb.tpl"}*}

<h2>{l s='All Reviews' mod='reviewsadv'}</h2>



<div class="block-last-reviewsadvs block blockmanufacturer margin-top-10 {if $reviewsadvis17 == 1}block-categories{/if}">


    <div class="row-custom total-info-tool">
        <div class="col-sm-6-custom first-block-ti">



            <strong class="float-left">
                <span class="testimonials-count-items">{$reviewsadvcount_reviews|escape:'htmlall':'UTF-8'}</span>
                {l s='Reviews' mod='reviewsadv'}
            </strong>

            <span class="separator-items-block float-left">-</span>


            <div itemscope itemtype="http://schema.org/corporation" class="float-left total-rating-items-block">


                <meta itemprop="name" content="{$reviewsadvsh_name|escape:'htmlall':'UTF-8'}">
                <meta itemprop="url" content="{$reviewsadvallr_url|escape:'htmlall':'UTF-8'}">



                <div itemtype="http://schema.org/AggregateRating" itemscope="" itemprop="aggregateRating">


                    <meta itemprop="reviewCount" content="{$reviewsadvcount_reviews|escape:'htmlall':'UTF-8'}">

                    {section name=bar loop=5 start=0}
                        {if $smarty.section.bar.index < $reviewsadvavg_rating}
                            <img src = "{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.bar.index|escape:'htmlall':'UTF-8'}"/>
                        {else}
                            <img src = "{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.bar.index|escape:'htmlall':'UTF-8'}"/>
                        {/if}
                    {/section}

                    <span {if $reviewsadvis16 == 0}class="vertical-align-top"{/if}>
                        (<span itemprop="ratingValue" {if $reviewsadvis16 == 0}class="vertical-align-top"{/if}
                                >{$reviewsadvavg_decimal|escape:'htmlall':'UTF-8'}</span>/<span itemprop="bestRating" {if $reviewsadvis16 == 0}class="vertical-align-top"{/if}
                                >5</span>)
                        </span>

                </div>

            </div>



        </div>
        <div class="col-sm-5-custom b-search-items">

            <form method="get" action="{$reviewsadvallr_url|escape:'htmlall':'UTF-8'}">

                <fieldset>
                    <input type="submit" value="go" class="button_mini_custom {if $reviewsadvis_ps15 == 0}search_go{/if}">
                    <input type="text" class="txt {if $reviewsadvis16 == 0}search-input-height-15{/if}" name="search"
                           onfocus="{literal}if(this.value == '{/literal}{l s='Search' mod='reviewsadv'}{literal}') {this.value='';};{/literal}"
                           onblur="{literal}if(this.value == '') {this.value='{/literal}{l s='Search' mod='reviewsadv'}{literal}';};{/literal}"
                           value="{l s='Search' mod='reviewsadv'}" />
                    {if $reviewsadvis_search == 1}
                        <a href="{$reviewsadvallr_url|escape:'htmlall':'UTF-8'}" class="clear-search-items">
                            {l s='Clear search' mod='reviewsadv'}
                        </a>
                    {/if}

                </fieldset>
            </form>


        </div>

    </div>

    <div class="row-custom filter-reviews-reviewsadv {if $reviewsadvis16 == 0}filter-testimonials-14{/if}">

        <div class="col-sm-1-custom">
            <b class="filter-txt-items-block">{l s='Filter' mod='reviewsadv'}:</b>
        </div>
        <div class="col-sm-2-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 5}active-items-block{/if}">
            {if $reviewsadvfive>0}
            <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}?frat=5{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                {/if}
                {section name="test" loop=5}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}" />
                {/section}
                <span class="count-items-block {if $reviewsadvfive==0}text-decoration-none{/if}">({$reviewsadvfive|escape:'htmlall':'UTF-8'})</span>
                {if $reviewsadvfive>0}
            </a>
            {/if}
        </div>
        <div class="col-sm-2-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 4}active-items-block{/if}">
            {if $reviewsadvfour>0}
            <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}?frat=4{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                {/if}
                {section name="test" loop=4}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}" />
                {/section}
                {section name="test" loop=1}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                {/section}

                <span class="count-items-block {if $reviewsadvfour==0}text-decoration-none{/if}">({$reviewsadvfour|escape:'htmlall':'UTF-8'})</span>
                {if $reviewsadvfour>0}
            </a>
            {/if}
        </div>
        <div class="col-sm-2-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 3}active-items-block{/if}">
            {if $reviewsadvthree>0}
            <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}?frat=3{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                {/if}
                {section name="test" loop=3}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                {/section}
                {section name="test" loop=2}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}" />
                {/section}
                <span class="count-items-block {if $reviewsadvthree==0}text-decoration-none{/if}">({$reviewsadvthree|escape:'htmlall':'UTF-8'})</span>
                {if $reviewsadvthree>0}
            </a>
            {/if}
        </div>
        <div class="col-sm-2-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 2}active-items-block{/if}">
            {if $reviewsadvtwo>0}
            <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}?frat=2{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                {/if}
                {section name="test" loop=2}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                {/section}
                {section name="test" loop=3}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                {/section}

                <span class="count-items-block {if $reviewsadvtwo==0}text-decoration-none{/if}">({$reviewsadvtwo|escape:'htmlall':'UTF-8'})</span>
                {if $reviewsadvtwo>0}
            </a>
            {/if}
        </div>
        <div class="col-sm-2-custom {if isset($reviewsadvfrat) && $reviewsadvfrat == 1}active-items-block{/if}">
            {if $reviewsadvone>0}
            <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}?frat=1{if $reviewsadvis_search == 1}&search={$reviewsadvsearch|escape:'quotes':'UTF-8'}{/if}">
                {/if}
                {section name="test" loop=1}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                {/section}
                {section name="test" loop=4}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" alt="{$smarty.section.test.index|escape:'htmlall':'UTF-8'}"/>
                {/section}
                <span class="count-items-block {if $reviewsadvone==0}text-decoration-none{/if}">({$reviewsadvone|escape:'htmlall':'UTF-8'})</span>
                {if $reviewsadvone>0}
            </a>
            {/if}
        </div>

        {if $reviewsadvfrat}
            <div class="col-sm-1-custom">
                <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}" class="reset-items-block">
                    <i class="fa fa-refresh"></i>{l s='Reset' mod='reviewsadv'}
                </a>
            </div>
        {/if}


    </div>

    {if $reviewsadvis_search == 1}
        <h3 class="search-result-item">{l s='Results for' mod='reviewsadv'} <b>"{$reviewsadvsearch|escape:'quotes':'UTF-8'}"</b></h3>
        <br/>
    {/if}



		<div class="block_content" id="shopify-product-reviews">
			{if count($reviewsadvreviews_all)>0}

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
                                            <a href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                                    title="{$review.title_review|escape:'htmlall':'UTF-8' nofilter}" class="title-review-all">
                                                {$review.title_review|escape:'htmlall':'UTF-8' nofilter}
                                            </a>
                                        </h3>
                                    {/if}

                                {/if}
                                <div class="clear-reviewsadv"></div>

                            <span class="spr-review-header-byline float-left">
                                {l s='By' mod='reviewsadv'}
                                {if $reviewsadvis_avatarr == 1 && strlen($review.avatar)>0 && $review.is_show_ava}

                                    <span class="avatar-block-rev">
                                        <img alt="{$review.customer_name|escape:'htmlall':'UTF-8' nofilter}"
                                             src="{$review.avatar|escape:'htmlall':'UTF-8'}">
                                     </span>

                                {/if}

                                {if strlen($review.customer_name)>0}
                                    {if $reviewsadvis_uprof  && $review.is_show_ava && $review.id_customer > 0}<a href="{$reviewsadvuser_url|escape:'htmlall':'UTF-8'}{$review.id_customer|escape:'htmlall':'UTF-8'}" title="{$review.customer_name|escape:'htmlall':'UTF-8'}" class="user-link-to-profile">{/if}<strong
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


                                {if $review.product_img}
                                    <div class="img-block-reviewsadv col-sm-2-custom">
                                        <a href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                           title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                                >
                                            <img src="{$review.product_img|escape:'htmlall':'UTF-8'}" title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                                 alt = "{$review.product_name|escape:'htmlall':'UTF-8'}" class="border-image-review img-responsive" />
                                        </a>
                                    </div>
                                {/if}


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

                                <div class="spr-review-content {if $reviewsadvis16 == 1}col-sm-{if $review.criterions|@count>0 && $review.is_active == 1}9{else}10{/if}-custom{else}col-sm-{if $review.criterions|@count>0 && $review.is_active == 1}7{else}10{/if}-list-reviews{/if}">

                                {if $review.is_active == 1}
                                        {if $reviewsadvtext_on == 1 && strlen($review.text_review)>0}
                                            {*!! no smarty changes |escape:'htmlall':'UTF-8' !!*}
                                            <p class="spr-review-content-body">
                                                {if strlen($review.text_review)>150}

                                                    {if $reviewsadvtitle_on == 0 || strlen($review.title_review)==0}
                                                        <a href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                                           title="{$review.title_review|escape:'htmlall':'UTF-8'}" class="title-review-all">
                                                            {$review.text_review|escape:'htmlall':'UTF-8'|nl2br nofilter}</a>
                                                    {else}

                                                    {$review.text_review|substr:0:150|escape:'htmlall':'UTF-8'|nl2br nofilter}...&nbsp;
                                                    <a href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                                        title="{$review.title_review|escape:'htmlall':'UTF-8'}" class="title-review-all">
                                                    {l s='more' mod='reviewsadv'}</a>

                                                    {/if}

                                                {else}

                                                    {if $reviewsadvtitle_on == 0 || strlen($review.title_review)==0}
                                                        <a href="{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}"
                                                           title="{$review.title_review|escape:'htmlall':'UTF-8'}" class="title-review-all">
                                                            {$review.text_review|escape:'htmlall':'UTF-8'|nl2br nofilter}</a>
                                                    {else}
                                                        {$review.text_review|escape:'htmlall':'UTF-8'|nl2br nofilter}
                                                    {/if}
                                                {/if}
                                            </p>
                                            {*!! no smarty changes |escape:'htmlall':'UTF-8' !!*}
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

                                    <div class="clear-reviewsadv"></div>




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
                                        {*{$reviewsadvrev_url|escape:'htmlall':'UTF-8'}{if $reviewsadvis_rewrite == 1}?{else}&{/if}rid={$review.id|escape:'htmlall':'UTF-8'}*}
                                    {literal}
                                        <script type="text/javascript">

                                            document.addEventListener("DOMContentLoaded", function(event) {
                                            $(document).ready(function(){

                                                /* Voucher, when a user share review on the Facebook */
                                                // like

                                                FB.Event.subscribe("edge.create", function(targetUrlReview) {

                                                    //alert(targetUrlReview);
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



	    	{else}
	    		<div class="gsniprev-block-noreviews-list">
					{l s='There are not Product Reviews yet.' mod='reviewsadv'}
				</div>
	    	{/if}
	    </div>
	    {if count($reviewsadvreviews_all)>0}
	    {*<div id="gsniprev-nav-pre">{$reviewsadvpaging|escape:'quotes':'UTF-8'}</div>*}
            <div id="gsniprev-nav-pre">
                <div class="pages">
                    <span>{$reviewsadvpage_text|escape:'htmlall':'UTF-8'}:</span>
                <span class="nums">
                    {foreach $reviewsadvpaging as $page_item}
                        {if $page_item.is_b == 1}
                            <b>{$page_item.page|escape:'htmlall':'UTF-8'}</b>
                        {else}
                            <a href="{$page_item.url|escape:'quotes':'UTF-8'}" title="{$page_item.title|escape:'htmlall':'UTF-8'}">{$page_item.page|escape:'htmlall':'UTF-8'}</a>
                        {/if}
                    {/foreach}
                </span>
                </div>
            </div>



	    {/if}
</div>


