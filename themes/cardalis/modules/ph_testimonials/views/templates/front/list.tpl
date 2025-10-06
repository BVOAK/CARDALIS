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
{capture name=path}
	{l s='Testimonials' mod='ph_testimonials'}
{/capture}

<h1>{l s='Testimonials' mod='ph_testimonials'}</h1>

{include file="$tpl_dir./errors.tpl"}

{if isset($smarty.get.confirmation)}
	<div class="alert alert-success">
		{l s='Thank you for submission. Your testimonial will be available soon.' mod='ph_testimonials'}
	</div><!-- .alert -->
{/if}

<div class="ph_testimonials-list">

	<a class="btn btn-default button button-small new_testimonial_btn"
		href="#"><span>{l s='Add your testimonial' mod='ph_testimonials'}</span></a>

	<div class="row hide" id="new_testimonial_form">
		<div class="col-md-6 col-xs-12">
			<form action="{$link->getModuleLink('ph_testimonials', 'list')|escape:'html':'UTF-8'}" method="post"
				id="new-testimonial-form" class="box" enctype="multipart/form-data">
				<h3 class="page-subheading">{l s='Add testimonial' mod='ph_testimonials'}</h3>
				<div class="form_content clearfix">
					<p>{l s='Want to add your testimonial? Please, fill form below' mod='ph_testimonials'}</p>
					<div class="form-group">
						<label for="author_name">{l s='Your name' mod='ph_testimonials'} *</label>
						<input type="text" class="form-control" name="author_name" id="author_name"
							{if isset($smarty.post.author_name)}value="{$smarty.post.author_name|escape:'html':'UTF-8'}"
							{/if} />
					</div>
					<div class="form-group">
						<label
							for="author_info">{l s='Additional information (for eg. Customer, CEO, Owner)' mod='ph_testimonials'}</label>
						<input type="text" class="form-control" name="author_info" id="author_info"
							{if isset($smarty.post.author_info)}value="{$smarty.post.author_info|escape:'html':'UTF-8'}"
							{/if} />
					</div>
					<div class="form-group">
						<label for="author_email">{l s='E-mail' mod='ph_testimonials'} *</label>
						<input type="text" class="form-control" name="author_email" id="author_email"
							{if isset($smarty.post.author_email)}value="{$smarty.post.author_email|escape:'html':'UTF-8'}"
							{/if} />
					</div>
					<div class="form-group">
						<label for="author_url">{l s='URL to your site' mod='ph_testimonials'}</label>
						<input type="text" class="form-control" name="author_url" id="author_url"
							{if isset($smarty.post.author_url)}value="{$smarty.post.author_url|escape:'html':'UTF-8'}"
							{/if} />
					</div>
					<div class="form-group">
						<label for="author_image">{l s='Your photo' mod='ph_testimonials'}</label>
						<input type="file" name="author_image" id="author_image" class="form-control" />
					</div>
					<div class="form-group">
						<label for="author_url">{l s='Testimonial:' mod='ph_testimonials'}</label>
						<textarea class="form-control" name="content"
							id="content">{if isset($smarty.post.content)}{$smarty.post.content|escape:'htmlall':'UTF-8'}{/if}</textarea>
					</div>
					<div class="submit">
						<button class="btn btn-default button" type="submit" id="submitNewTestimonial"
							name="submitNewTestimonial">
							<span>
								{l s='Submit' mod='ph_testimonials'}
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	{if $testimonials}
		{foreach $testimonials as $testimonial}
			<div class="ph_testimonials-item row" id="ph_testimonials-item-{$testimonial.id_prestahome_testimonial|intval}">
				{if $testimonial.image}
					<div class="ph_testimonials-item-image col-md-3">
						<img src="{$testimonial.image|escape:'html':'UTF-8'}"
							alt="{$testimonial.author_name|escape:'html':'UTF-8'}{if $testimonial.author_info} ({$testimonial.author_info|escape:'html':'UTF-8'}){/if}"
							class="img-responsive" />
					</div><!-- .ph_testimonials-item-image -->
					<div class="ph_testimonials-item-content col-md-9">
					{else}
						<div class="ph_testimonials-item-content col-md-12">
						{/if}
						<h3>
							{if isset($testimonial.author_url) && !empty($testimonial.author_url)}
								<a href="{$testimonial.author_url|escape:'html':'UTF-8'}"
									title="{l s='Go to website of the author of this testimonial' mod='ph_testimonials'}"
									rel="nofollow">
								{/if}
								{$testimonial.author_name|escape:'html':'UTF-8'}
								{if isset($testimonial.author_url) && !empty($testimonial.author_url)}
								</a>
							{/if}
							{if !empty($testimonial.author_info)}
								<span>({$testimonial.author_info|escape:'html':'UTF-8'})</span>
							{/if}
						</h3>
						<p>{$testimonial.content}{* HTML CONTENT *}</p>
						<p><em>{l s='Added:' mod='ph_testimonials'}
								{$testimonial.date_add|date_format:'d.m.Y'|escape:'htmlall':'UTF-8'}</em></p>
					</div><!-- .ph_testimonials-item-content -->
				</div><!-- .ph_testimonials-item -->
			{/foreach}
		{else}
			<p class="warning alert alert-warning">
				{l s='There are no testimonials yet, want to add new?' mod='ph_testimonials'}</p>
		{/if}
</div><!-- .ph_testimonials-list -->