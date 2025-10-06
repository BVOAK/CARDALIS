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

<div class="clear"></div>
<div class="reviews_list_stars">
    <span class="star_content clearfix">


        {section name=ratid loop=5}
            {if $smarty.section.ratid.index < $avg_rating}
            <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-category"
                alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
            {else}
            <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-category"
                alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
            {/if}
        {/section}

    </span>
    <span>{$count_review|escape:'htmlall':'UTF-8'}&nbsp;{l s='Review(s)' mod='reviewsadv'}&nbsp</span>
</div>


{*{literal}
<script type="text/javascript">
    $(document).on('click', '#list', function(e){
        setTimeout(function(){
            $('.reviews_list_stars span.star_content').css('margin-left','0px');
        }, 100);
    });

    $(document).on('click', '#grid', function(e){
        setTimeout(function(){
            $('.reviews_list_stars span.star_content').css('margin-left','59px');
        }, 100);
    });

    $(document).ready(function(){
        if($('#list').attr('class') == 'selected'){
            $('.reviews_list_stars span.star_content').css('margin-left','0px');
        } else {
            $('.reviews_list_stars span.star_content').css('margin-left','59px');
        }

    });


</script>
{/literal}*}

