<div class="container-fluid bgBlueLighter">

    {if $totcustomfields_display_banner_category|@count_characters > 55}
        <section class="row" id="catBannerHeader">
            <div class="imgBanner imgtotcustomfields" id="banner-{$category.id}" data-title="{$category.name}">
                {$totcustomfields_display_banner_category nofilter}
            </div>
        </section>
    {/if}

    {block name='product_list_header'}
    <div id="sectionHead" class="row wrapper align-items-center">
        {if $listing.pagination.items_shown_from > 0}
            <div class="
                {if $totcustomfields_display_reseller_image|@count_characters > 55}col-md-10
                {elseif $category.id == 346 || $category.id == 350 || $category.id == 347}
                col-md-8
                {else}col-12
                {/if}">
                <h1 class="titleCat mt-4">
                    {if ($category.name)}
                        {if $totcustomfields_display_title_h1|@count_characters > 55}
                            {$totcustomfields_display_title_h1|strip_tags nofilter}
                        {else}
                            {$category.name nofilter}
                        {/if}
                    {/if}
                    {if $manufacturer.name}
                        {l s='List of products by brand %s' sprintf=[$manufacturer.name] d='Shop.Theme.Catalog'}
                    {/if}
                </h1>
                <div class="block-category-inner" id="category-description">
                    {if $category.description}
                        <div id="category-description" class="text-muted accordionContentPlus">
                            <div id="collapseContentPlus" class="collapse dont-collapse-sm">
                                {$category.description nofilter}
                            </div>
                            <button class="btn btn-link btn-block text-left d-md-none d-sm-block" type="button"
                                data-toggle="collapse" data-target="#collapseContentPlus" aria-expanded="false"
                                aria-controls="collapseContentPlus">Lire la
                                suite <i class="fa fa-arrow-down"></i>
                            </button>
                        </div>
                    {/if}
                    {if $manufacturer.description}
                        <div id="category-description" class="text-muted accordionContentPlus">
                            <div id="manufacturer-short_description">{$manufacturer.short_description nofilter}</div>
                            <div id="manufacturer-description">{$manufacturer.description nofilter}</div>
                        </div>
                    {/if}
                </div>
            </div>
            {if $category.id == 346}
                <div class="col-lg-4 text-center img">
                    <img class="img-fluid" src="{$urls.img_url}bracelets-silicone-header.jpg" alt="Bracelets silicone" />
                </div>
            {/if}
            {if $category.id == 350}
                <div class="col-lg-4 text-center img">
                    <img class="img-fluid" src="{$urls.img_url}bracelets-vinyle-header.jpg" alt="Bracelets vinyile" />
                </div>
            {/if}
            {if $category.id == 347}
                <div class="col-lg-4 text-center img">
                    <img class="img-fluid" src="{$urls.img_url}bracelets-tyvek-header.jpg" alt="Bracelets Tyvek" />
                </div>
            {/if}
            {if $totcustomfields_display_reseller_image|@count_characters > 55}
                <div class="col-md-2" id="category-image-reseller">
                    {$totcustomfields_display_reseller_image nofilter}
                </div>
            {/if}        
        
        {/if}
    </div>
    {/block}

</div>