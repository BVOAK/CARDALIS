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

<input id="inputTypeBracelet" type="hidden" value="ECO" />

<section id="sectionHead">
    <div class="row wrapper">
        <div class="col-lg-7 blockText">
            <h1 class="titleCat">
                <span>TOURS DE COU</span> {$block40101->meta_title nofilter}
            </h1>
            <div class="description">
                {$block40101->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5 text-center">
            <img class="img-fluid" src="{$urls.img_url}lanyards-imprimes-eco-header.jpg"
                alt="Tours de cou imprimés {$block40101->meta_title nofilter}" />
        </div>
    </div>
</section>

<div class="row wrapper catContent" id="blockSummary">
    <div class="col-lg-8 position-relative p-md-2 p-0">
        <section id="sectionType">
            <h2 class="titleSec">
                {$block40102->meta_title nofilter}
            </h2>
            <div class="description">
                {$block40102->content nofilter}
            </div>
        </section>
    </div>
    <div class="col-lg-4 bgGrey">
        <section id="sectionDemande" class="p-3 pt-5 pb-5">
            {$blockLICom01->content nofilter}
            {hook h='displayGform' id='7'}
            <hr />
            <div id="blockReassurance">
                {$blockLICom02->content nofilter}
            </div>
        </section>
    </div>
</div>

<section id="sectionStep">
    <div class="row">
        <div class="wrapper padSection">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$blockBICom02->meta_title nofilter}
                </h2>
            </div>
            <div id="blockStepList" class="d-flex">
                {$blockBICom02->content nofilter}
            </div>
        </div>
    </div>
</section>

{include file='catalog/listing/_partials/faq-lanyards.tpl'}