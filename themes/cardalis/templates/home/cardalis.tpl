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

<section class="container" id="sectionCardalis">
    <div class="row wrapper">
        <div id="blockCardalis" class="col-lg-8">
            {$blockCardalisCats->content nofilter}
            {$blockCardalis->content nofilter}
            <p class="text-md-left text-center">
                <a href="{url entity='cms' id=4 }" class="btn">{l s="Qui sommes-nous ?" d='Shop.Theme'}</a>
            </p>
        </div>
    </div>
</section>

<section class="container-fluid bgGrey" id="sectionDispo">
    <div class="row col-lg-8 m-auto align-items-end" id="blockDispo">
        <div class="col-lg-6 mt-5 mb-5 pt-5 pb-5">
            <p class="title">{$blockContact->meta_title nofilter}</p>
            {$blockContact->content nofilter}
            {include file='_partials/block-contact-reduced.tpl'}
        </div>
        <div class="col-lg-6">
            <img src="{$urls.img_url}imgContactHome.png" class="d-lg-block d-none" alt="Contactez Cardalis" />
        </div>
    </div>
</section>