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

{if $reviewsadvis_blocklr == 1 && $reviewsadvblocklr_home == "blocklr_home" && $reviewsadvblocklr_home_pos == "home"}




<div {if $reviewsadvis_ps15 == 1 && $reviewsadvis17 == 0}id="left_column"{/if}>


<div id="reviewsadv_block_left" class="block-last-reviewsadvs block blockmanufacturer {if $reviewsadvis17 == 1}block-categories{/if}" style="width:{$reviewsadvblocklr_home_w|escape:'htmlall':'UTF-8'}%">

    	<h4 class="title_block {if $reviewsadvis17 == 1}text-uppercase h6{/if}">
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
		<div class="block_content block-items-data row-custom">
			{if count($reviewsadvreviews_home)>0}


			{foreach from=$reviewsadvreviews_home item=review name=myLoop}

                <div class="items-last-reviewsadvs ">
                {if $review.product_img}
                    <div class="img-block-reviewsadv col-sm-2-custom">
                        <a href="{$review.product_link|escape:'htmlall':'UTF-8'}"
                           title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                >
                            <img src="{$review.product_img|escape:'htmlall':'UTF-8'}" title="{$review.product_name|escape:'htmlall':'UTF-8'}"
                                 alt = "{$review.product_name|escape:'htmlall':'UTF-8'}" class="border-image-review img-responsive" />
                        </a>
                    </div>
                {/if}
                <div class="body-block-reviewsadv col-sm-10-custom {if !$review.product_img}body-block-reviewsadv-100{/if}">
                    <div class="title-block-last-reviewsadv">


                    <div class="r-product">
                        {l s='By' mod='reviewsadv'}
                        {if $reviewsadvis_avatarr == 1 && strlen($review.avatar)>0 && $review.is_show_ava == 1}

                            <span class="avatar-block-rev">
                                        <img alt="{$review.customer_name|escape:'htmlall':'UTF-8' nofilter}"
                                             src="{$review.avatar|escape:'htmlall':'UTF-8'}">
                            </span>

                        {/if}

                        {if strlen($review.customer_name)>0}
                            {if $reviewsadvis_uprof && $review.id_customer > 0 && $review.is_show_ava == 1}<a href="{$reviewsadvuser_url|escape:'htmlall':'UTF-8'}{$review.id_customer|escape:'htmlall':'UTF-8'}" title="{$review.customer_name|escape:'htmlall':'UTF-8'}" class="user-link-to-profile">{/if}<strong
                            >{$review.customer_name|escape:'htmlall':'UTF-8' nofilter}</strong>{if $reviewsadvis_uprof && $review.id_customer > 0 && $review.is_show_ava == 1}</a>{/if}
                        {/if}
                        {if strlen($review.customer_name)>0}{l s='on' mod='reviewsadv'}{/if}&nbsp;<strong>{$review.time_add|date_format|escape:'html':'UTF-8'}</strong>


                    </div>

                        {if $review.is_active == 1}
                            {if $reviewsadvratings_on == 1 && $review.rating != 0}
                            <div  class="rating-stars-total-block">
                               ({$review.rating|escape:'html':'UTF-8'}/5)
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
                                   title="{$review.text_review|escape:'quotes':'UTF-8':strip_tags|substr:0:$reviewsadvblocklr_home_tr|escape:'quotes':'UTF-8'}"
                                   >
                                    {$review.text_review|strip_tags|substr:0:$reviewsadvblocklr_home_tr|escape:'htmlall':'UTF-8' nofilter}{if strlen($review.text_review)>$reviewsadvblocklr_home_tr}...{/if}
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
                    <a href="{$reviewsadvallr_url|escape:'html':'UTF-8'}"
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


</div>

{/if}

{/if}

{/if}



{if $reviewsadvis17 == 1}<br/>{/if}
{if $reviewsadvis_uprof == 1}
{if $reviewsadvradv_home == 1}

{if $reviewsadvis16 == 1 && $reviewsadvis17 == 0}
    <div id="left_column">
{/if}

    <div id="reviewsadv_block_home_users" class="block {if $reviewsadvis16 == 1}blockmanufacturer16{else}blockmanufacturer{/if} {if $reviewsadvis17 == 1}block-categories{/if}">
        <h4  class="title_block {if $reviewsadvis17 == 1}text-uppercase h6{/if}" {if $reviewsadvis16 != 1}align="center"{/if}>
            <a href="{$reviewsadvshoppers_url|escape:'htmlall':'UTF-8'}"
                    >{l s='Users' mod='reviewsadv'}</a>
        </h4>
        <div class="block_content">
            {if count($reviewsadvcustomers_block)>0}
                <ul class="users-block-items home-shoppers">
                    {foreach from=$reviewsadvcustomers_block item=customer name=myLoop}
                        <li class="float-left border-bottom-none">
                            <img src="{$customer.avatar_thumb|escape:'htmlall':'UTF-8'}"
                                 class="user-img-reviewsadv"
                                 title="{$customer.firstname|escape:'htmlall':'UTF-8'} {$customer.lastname|escape:'htmlall':'UTF-8'}"
                                 alt = "{$customer.firstname|escape:'htmlall':'UTF-8'} {$customer.lastname|escape:'htmlall':'UTF-8'}" />
                            <a href="{$reviewsadvshopper_url|escape:'htmlall':'UTF-8'}{$customer.id_customer|escape:'htmlall':'UTF-8'}"
                               title="{$customer.firstname|escape:'htmlall':'UTF-8'} {$customer.lastname|escape:'htmlall':'UTF-8'}">
                                {$customer.firstname|escape:'htmlall':'UTF-8'} {$customer.lastname|escape:'htmlall':'UTF-8'}
                            </a>
                            <div class="clr"></div>
                        </li>
                    {/foreach}

                </ul>
                <div class="clr"></div>

                <div class="gsniprev-view-all float-right">
                    <a href="{$reviewsadvshoppers_url|escape:'html':'UTF-8'}"
                       class="btn btn-default button button-small-reviewsadv"
                            >
                        <span>{l s='View All Users' mod='reviewsadv'}</span>
                    </a>
                </div>
                <div class="clear-reviewsadv"></div>
            {else}
                <div class="padding-10">
                    {l s='There are not users yet.' mod='reviewsadv'}
                </div>
            {/if}

        </div>
    </div>

    {if $reviewsadvis16 == 1 && $reviewsadvis17 == 0}
        </div>
    {/if}

{/if}
{/if}



