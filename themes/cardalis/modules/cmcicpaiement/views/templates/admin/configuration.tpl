{*
* 2007-2015 PrestaShop
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2015 PrestaShop SA
* @license   http://addons.prestashop.com/en/content/12-terms-and-conditions-of-use
* International Registered Trademark & Property of PrestaShop SA
*}

{literal}
<script>
	ps_version = '{/literal}{$ps_version|intval}{literal}';
	multishop = '{/literal}{$multishop|intval}{literal}';
	debug_mode = '{/literal}{$debug_mode|intval}{literal}';
{/literal}
</script>

{if $ps_version == 0}
<div class="bootstrap">
	<!-- Beautiful header -->
	{include file="./header.tpl"}
{/if}
	<!-- Module content -->
	<div id="modulecontent" class="clearfix" role="{$is_submit|intval}">

		<!-- Nav tabs -->
		<div class="col-lg-2">
			<div class="list-group">
				<a href="#documentation" class="doc list-group-item" data-toggle="tab"><i class="icon-book"></i> {l s='Documentation' mod='cmcicpaiement'}</a>
				<a href="#conf" class="list-group-item" data-toggle="tab"><i class="icon-cogs"></i> {l s='Configuration' mod='cmcicpaiement'}</a>
				<!--a href="#help" class="list-group-item" data-toggle="tab"><i class="icon-question-circle"></i> {l s='FAQ' mod='cmcicpaiement'}</a-->
				<a href="#contacts" class="contactus list-group-item" data-toggle="tab"><i class="icon-envelope"></i> {l s='Contact' mod='cmcicpaiement'}</a>
			</div>
			<div class="list-group">
				<a class="list-group-item"><i class="icon-info"></i> {l s='Version' mod='cmcicpaiement'} {$module_version|escape:'htmlall':'UTF-8'}</a>
				<a class="list-group-item" href="{$cmcic_board_link|escape:'htmlall':'UTF-8'}" target="_blank"><i class="icon-link"></i> <strong>{l s='Go to the board' mod='cmcicpaiement'}</strong></a>
			</div>
		</div>

		<!-- Tab panes -->
		<div class="tab-content col-lg-10">
			<div class="tab-pane active panel" id="documentation">
				{include file="./tabs/documentation.tpl"}
			</div>
			<div class="tab-pane panel" id="conf">
				{include file="./tabs/conf.tpl"}
			</div>
			{include file="./tabs/contact.tpl"}
		</div>
	</div>
{if $ps_version == 0}
	{* Manage translation only for PrestaShop 1.5 *}
	{include file="./translations.tpl"}
</div>
{/if}
