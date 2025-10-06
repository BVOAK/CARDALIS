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

 <meta charset="utf-8">
 <meta http-equiv="x-ua-compatible" content="ie=edge">
 
 {block name='head_seo'}
   <title>{block name='head_seo_title'}{$page.meta.title}{/block}</title>
 
     {hook h='displayAfterTitle'}
   <meta name="description" content="{block name='head_seo_description'}{$page.meta.description}{/block}">
   <meta name="keywords" content="{block name='head_seo_keywords'}{$page.meta.keywords}{/block}">
   {if $page.meta.robots !== 'index'}
       <meta name="robots" content="{$page.meta.robots}">
   {/if}
   {if $page.canonical}
     <link rel="canonical" href="{$page.canonical}">
   {/if}
   
    {* Ajout des balises de pagination SEO *}
	  {if isset($prev_url)}
		<link rel="prev" href="{$prev_url}">
	  {/if}
	  {if isset($next_url)}
		<link rel="next" href="{$next_url}">
	  {/if}
	  
	  {* Debug info en commentaire (à supprimer en prod) *}
	  {if isset($pagination_seo_enabled)}
		<!-- SEO Pagination: Page {$current_page_seo|default:1}/{$total_pages_seo|default:1} -->
	  {/if}
 {/block}
 
 {if $page.page_name == "authentication" || $page.page_name == "my-account"}
   <meta name="robots" content="noindex,nofollow">
 {/if}
 
 <meta name="viewport" content="width=device-width, initial-scale=1">
 
 <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
 <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet"> 
 <link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet"> 
 
 {block name='stylesheets'}
   {include file="_partials/stylesheets.tpl" stylesheets=$stylesheets}
   <link rel="stylesheet" href="{$urls.base_url}/themes/cardalis/assets/css/_custom.css" media="all">
 {/block}


 
 {literal}
   <!-- Hotjar Tracking Code for https://www.cardalis.fr/ -->
   <script>
     (function(h,o,t,j,a,r){
         h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
         h._hjSettings={hjid:2251848,hjsv:6};
         a=o.getElementsByTagName('head')[0];
         r=o.createElement('script');r.async=1;
         r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
         a.appendChild(r);
     })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
 </script>
 {/literal}
 
 {* <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
 <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js"></script> *}
 
 {block name='javascript_head'}
   {include file="_partials/javascript.tpl" javascript=$javascript.head vars=$js_custom_vars}   
 {/block}
       
 <!-- Begin eTrusted bootstrap tag -->
 <script src="https://integrations.etrusted.com/applications/widget.js/v2" defer async></script>
 <!-- End eTrusted bootstrap tag -->
 

{*  <script src="https://www.google.com/recaptcha/enterprise.js?render=6LcJFQQqAAAAANUy5motDRQZearpFrjqpnAKVWum" async defer></script>
 *} 
 {block name='hook_header'}
   {$HOOK_HEADER nofilter}
 {/block}