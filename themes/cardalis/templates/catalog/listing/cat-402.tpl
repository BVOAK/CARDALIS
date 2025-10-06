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
        <div class="col-lg-7 blockText">
            <div class="description">
                {$block40201->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5 text-center d-md-block d-none">
            <img class="img-fluid" src="{$urls.img_url}produits-eco-head.jpg"
                alt="{$block40201->meta_title nofilter}" />
        </div>
    </div>
</section>

<section id="sectionListCatsChild" class="padSection50">
    {$block40202->content nofilter}
</section>

<div class="sectionContent">
    <section id="sectionBracelets" class="u-bor-bot padSection50">
        <div class="row wrapper align-items-center">
            {$block40203->content nofilter}
            <a href="{$link->getCategoryLink(385)|escape:'html':'UTF-8'}" class="btn btn-default bgGreen cWhite">Voir
                nos
                bracelets écoresponsables</a>
        </div>
    </section>

    <section id="sectionBadges" class="u-bor-bot padSection50 bgGrey">
        {$block40204->content nofilter}
    </section>

    <section id="sectionLanyards" class="u-bor-bot padSection50">
        <div class="row wrapper align-items-center">
            {$block40205->content nofilter}
        </div>
        <div class="row wrapper align-items-center">
            <a href="{$link->getCategoryLink(405)|escape:'html':'UTF-8'}"
                class="btn btn-default bgGreen cWhite">Voir nos tours de cou écoresponsables</a>
        </div>
    </section>

    <section id="sectionPorteBadges" class="u-bor-bot padSection50 bgGrey">
        <div class="row wrapper align-items-center">
            {$block40206->content nofilter}
            </div>
        <div class="row wrapper align-items-center">
            <a href="{$link->getCategoryLink(406)|escape:'html':'UTF-8'}"
                class="btn btn-default bgGreen cWhite mt-4">Voir nos porte-badges écoresponsables</a>
        </div>
    </section>

    <section id="sectionRecyclage" class="u-bor-bot padSection50">
        <div class="row wrapper align-items-center">
            {$block40209->content nofilter}
            <a href="{$link->getCategoryLink(407)|escape:'html':'UTF-8'}?q=Type-%C3%89cologique+%F0%9F%8C%B1"
                class="btn btn-default bgGreen cWhite mt-4">Voir nos boîtes de recyclage</a>
        </div>
    </section>
</div>

<section id="sectionMateriaux" class="u-bor-bot sectionContent padSection50">
    <div class="wrapper">
        <h2 class="titleSec cGreen">
            {$block40207->meta_title nofilter}
        </h2>
        <div id="blockContent" class="d-flex flex-wrap">
            {$block40207->content nofilter}
        </div>
    </div>
</section>

{include file='catalog/listing/_partials/faq-eco.tpl'}