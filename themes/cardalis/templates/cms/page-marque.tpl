{**
 * 2007-2017 PrestaShop
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
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}


<div id="pageBrand{$cms}" class="pageBrand">

    <section class="row" id="brandBanner">
        <div class="imgBanner" id="banner-{$cms}">
            <img class="img-fluid" src="{$urls.img_url}banner-{$cms}.jpg" alt="{$blockText162->meta_title nofilter}" />
        </div>
    </section>

    <section class="row" id="blockTitleCMS">
        <div class="wrapper text-center">
            <h1 class="title">{$blockText->meta_title nofilter}</h1>
        </div>
    </section>

    <section class="row" id="brandContent">
        <div class="wrapper d-flex flex-wrap">
                <div class="col-lg-6 blockText">
                    {$blockText->content nofilter}
                </div>
                <div class="col-lg-6 blockImg">
                    {$blockImg->content nofilter}
                </div>
        </div>
    </section>

</div>