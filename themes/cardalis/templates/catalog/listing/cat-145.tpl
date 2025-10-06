{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

<section id="sectionHead">
    <div class="row wrapper">
        <div class="col-lg-8 blockText">
            <h1 class="titleCat">
                {$block14501->meta_title nofilter}
            </h1>
            <div class="description">
                {$block14501->content nofilter}
            </div>
        </div>
        <div class="img col-lg-4">
            <img class="img-fluid" src="{$urls.img_url}cartes-imprimees-head.jpg"
                alt="{$block13701->meta_title nofilter}" />
        </div>
    </div>
</section>

<section id="sectionTypesCartes" class="padSection50 bgBlueLight">
    <div class="row wrapper flex-column align-items-center pt-4 pb-4">
        <h2 class="titleSec text-center cWhite">
            {$block14503->meta_title nofilter}
        </h2>
        <div id="blockCardList" class="blockSlick w-100 col-lg-9">
            {$block14503->content nofilter}
        </div>
    </div>
</section>

<section id="sectionStep" class="padSection50 u-bor-bot">
    <div class="row wrapper flex-column align-items-center">
        <h2 class="titleSec text-center">
            {$block14502->meta_title nofilter}
        </h2>
        <div id="blockStepList" class="d-flex">
            {$block14502->content nofilter}
        </div>
    </div>
    <div class="row wrapper padSection50 description pb-0 flex-column align-items-center">
        {$block13705->content nofilter}
        <a href="{$urls.pages.contact}" class="btn btn-primary btn-outline">Faites votre demande de devis ici</a>
    </div>
</section>

<section id="sectionFormatsCartes" class="padSection50">
    <div class="row wrapper flex-column align-items-center pt-4 pb-4">
        <h2 class="titleSec text-center">
            {$block14504->meta_title nofilter}
        </h2>
        <div id="blockFormatsList" class="d-flex flex-wrap justify-content-center">
            {$block14504->content nofilter}
        </div>
        <div class="row wrapper u-bor-top padSection50 description pb-0 flex-column align-items-center mt-3">
            <p class="description">Nous proposons de nombreux formats de cartes</p>
            <a href="{$urls.pages.contact}" class="btn btn-primary btn-outline">Contactez nous pour des formes
                spécifiques</a>
        </div>
    </div>
</section>

<section id="sectionCardPerso" class="padSection50 bgGrey">
    <div class="row wrapper flex-column align-items-center pt-4 pb-4">
        <h2 class="titleSec text-center m-auto">
            {$block14505->meta_title nofilter}
        </h2>
        <div class="d-flex flex-wrap justify-content-center mt-4 align-items-center">
            <div class="blockImage text-center d-md-none d-sm-block">
                <a href="#textrepere1" class="repereNumber jsscrollTo" id="repere1">1</a>
                <a href="#textrepere2" class="repereNumber jsscrollTo" id="repere2">2</a>
                <a href="#textrepere3" class="repereNumber jsscrollTo" id="repere3">3</a>
                <a href="#textrepere4" class="repereNumber jsscrollTo" id="repere4">4</a>
                <a href="#textrepere5" class="repereNumber jsscrollTo" id="repere5">5</a>
                <a href="#textrepere6" class="repereNumber jsscrollTo" id="repere6">6</a>
                <a href="#textrepere7" class="repereNumber jsscrollTo" id="repere7">7</a>
                <img src="/img/cms/cartes-imprimees/carte-personnalisable-schema.png" class="m-auto img-fluid"
                    alt="carte-personnalisable-schema.png" />
            </div>
            {$block14505->content nofilter}
        </div>
    </div>
</section>

<section id="sectionCardFinitions" class="padSection50">
    <div class="row wrapper flex-column align-items-center pt-4 pb-4">
        <h2 class="titleSec text-center m-auto">
            {$block14506->meta_title nofilter}
        </h2>
        <div id="blockFinitionsList" class="d-flex flex-wrap mt-5">
            {$block14506->content nofilter}
        </div>
    </div>
</section>

<section id="sectionCardEco" class="padSection50">
    <div class="row wrapper flex-column align-items-center pt-4 pb-4">
        <h2 class="titleSec text-center m-auto cGreenDark">
            {$block14507->meta_title nofilter}
        </h2>
        {$block14507->content nofilter}
    </div>
</section>

<section id="sectionDemande" class="padSection50 pb-0">
    <div class="row wrapper justify-content-center">
        <div class="col-lg-4">
            {$block14508->content nofilter}
            <div class="col-lg-11">
                <img class="img-fluid" src="{$urls.img_url}conseilServiceImpression.jpg"
                    alt="{$block33803->meta_title nofilter}" />
            </div>
        </div>
        <div class="col-lg-4 pl-lg-5">
            {hook h='displayGform' id='8'}
        </div>
    </div>
</section>

<div class="modal fade" tabindex="-1" aria-labelledby="blocWoodCard" id="blocWoodCard" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content p-5">
            <div class="modal-header p-0">
                <h3 class="f25">Cartes écologiques en bois</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            {$block14509->content nofilter}
        </div>
    </div>
</div>

<div class="modal fade" tabindex="-1" aria-labelledby="blocCorkCard" id="blocCorkCard" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content p-5">
            <div class="modal-header p-0">
                <h3 class="f25">Cartes écologiques en liège</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            {$block14510->content nofilter}
        </div>
    </div>
</div>