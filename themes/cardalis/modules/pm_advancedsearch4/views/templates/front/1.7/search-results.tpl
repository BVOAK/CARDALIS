{extends file='catalog/listing/category.tpl'}

{block name='product_list_header'}
    {if !empty($as_search.keep_category_information) && isset($category) && isset($subcategories)}
        {$smarty.block.parent}
    {else}
        <div id="js-product-list-header">
            {if $as_seo_description}
                <div id="headerCategory" class="w-100">
                    <div class="wrapper pt-2 pb-3">
                        <div class="blockTitle mb-0">
                            <h1 class="titleCat mb-2" id="product-list-header">{$as_seo_title}</h1>
                        </div>
                        <div class="blockDesc">
                            <div id="category-description" class="text-muted">{$as_seo_description nofilter}{* HTML *}</div>
                        </div>
                    </div>
                </div>
            {else}
                {if $as_search.id_search != "37"}
                    <div id="headerCategory" class="w-100">
                        <div class="wrapper pt-2 pb-3">
                            <div class="blockTitle mb-0">
                                <h1 class="titleCat mb-2" id="product-list-header">{$as_seo_title}</h1>
                                {* <h1 class="titleCat mb-2" id="product-list-header">{$listing.label}</h1> *}
                            </div>
                        </div>
                    </div>
                {/if}
            {/if}
        </div>
    {/if}

    {if $as_search.id_search == "37"}
        {widget name="pm_advancedsearch4" id_search_engine="37"}
    {/if}

{/block}


{block name='product_list_active_filters'}
    {if !empty($as_search.remind_selection) && ($as_search.remind_selection == 3 || $as_search.remind_selection == 1)}
        <div id="js-active-search-filters" class="hidden-sm-down">
            {$listing.rendered_active_filters nofilter}{* HTML *}
        </div>
    {/if}
{/block}

{block name='content'}
    <div id="PM_ASearchResults" data-id-search="{$id_search|intval}">
        <div id="PM_ASearchResultsInner" class="PM_ASearchResultsInner_{$id_search|intval}">
            {$smarty.block.parent}
        </div>
    </div>
    {include file=$as_obj->getTplPath("pm_advancedsearch_js.tpl") as_searchs=[$as_search] jsInitOnly=true}
{/block}

{block name='product_price_and_shipping' append}
    {if $as_search.productFilterListSource|default:'' == 'subscription'}
        {widget_block name="pm_subscription" product=$product}
            {include 'module:pm_subscription/views/templates/front/1.7/partials/widget/listing.tpl'}
        {/widget_block}
    {/if}
{/block}