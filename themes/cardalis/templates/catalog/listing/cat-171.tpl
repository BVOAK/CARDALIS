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
                {$block17101->meta_title nofilter}
            </h1>
            <div class="description">
                {$block17101->content nofilter}
            </div>
        </div>
        <div class="img col-lg-5">
            <img class="img-fluid" src="{$urls.img_url}porte-badges-head.jpg" alt="{$block17101->meta_title nofilter}" />
        </div>
    </div>
</section>

<section id="sectionPorteBadges" class="padSection50 u-bor-bot">
    {$block17102->content nofilter}
    <div class="row wrapper u-bor-top padSection50 description pb-0 flex-column align-items-center mt-4">
        {$block17103->content nofilter}
        <a href="{$urls.pages.contact}" class="btn btn-primary btn-outline">Nous contacter</a>
    </div>
</section>

<section id="products" class="sectionProducts">
    <div class="row">
        <div class="wrapper">
            <div class="blockTitle text-center">
                <p class="titleSec">
                    {l s="NOS PRODUITS INCONTOURNABLES"}
                </p>
            </div>
            {hook h='CETemplate' id=8}
        </div>
    </div>
</section>