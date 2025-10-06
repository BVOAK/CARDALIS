<div class="row">
    <section id="catParent" class="container">
        <div class="row">
            <div class="wrapper">
            {block name='product_list_header'}

                <div id="headerCategory">

                    <div class="blockTitle">
                        {* <p class="titleCat">{$category.name nofilter}</p>  *}
                        <h1 class="titleCat">
                            {if $totcustomfields_display_title_h1|@count_characters > 55}
                                {$totcustomfields_display_title_h1|strip_tags nofilter}
                            {else}
                                {$category.name nofilter}
                            {/if}
                        </h1>
                    </div>

                    <div class="blockDesc">
                        <div id="category-description">
                            {$category.description nofilter}
                            {if $totcustomfields_display_description_longue|@count_characters > 55}
                                <a href="#sectionDescriptionLongue" class="readMoreBtn js-scrollTo">{l s="Lire la suite"}</a>
                            {/if}
                        </div>
                    </div>

                </div>

                
                {if $subcategories}
                    <div id="subCategoriesList" class="wrapper">
                       {*  <p class="title">{l s="SOUS CATÉGORIE" d='Shop.Theme.Actions'}</p> *}
                        <div class="blockChildCat d-flex w-100 flex-wrap">
                            {foreach from=$subcategories item="subCat" key=k}
                                <div class="itemChildCat col-xl-4 col-lg-6 col-12">
                                    <a href="{$subCat.url}" class="content d-flex">
                                        <div class="text">
                                            <h3 class="subCatTitle">{$subCat.name}</h3>
                                            <p class="description">{$subCat.description|strip_tags:'UTF-8'|truncate:300:"..."}</p>
                                        </div>
                                        <img data-src="{$urls.img_cat_url}{$subCat.id_category}-home_default.jpg" class="lazyload" />
                                    </a>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                {/if}

            {/block}

            </div>

        </div>
    </section>
</div>
