{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div id="ph_testimonials_module">
	<div id="carouselReviews" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			{assign var="content" value=0}
			{foreach $testimonials as $testimonial name='testimonialsCarousel'}
				{if $testimonial.author_url == "1" && $page.page_name=="index"}
					<div class="carousel-item itemReview {if $content == 0}active{/if}" data-item="{$content}">
						<div class="contentReview">
							{$testimonial.content|strip_tags}
						</div>
						<div class="nameReview">
							{$testimonial.author_name|escape:'html':'UTF-8'}
							<span class="info"> - {$testimonial.author_info|escape:'html':'UTF-8'}</span>
						</div>
					</div>
					{assign var="content" value=$content+1}
				{/if}
			{/foreach}
		</div>
		<ol class="carousel-indicators">
			{assign var="indicator" value=0}
			{foreach $testimonials as $testimonial name='testimonialsCarouselIndicators'}
				{if $testimonial.author_url == "1" && $page.page_name=="index"}
					<li data-target="#carouselReviews" data-slide-to="{$indicator}" {if $indicator == 0}class="active"{/if}></li>
					{assign var="indicator" value=$indicator+1}	
				{/if}
			{/foreach}
		</ol>
	</div>
</div>

   {*  <div class=" clearfix clearBoth" id="ph_testimonials">
        {foreach $testimonials as $testimonial name='testimonialsCarousel'}
            <div id="slideTesti-{$smarty.foreach.testimonialsCarousel.index}"
                class="testimonials-carousel-item {if $smarty.foreach.testimonialsCarousel.index==0}active{/if}"
                {if $smarty.foreach.testimonialsCarousel.index!=0}style="display:none" {/if}
                data-next="{if $smarty.foreach.testimonialsCarousel.index+1==$testimonials|@count}0{else}{$smarty.foreach.testimonialsCarousel.index+1}{/if}">
                <div class="itemReview">
                    <div class="contentReview">
                        {$testimonial.content|truncate:300:'...'|strip_tags}
                    </div>
                    <span class="nameReview"><i class="fa fa-sort-desc" aria-hidden="true"></i>
                        {$testimonial.author_name|escape:'html':'UTF-8'}
                        <span class="info">{$testimonial.author_info|escape:'html':'UTF-8'}</span>
                    </span>
                </div>

            </div><!-- .testimonials-carousel-item -->
        {/foreach}
    </div><!-- .testimonials-carousel-wrapper -->
</div><!-- .container -->
<script>
    var testimonialsAutoPlay = {if Configuration::get('PH_TESTIMONIALS_AUTOPLAY')}{Configuration::get('PH_TESTIMONIALS_AUTOPLAY')|intval}{else}false{/if};
</script> *}


