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


<section id="sectionSolutionsEtiquettes">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block36201->meta_title nofilter}
                </h2>
            </div>
            <div id="blockSolutionsEtiquettesList" class="d-flex flex-wrap">
                {$block36201->content nofilter}
            </div>
        </div>
    </div>
</section>

<section id="sectionEtiquettesDifference">
    <div class="row">
        <div class="wrapper d-flex align-items-center flex-wrap">
            <div class="col-lg-6">
                <div class="description">
                    {$block36202->content nofilter}
                </div>
            </div>
            <div class="img col-lg-6 text-center">
                <img class="img-fluid" src="{$urls.img_url}etiquettes-difference.png"
                    alt="{$block36202->meta_title nofilter}" />
            </div>
        </div>
    </div>
</section>

<section id="sectionReviewsEtiquettes" class="sectionReviews">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <h2 class="titleSec">
                    {$block36203->meta_title nofilter}
                </h2>
            </div>
            <div class="descriptionReviewsList text-center">
                {* {$block36203->content nofilter} *}
                {* {widget name="ph_testimonials"} *}
            </div>
        </div>
    </div>
</section>

<section id="sectionFormEtiquettes">
    <div class="row">
        <div class="wrapper">
            <div class="blockImg col-lg-7">
                <img class="img-fluid" src="{$urls.img_url}etiquettes-demande-form.jpg"
                alt="{$block36202->meta_title nofilter}" />
            </div>
            <div class="blockForm col-lg-5">
                <p class="title">Demandez vos échantillons d’étiquettes avec leurs supports</p>
                {hook h='displayGform' id='1'}
            </div>
        </div>
    </div>
</section>