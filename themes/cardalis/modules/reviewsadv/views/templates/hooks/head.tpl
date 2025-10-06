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

{if $reviewsadvis_r_p != 0}
    <meta property="og:title" content="{$reviewsadvname|escape:'htmlall':'UTF-8'}"/>
    <meta property="og:image" content="{$reviewsadvimg|escape:'htmlall':'UTF-8'}"/>
    <meta property="og:description" content="{$reviewsadvdescr|escape:'htmlall':'UTF-8'}" />
    <meta property="og:url" content="{$reviewsadvreview_url|escape:'htmlall':'UTF-8'}"/>
    <meta property="og:type" content="product"/>
{/if}


{if $reviewsadvrvis_on == 1}

{if $reviewsadvrsson == 1}
<link rel="alternate" type="application/rss+xml" href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/rss.php" />
{/if}

{if $reviewsadvis17 == 1}
{literal}
    <script type="text/javascript">
    var baseDir = '{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}{literal}';
    </script>
{/literal}
{/if}


{if $reviewsadvis15 == 1 || $reviewsadvis14 ==1}

    <link href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/css/font-custom.min.css" rel="stylesheet" type="text/css" media="all" />

{/if}

{if $reviewsadvratings_on == 1 || $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1}

{if $reviewsadvis15 == 0}
    <link href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/css/reviewsadv.css" rel="stylesheet" type="text/css" media="all" />

    <link href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/css/reviewsadv15.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/reviewsadv.js"></script>
    <link href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/css/reviewsadv14.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/r_stars.js"></script>

{/if}



{literal}
<style type="text/css">
.pages span.nums a:hover { background:{/literal}{$reviewsadvstylecolor|escape:'htmlall':'UTF-8'}{literal}; color:#fff; }
.pages span.nums b { color:#fff; background:{/literal}{$reviewsadvstylecolor|escape:'htmlall':'UTF-8'}{literal}}
</style>
{/literal}
{/if}

{/if}

{if $reviewsadvrsoc_on == 1}
<!-- facebook button -->
{literal}
    <script type="text/javascript" src="{/literal}{$reviewsadvfbliburl|escape:'htmlall':'UTF-8'}{literal}"></script>
{/literal}
<!-- facebook button -->
{/if}


{if $reviewsadvis15 == 0 && $reviewsadvis_product_page == 1 && $reviewsadvis_filesr == 1}
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/jquery.ui.widget.min.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/jquery.fileupload.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/jquery.fileupload-process.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/jquery.fileupload-validate.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/js/main-fileupload.js"></script>
{/if}


{if $reviewsadvstarscat == 1 && $reviewsadvis16 ==0}


<!--  product list settings -->
{if $reviewsadvis_category == 1 && $reviewsadvrvis_on == 1}

{literal}
<script type="text/javascript">

function makeStarsOnCategoryPage(){
		{/literal}
		{foreach from=$reviewsadv_data_products key="id_product" item="item_product"}


		{literal}
		append_block = $('#product_list li.ajax_block_product:has(a.ajax_add_to_cart_button[rel="ajax_id_product_{/literal}{$id_product|escape:'htmlall':'UTF-8'}{literal}"]) div.right_block');

		
		if(append_block.length > 0){
			var stars;
			stars = '<div class="catalog-stars">'+	
			{/literal}
			{section name=ratid loop=5}
			{if $smarty.section.ratid.index < $item_product.avg_rating} 
			   {literal}'<img src="{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}views/img/{/literal}{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}{literal}" class="gsniprev-img-star-category" alt="{/literal}{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}{literal}"/>'+{/literal}
			{else}
			   {literal}'<img src="{/literal}{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/{literal}views/img/{/literal}{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}{literal}" class="gsniprev-img-star-category" alt="{/literal}{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}{literal}"/>'+{/literal}
			{/if}
			{/section}
				'<\/div>';
			{literal}	
			append_block.append('<a class="catalog-rating" href="{/literal}{$item_product.link|escape:'htmlall':'UTF-8'}{literal}">({/literal}{$item_product.count_review|escape:'htmlall':'UTF-8'}{literal})<\/a>'+stars+'<div class="reviewsadvs-clear"><\/div>');
			//append_block.append(stars);
				
		}
		{/literal}
		{/foreach}
		{literal}
}

document.addEventListener("DOMContentLoaded", function(event) {
	$(document).ready(function(){
		makeStarsOnCategoryPage();
	});
});



    {/literal}{if $reviewsadvis16 ==1}{literal}
document.addEventListener("DOMContentLoaded", function(event) {
	$(document).on('click', '#grid', function(e){
		setTimeout(function(){
			makeStarsOnCategoryPage();
		}, 100);
	});

	$(document).on('click', '#list', function(e){
		setTimeout(function(){
			makeStarsOnCategoryPage();
		}, 100);
	});
});
    {/literal}{/if}{literal}
	</script>	
	{/literal}
	
{/if}
<!--  product list settings -->
{/if}




{if $reviewsadvis_uprof == 1}

    <link href="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/css/users.css" rel="stylesheet" type="text/css" media="all" />

{if $reviewsadvis_show == 1}
{literal}
<script type="text/javascript">

    {/literal}{if $reviewsadvislogged != 0}{literal}
    document.addEventListener("DOMContentLoaded", function(event) {
    $('document').ready( function() {
        var count1 = Math.random();
        var ph =  '<img class="avatar-header-reviewsadv" '+
                ' src="{/literal}{$reviewsadvavatar_thumb|escape:'htmlall':'UTF-8'}?re=' + count1+'{literal}"'+
                ' />';



        if($('#header_user_info span'))
            $('#header_user_info span:last').append(ph);

        // for PS 1.6 >
        if($('.header_user_info')){
            $('.header_user_info .account:last').append(ph);

        }

        // for ps 1.7 >
        if($('.user-info')){
            $('.user-info .account:last').append(ph);

        }


    });
    });
    {/literal}{/if}{literal}
</script>
{/literal}
{/if}
{/if}



