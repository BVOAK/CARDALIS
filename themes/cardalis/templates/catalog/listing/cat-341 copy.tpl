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

 {hook h='CETemplate' id=31}

{* <section id="sectionHead">
    <div class="row wrapper">
        <div class="col-lg-7 blockText">
            <h1 class="titleCat">
                {$block34101->meta_title nofilter}
            </h1>
            <div class="description">
                {$block34101->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5 text-center">
            <img class="img-fluid" src="{$urls.img_url}lanyards-imprimes-header.jpg"
                alt="{$block34101->meta_title nofilter}" />
        </div>
    </div>
</section>
<section id="sectionListCatsChild" class="padSection50 bgBlueLight">
    <div class="row wrapper">
        <h2 class="titleSec cWhite m-auto pb-4 text-center">
            {$block34102->meta_title nofilter}
        </h2>
    </div>
    <div class="blockItemList p-3">
        {$block34102->content nofilter}
    </div>
</section>

<section id="sectionStep" class="padSection50 u-bor-top bgGrey">
    <div class="row wrapper flex-column align-items-center">
        <h2 class="titleSec text-center">
            {$block34103->meta_title nofilter}
        </h2>
        <div id="blockStepList" class="d-flex">
            {$block34103->content nofilter}
        </div>
    </div>
    <div class="row wrapper u-bor-top flex-column align-items-center pt-4">
        <a href="#sectionDemande" class="btn btn-primary btn-outline">{l s="Demandez votre devis ici" d='Shop.Theme.Catalog'}</a>
        <p class="mt-3 description text-center">Travaillez facilement avec nos conseillers pour concrétiser votre projet de bracelets
            imprimés
            personnalisés</p>
    </div>
</section> *}

<section id="sectionDemande" class="padSection50 pb-0">
    <div class="row wrapper justify-content-center">
        <div class="col-lg-4">
            {$block34104->content nofilter}
            <div class="col-lg-11">
            <img class="img-fluid" src="{$urls.img_url}conseilServiceImpression.jpg"
                    alt="{$block33803->meta_title nofilter}" />
            </div>
        </div>
        <div class="col-lg-4 pl-lg-5">
            {hook h='displayGform' id='6'}
        </div>
    </div>
</section>

{* {include file='catalog/listing/_partials/faq-lanyards.tpl'} *}