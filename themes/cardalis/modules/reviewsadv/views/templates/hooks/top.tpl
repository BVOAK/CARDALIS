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

{if $reviewsadvrvis_on == 1}

{if $reviewsadvratings_on == 1 || $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1}


{if $reviewsadvis_blocklr == 1 && ($reviewsadvis_home_top == 1 || $reviewsadvis_cat_top == 1 || $reviewsadvis_man_top == 1 || $reviewsadvis_prod_top == 1 || $reviewsadvis_oth_top == 1)}





<div class="clear-reviewsadv"></div>
<div id="reviewsadv_block_left" class="block-last-reviewsadvs block blockmanufacturer" style="width:{$reviewsadvblocklr_w|escape:'htmlall':'UTF-8'}%">

    	<h4 class="title_block">
			<div class="reviewsadvs-float-left">
			{l s='Last Product Reviews' mod='reviewsadv'}
			</div>
			<div class="reviewsadvs-float-left margin-left-5">
			{if $reviewsadvrsson == 1}
				<a href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/rss.php" target="_blank" title="{l s='RSS Feed' mod='reviewsadv'}">
					<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/feed.png" alt="{l s='RSS Feed' mod='reviewsadv'}" />
				</a>
			{/if}
			</div>
			<div class="reviewsadvs-clear"></div>
		</h4>
		<div class="block_content block-items-data row">
			{if count($reviewsadvreviews_block)>0}


			{foreach from=$reviewsadvreviews_block item=review name=myLoop}

                <div class="items-last-reviewsadvs ">
                {if $review.product_img}
                    <div class="img-block-reviewsadv col-sm-1">
                        <a href="{$review.product_link|escape:'htmlall':'UTF-8'}"
                           title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                >
                            <img src="{$review.product_img|escape:'htmlall':'UTF-8'}" title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                 alt = "{$review.product_name|escape:'htmlall':'UTF-8'}" class="border-image-review img-responsive" />
                        </a>
                    </div>
                {/if}
                <div class="body-block-reviewsadv col-sm-11 {if !$review.product_img}body-block-reviewsadv-100{/if}">
                    <div class="title-block-last-reviewsadv">


                    <div class="r-product">
                        {l s='By' mod='reviewsadv'}
                        {if $reviewsadvis_avatarr == 1 && strlen($review.avatar)>0 && $review.is_show_ava == 1}

                            <span class="avatar-block-rev">
                                        <img alt="{$review.customer_name|escape:'htmlall':'UTF-8'}"
                                             src="{$review.avatar|escape:'htmlall':'UTF-8'}">
                            </span>

                        {/if}

                        {if strlen($review.customer_name)>0}
                            {if $reviewsadvis_uprof && $review.id_customer > 0 && $review.is_show_ava == 1}<a href="{$reviewsadvuser_url|escape:'htmlall':'UTF-8'}{$review.id_customer|escape:'htmlall':'UTF-8'}" title="{$review.customer_name|escape:'htmlall':'UTF-8'}" class="user-link-to-profile">{/if}<strong
                                    >{$review.customer_name|escape:'htmlall':'UTF-8'}</strong>{if $reviewsadvis_uprof && $review.id_customer > 0 && $review.is_show_ava == 1}</a>{/if}
                        {/if}
                        {if strlen($review.customer_name)>0}{l s='on' mod='reviewsadv'}{/if}&nbsp;<strong>{$review.time_add|date_format|escape:'htmlall':'UTF-8'}</strong>


                    </div>

                    {if $review.is_active == 1}
                    {if $reviewsadvratings_on == 1 && $review.rating != 0}
                    <div  class="rating-stars-total-block">
                       ({$review.rating|escape:'htmlall':'UTF-8'}/5)
                    </div>
                    <div class="r-rating">
                                {section name=ratid loop=5}
                                    {if $smarty.section.ratid.index < $review.rating}
                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star" alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                    {else}
                                        <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star" alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                                    {/if}

                                {/section}
                    </div>
                    {/if}
                     {/if}
                        <div class="clear-reviewsadv"></div>
                        {if $review.is_buy != 0}
                            <span class="reviewsadv-block-date float-left">
                                            <span class="is_buy_product is_buy_product_block">{l s='Verified Purchase' mod='reviewsadv'}</span>
                                        </span>
                            <div class="clear-reviewsadv"></div>
                        {/if}
                    </div>

                    <div class="title-block-r">
                        <a href="{$review.product_link|escape:'htmlall':'UTF-8'}"
                           title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                >
                            {$review.product_name|escape:'htmlall':'UTF-8'}
                        </a>
                    </div>


                    {if $review.is_active == 1}

                    {if $reviewsadvtext_on == 1 && strlen($review.text_review)>0}
                                <a href="{$review.product_link|escape:'htmlall':'UTF-8'}"
                                   title="{$review.text_review|escape:'quotes':'UTF-8':strip_tags|substr:0:$reviewsadvblocklr_tr|escape:'htmlall':'UTF-8'}"
                                   >
                                    {$review.text_review|escape:'quotes':'UTF-8':strip_tags|substr:0:$reviewsadvblocklr_tr|escape:'htmlall':'UTF-8'}{if strlen($review.text_review)>$reviewsadvblocklr_tr}...{/if}
                                </a>
                    {/if}

                    {else}

                        {l s='The customer has rated the product but has not posted a review, or the review is pending moderation' mod='reviewsadv'}
	    			{/if}

                </div>
                    <div class="clear-reviewsadv"></div>
                </div>
	    	{/foreach}
                <div class="gsniprev-view-all float-right">
                    <a href="{$reviewsadvallr_url|escape:'htmlall':'UTF-8'}"
                       class="btn btn-default button button-small-reviewsadv"
                            >
                        <span>{l s='View All Reviews' mod='reviewsadv'}</span>
                    </a>
                </div>
                <div class="clear-reviewsadv"></div>

	    	{else}
	    		<div class="gsniprev-block-noreviews">
					{l s='There are not Product Reviews yet.' mod='reviewsadv'}
				</div>
	    	{/if}
	    </div>
</div>




{/if}

{/if}

{/if}
