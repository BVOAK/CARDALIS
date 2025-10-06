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
            <h1 class="titleCat">
                {$block33901->meta_title nofilter}
            </h1>
            <div class="description">
                {$block33901->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5 text-center">
            <img class="img-fluid" src="{$urls.img_url}tour-de-cou-header.png" alt="{$block33901->meta_title nofilter}" />
        </div>
    </div>
</section>

<section id="sectionLanyards" class="padSection50 col-lg-8 m-auto">
    <div class="row wrapper blockLanyardsList p-0">
        <div class="col-lg-8 p-0">
            {$block33902->content nofilter}
        </div>
        <div class="col-lg-4 mt-lg-0 mt-4">
            {$block33908->content nofilter}
        </div>
    </div>
</section>

<!--<section id="sectionReviewsLanyards" class="sectionReviews">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block33903->meta_title nofilter}
                </h2>
            </div>
            <div class="descriptionLanyardsList text-center">
                {* {$block33903->content nofilter} *}
                {* {widget name="ph_testimonials"} *}
            </div>
        </div>
    </div>
</section>-->

<section id="sectionLanyardsAvantages" class="padSection50">
    <div class="row wrapper align-items-center padSection50">
        <div class="col-lg-8">
            <div class="description">
                {$block33910->content nofilter}
            </div>
        </div>
        <div class="img col-lg-4 text-center">
            <img class="img-fluid" src="{$urls.img_url}tour-de-cou-cardalis.jpg"
                alt="{$block33910->meta_title nofilter}" />
        </div>
    </div>
</section>