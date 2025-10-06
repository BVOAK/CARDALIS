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
{if $testimonials}
<div id="ph_testimonials-block" class="block products_block">
	<h4 class="title_block">
    	<a href="{$link->getModuleLink('ph_testimonials', 'list')|escape:'html':'UTF-8'}" title="{l s='View all testimonials' mod='ph_testimonials'}">{$title_column|escape:'html':'UTF-8'}</a>
    </h4>
	<div class="block_content">
		<ul class="block_content products-block">
            {foreach $testimonials as $testimonial}
			<li class="clearfix">
                {if $testimonial.image}
				<a href="{$link->getModuleLink('ph_testimonials', 'list')|escape:'html':'UTF-8'}#ph_testimonials-item-{$testimonial.id_prestahome_testimonial|intval}" title="" class="products-block-image content_img clearfix">
					<img class="img-responsive" src="{$testimonial.image|escape:'html':'UTF-8'}" alt="" style="width: 80px;">
				</a>
                {/if}
				<div class="product-content">
                	<h5>
                    	<a href="{$link->getModuleLink('ph_testimonials', 'list')|escape:'html':'UTF-8'}#ph_testimonials-item-{$testimonial.id_prestahome_testimonial|intval}" class="product-name">{$testimonial.author_name|escape:'html':'UTF-8'}  {if !empty($testimonial.author_info)}<span>({$testimonial.author_info|escape:'html':'UTF-8'})</span>{/if}</a>
                    </h5>
                    <p class="product-description">{$testimonial.content|truncate:64:'...'|escape:'html':'UTF-8'}</p>
                 </div>
			</li>
            {/foreach}
		</ul>
		<div class="lnk">
            <a href="{$link->getModuleLink('ph_testimonials', 'list')|escape:'html':'UTF-8'}" title="{l s='View all testimonials' mod='ph_testimonials'}" class="btn btn-default button button-small"><span>{l s='View all testimonials' mod='ph_testimonials'}</span></a>
        </div>
	</div><!-- .block_content -->
</div><!-- #ph_testimonials-block -->
{/if}