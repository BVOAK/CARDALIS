{extends file=$layout}

{block name='head_microdata_special'}
    {include file='_partials/microdata/product-list-jsonld.tpl' listing=$listing}
{/block}

{block name='content'}

    {if ($category.id == 92)}
        <div id="main" class="catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-92.tpl'}
        </div>

    {elseif ($category.id == 208)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-208.tpl'}
        </div>

    {elseif ($category.id == 109)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-109.tpl'}
        </div>

    {elseif ($category.id == 137)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-137.tpl'}
        </div>

    {elseif ($category.id == 343)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-343.tpl'}
        </div>

    {elseif ($category.id == 344)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-344.tpl'}
        </div>

    {elseif ($category.id == 171)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-171.tpl'}
        </div>

    {elseif ($category.id == 338)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-338.tpl'}
        </div>

    {elseif ($category.id == 365)}
        <div id="main" class="catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-365.tpl'}
        </div>

    {elseif ($category.id == 341)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-341.tpl'}
        </div>

    {elseif ($category.id == 369)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-369.tpl'}
        </div>

    {elseif ($category.id == 384)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-384.tpl'}
        </div>

    {elseif ($category.id == 385)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-385.tpl'}
        </div>

    {elseif ($category.id == 386)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-386.tpl'}
        </div>

    {elseif ($category.id == 387)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-387.tpl'}
        </div>

    {elseif ($category.id == 399)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-399.tpl'}
        </div>

    {elseif ($category.id == 400)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-400.tpl'}
        </div>

    {elseif ($category.id == 401)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-401.tpl'}
        </div>

    {elseif ($category.id == 402)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-402.tpl'}
        </div>

    {elseif ($category.id == 145)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-145.tpl'}
        </div>

    {elseif ($category.id == 398)}
        <div id="main" class="catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-398.tpl'}
        </div>


    {elseif ($category.id == 417)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-417.tpl'}
        </div>

    {elseif ($category.id == 418)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-418.tpl'}
        </div>

    {elseif ($category.id == 419)}
        <div id="main" class="catContent catID{$category.id}">
            {block name='product_list_header'}{/block}
            {include file='catalog/listing/cat-419.tpl'}
        </div>

    {else}

        <div id="main" class="container-fluid p-0">
            {include file='catalog/listing/_partials/cat-header.tpl'}
            {include file='catalog/listing/_partials/cat-products.tpl'}
            {include file='catalog/listing/_partials/cat-footer.tpl'}
        </div>

    {/if}
{/block}