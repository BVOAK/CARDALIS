<div id="pageFAQ">
    <div id="main" class="container-fluid">

        {block name='page_title'}
            <section id="blockTitleCMS" class="mb-4">
                <div class="row">
                    <div class="wrapper">
                        <div class="blockTitle text-center">
                            <h1 class="h1 mainTitle">
                                {$cms.meta_title}
                            </h1>
                        </div>
                    </div>
                </div>
            </section>
        {/block}


        <div class="d-flex wrapper">

            <section id="sectionMenu" class="col-lg-4">

                <div class="blockSticky">

                    <div id="menuAccordionFixed">
                        <ul>
                            <li><a href="#blockAccordionCommandes" class="js-scrollTo">Commandes</a></li>
                            <li><a href="#blockAccordionPaiements" class="js-scrollTo">Paiements</a></li>
                            <li><a href="#blockAccordionFacturation" class="js-scrollTo">Facturation</a></li>
                            <li><a href="#blockAccordionLivraison" class="js-scrollTo">Livraison</a></li>
                            <li><a href="#blockAccordionRetours" class="js-scrollTo">Retours</a></li>
                        </ul>
                    </div>

                    <div id="blockContactFAQ">
                        {include file='_partials/block-contact-reduced.tpl'}
                    </div>

                </div>

            </section>


            <section id="sectionFAQList" class="col-lg-8">
                <div class="row">

                    {* Content Commandes ID 11*}
                    <div class="blockAccordion" id="blockAccordionCommandes">
                        <p class="titleRubriqueAccordion">COMMANDES</p>

                        {assign var="ContentsCat11" value=CMS::getCMSPages(2, 11, false, null)}
                        <div class="accordion" id="accordionCommandes">
                            {foreach from=$ContentsCat11 item=item name=ContentsCat11}
                                {assign var="catContentId" value=$item.id_cms}
                                {assign var="ContentCat11" value=CMS::getCMSContent($catContentId, null, null)}
                                <div class="card">
                                    <div class="card-header" id="heading{$catContentId}">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left" type="button"
                                                data-toggle="collapse" data-target="#collapse{$catContentId}"
                                                aria-expanded="{if $smarty.foreach.ContentsCat11.first}true{else}false{/if}"
                                                aria-controls="collapse{$catContentId}">
                                                {$item.meta_title nofilter}
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapse{$catContentId}"
                                        class="collapse {if $smarty.foreach.ContentsCat11.first}show{/if}"
                                        aria-labelledby="heading{$catContentId}" data-parent="#accordionCommandes">
                                        <div class="card-body">
                                            {$ContentCat11.content nofilter}
                                        </div>
                                    </div>
                                </div>

                            {/foreach}
                        </div>
                    </div>

                    {* Content Commandes ID 12*}
                    <div class="blockAccordion" id="blockAccordionPaiements">
                        <p class="titleRubriqueAccordion">PAIEMENTS</p>

                        {assign var="ContentsCat12" value=CMS::getCMSPages(2, 12, false, null)}
                        <div class="accordion" id="accordionPaiements">
                            {foreach from=$ContentsCat12 item=item name=ContentsCat12}
                                {assign var="catContentId" value=$item.id_cms}
                                {assign var="ContentCat12" value=CMS::getCMSContent($catContentId, null, null)}
                                <div class="card">
                                    <div class="card-header" id="heading{$catContentId}">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left" type="button"
                                                data-toggle="collapse" data-target="#collapse{$catContentId}"
                                                aria-expanded="false" aria-controls="collapse{$catContentId}">
                                                {$item.meta_title nofilter}
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapse{$catContentId}" class="collapse"
                                        aria-labelledby="heading{$catContentId}" data-parent="#accordionPaiements">
                                        <div class="card-body">
                                            {$ContentCat12.content nofilter}
                                        </div>
                                    </div>
                                </div>

                            {/foreach}
                        </div>
                    </div>

                    {* Content Commandes ID 13*}
                    <div class="blockAccordion" id="blockAccordionFacturation">
                        <p class="titleRubriqueAccordion">FACTURATION</p>

                        {assign var="ContentsCat13" value=CMS::getCMSPages(2, 13, false, null)}
                        <div class="accordion" id="accordionFacturation">
                            {foreach from=$ContentsCat13 item=item name=ContentsCat13}
                                {assign var="catContentId" value=$item.id_cms}
                                {assign var="ContentCat13" value=CMS::getCMSContent($catContentId, null, null)}
                                <div class="card">
                                    <div class="card-header" id="heading{$catContentId}">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left" type="button"
                                                data-toggle="collapse" data-target="#collapse{$catContentId}"
                                                aria-expanded="false" aria-controls="collapse{$catContentId}">
                                                {$item.meta_title nofilter}
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapse{$catContentId}" class="collapse"
                                        aria-labelledby="heading{$catContentId}" data-parent="#accordionFacturation">
                                        <div class="card-body">
                                            {$ContentCat13.content nofilter}
                                        </div>
                                    </div>
                                </div>

                            {/foreach}
                        </div>
                    </div>

                    {* Content Commandes ID 14*}
                    <div class="blockAccordion" id="blockAccordionLivraison">
                        <p class="titleRubriqueAccordion">LIVRAISON</p>

                        {assign var="ContentsCat14" value=CMS::getCMSPages(2, 14, false, null)}
                        <div class="accordion" id="accordionLivraison">
                            {foreach from=$ContentsCat14 item=item name=ContentsCat14}
                                {assign var="catContentId" value=$item.id_cms}
                                {assign var="ContentCat14" value=CMS::getCMSContent($catContentId, null, null)}
                                <div class="card">
                                    <div class="card-header" id="heading{$catContentId}">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left" type="button"
                                                data-toggle="collapse" data-target="#collapse{$catContentId}"
                                                aria-expanded="false" aria-controls="collapse{$catContentId}">
                                                {$item.meta_title nofilter}
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapse{$catContentId}" class="collapse"
                                        aria-labelledby="heading{$catContentId}" data-parent="#accordionLivraison">
                                        <div class="card-body">
                                            {$ContentCat14.content nofilter}
                                        </div>
                                    </div>
                                </div>

                            {/foreach}
                        </div>
                    </div>

                    {* Content Commandes ID 15*}
                    <div class="blockAccordion" id="blockAccordionRetours">
                        <p class="titleRubriqueAccordion">RETOURS</p>

                        {assign var="ContentsCat15" value=CMS::getCMSPages(2 , 15, false, null)}
                        <div class="accordion" id="accordionRetours">
                            {foreach from=$ContentsCat15 item=item name=ContentsCat15}
                                {assign var="catContentId" value=$item.id_cms}
                                {assign var="ContentCat15" value=CMS::getCMSContent($catContentId, null, null)}
                                <div class="card">
                                    <div class="card-header" id="heading{$catContentId}">
                                        <h2 class="mb-0">
                                            <button class="btn btn-link btn-block text-left" type="button"
                                                data-toggle="collapse" data-target="#collapse{$catContentId}"
                                                aria-expanded="false" aria-controls="collapse{$catContentId}">
                                                {$item.meta_title nofilter}
                                            </button>
                                        </h2>
                                    </div>
                                    <div id="collapse{$catContentId}" class="collapse"
                                        aria-labelledby="heading{$catContentId}" data-parent="#accordionRetours">
                                        <div class="card-body">
                                            {$ContentCat15.content nofilter}
                                        </div>
                                    </div>
                                </div>

                            {/foreach}
                        </div>
                    </div>


                </div>
            </section>

        </div>

    </div>
</div>