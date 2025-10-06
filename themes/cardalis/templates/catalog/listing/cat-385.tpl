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

<input id="inputTypeBracelet" type="hidden" value="Tissu" />

<section id="sectionHead">
    <div class="row wrapper">
        <div class="col-lg-7 blockText">
            <h1 class="titleCat">
                <span>BRACELETS IMPRIMÉS</span> {$block38501->meta_title nofilter}
            </h1>
            <div class="description">
                {$block38501->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5 text-center">
            <img class="img-fluid" src="{$urls.img_url}bracelets-imprimes-tissus-header.jpg"
                alt="Bracelets imprimés {$block38501->meta_title nofilter}" />
        </div>
    </div>
</section>

<div class="row wrapper catContent" id="blockSummary">
    <div class="col-lg-8">
        <section id="sectionType">
            <h2 class="titleSec">
                {$block38502->meta_title nofilter}
            </h2>
            <div class="description">
                {$block38502->content nofilter}
            </div>
        </section>
    </div>
    <div class="col-lg-4 bgGrey">
        <section id="sectionDemande" class="p-3 pt-5 pb-5">
            {$block36904->content nofilter}
            {hook h='displayGform' id='4'}
            <hr />
            <div id="blockReassurance">
                {$blockBICom01->content nofilter}
            </div>
        </section>
    </div>
</div>

<section id="sectionStep" class="padSection50 u-bor-top">
    <div class="row wrapper flex-column align-items-center">
        <h2 class="titleSec">
            {$blockBICom02->meta_title nofilter}
        </h2>
        <div id="blockStepList" class="d-flex">
            {$blockBICom02->content nofilter}
        </div>
    </div>
</section>

<section class="row bgBlueLight cWhite padSection50" id="sectionTissuMatieres">
    <div class="wrapper">
        <div class="blockTitle text-center">{$block38503->content nofilter}</div>
    </div>
    <div class="catContent d-flex flex-wrap w-100 m-auto">
        <div class="col-lg-6 ">
            <div id="blockTissuSatin" class="sectionInfoBracelets wrapperColLeft">
                {$block38504->content nofilter}
            </div>
        </div>
        <div class="col-lg-6">
            <div id="blockTissuSatinEco" class="sectionInfoBracelets wrapperColRight">
                {$block38505->content nofilter}
            </div>
        </div>
    </div>
</section>

<section class="catContent bgBlueLighter sectionFermetures" id="sectionTissuFermetures">
    <div class="wrapper row padSection50">
        <div class="col-lg-3">
            <div class="blockTitle">{$block38506->content nofilter}</div>
        </div>
        <div class="col-lg-8">
            <div id="blockTissuUsageUnique" class="sectionTabFermetures">
                {$block38507->content nofilter}
            </div>
            <div id="blockTissuReutilisable" class="sectionTabFermetures">
                {$block38508->content nofilter}
            </div>
        </div>
    </div>
</section>

<section class="catContent bgBlueLighter sectionFermetures" id="sectionTissuFermeturesEco">
    <div class="wrapper row padSection50">
        <div class="d-flex flex-wrap w-100">
            <div class="col-lg-3"></div>
            <div class="col-lg-8">
                <div id="blockTissuECO" class="sectionTabFermetures">
                    {$block38509->content nofilter}
                </div>
            </div>
        </div>
        <div class="d-flex flex-wrap w-100">
            <div class="col-lg-3"></div>
            <div class="col-lg-8">
                <div id="blockTissuECO" class="sectionTabFermetures">
                    {$block38510->content nofilter}
                </div>
            </div>
        </div>
    </div>
</section>

{include file='catalog/listing/_partials/faq-bracelets.tpl'}