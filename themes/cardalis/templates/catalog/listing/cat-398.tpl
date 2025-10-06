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

 <div class="catContent">
    {if $totcustomfields_display_banner_category|@count_characters > 55}
        <section class="row" id="catBannerHeader">
            <div class="imgBanner" id="banner-{$category.id}">
                {$totcustomfields_display_banner_category nofilter}
            </div>
        </section>
    {/if}

    <div class="container-fluid" id="sectionHead">
        <div class="row wrapper">
        {hook h='CETemplate' id=16}
        </div>
    </div>
 </div>

{include file='catalog/listing/_partials/cat-products.tpl'}

<div class="catContent">
    <div class="container-fluid">
        <div class="row wrapper">
        {hook h='CETemplate' id=17}
        </div>
    </div>
</div>