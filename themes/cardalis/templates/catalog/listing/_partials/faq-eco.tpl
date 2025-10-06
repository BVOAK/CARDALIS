<section id="sectionFAQList" class="u-bor-top padSection50">
    <div class="row wrapper">
        <div class="blockTitle text-center">
            <h2 class="titleSec">
                {$block40208->meta_title nofilter}
            </h2>
            <div class="description text-center">{$block40208->content nofilter}</div>
        </div>
        <div class="blockAccordion" id="blockAccordionBracelets">

            {assign var="ContentsCat63" value=CMS::getCMSPages(2, 63, false, null)}
            <div class="accordion" id="accordionBracelets">
                {foreach from=$ContentsCat63 item=item name=ContentsCat63}
                    {assign var="catContentId" value=$item.id_cms}
                    {assign var="ContentsCat63" value=CMS::getCMSContent($catContentId, null, null)}
                    <div class="card">
                        <div class="card-header" id="heading{$catContentId}">
                            <h3 class="mb-0">
                                <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
                                    data-target="#collapse{$catContentId}"
                                    aria-expanded="false"
                                    aria-controls="collapse{$catContentId}">
                                    {$item.meta_title nofilter}
                                </button>
                            </h3>
                        </div>
                        <div id="collapse{$catContentId}" class="collapse"
                            aria-labelledby="heading{$catContentId}" data-parent="#accordionBracelets">
                            <div class="card-body">
                                {$ContentsCat63.content nofilter}
                            </div>
                        </div>
                    </div>

                {/foreach}
            </div>
        </div>
    </div>
</section>