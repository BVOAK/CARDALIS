{*
 * This file allows you to customize your search page.
 * You can safely remove it if you want it to appear exactly like all other product listing pages
 *}
{extends file='catalog/listing/product-list.tpl'}

{block name="error_content"}
    <h4>{l s='No matches were found for your search' d='Shop.Theme.Catalog'}</h4>
    <p>{l s='Please try other keywords to describe what you are looking for.' d='Shop.Theme.Catalog'}</p>
{/block}

{block name='product_list_header'}
    <div id="sectionHead" class="row wrapper align-items-center p-3 pt-4">
        <h1 class="titleCat" id="js-product-list-header">
            {l s="Votre recherche"} : {$smarty.get.s}
        </h1>
    </div>
{/block}