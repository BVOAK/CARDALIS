{block name='product_list_bottom'}
    {if $totcustomfields_display_description_longue|@count_characters > 55}
        <div id="sectionDescriptionLongue" class="row wrapper pt-3 pb-3">
            <div class="description">
                {$totcustomfields_display_description_longue nofilter}
                <a href="#content-wrapper" class="readBack js-scrollTo description text-underline">Haut de page</a>
            </div>
            
        </div>
    {/if}
{/block}

{widget name="ps_categorytree"}