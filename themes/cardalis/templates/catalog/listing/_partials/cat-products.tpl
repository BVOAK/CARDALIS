<section id="products">

    <div class="row wrapper">

        <div id="leftColumn">
            {hook h="displayLeftColumn"}
        </div>

        <div id="productsListColumn">

            {if $listing.products|count}

                {* {block name='product_list_top'}
                    {include file='catalog/_partials/products-top.tpl' listing=$listing}
                {/block} *}

               {*  {block name='product_list_active_filters'}
                    <div class="hidden-sm-down" id="blockActiveFilters">
                        {$listing.rendered_active_filters nofilter}                  
                    </div>
                {/block} *}

                <div class="hidden-sm-down" id="blockActiveFilters">
                </div>
                                   
                {block name='product_list'}
                    {include file='catalog/_partials/products.tpl' listing=$listing}
                {/block}

                <div id="js-product-list-bottom">
                    {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
                </div>


            {else}
                <div id="js-product-list-top"></div>
                <div id="js-product-list">
                    {include file='errors/not-found.tpl'}
                </div>
                <div id="js-product-list-bottom"></div>
            {/if}

        </div>

    </div>

</section>