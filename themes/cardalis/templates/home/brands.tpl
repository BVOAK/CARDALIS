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

<div class="blockTitle w-100">
    <p class="mainTitle text-center">{l s="Nos marques" d='Shop.Theme'}</p>
</div>
<ul class="blockLogos d-flex flex-wrap">
    <li>
        <a href="{$link->getCategoryLink(409)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-pointman.png" alt="Logo PointMan" />
        </a>
    </li>
    <li>
        <a href="{$link->getCategoryLink(103)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-evolis.jpg" alt="Logo Evolis" />
        </a>
    </li>
    <li>
        <a href="{$link->getCategoryLink(361)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-magicard.jpg" alt="Logo Magicard" />
        </a>
    </li>
    <li>
        <a href="{$link->getCategoryLink(104)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-fargo.jpg" alt="Logo Fargo" />
        </a>
    </li>
    <li>
        <a href="{$link->getCategoryLink(365)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-edikio.jpg" alt="Logo Edikio" />
        </a>
    </li>
    <li>
        <a href="{$link->getCategoryLink(314)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-idp.jpg" alt="Logo IDP" />
        </a>
    </li>

    <li>
        <a href="{$link->getCategoryLink(105)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-zebra.jpg" alt="Logo Zebra" />
        </a>
    </li>
    <li>
        <a href="{$link->getCategoryLink(102)|escape:'html':'UTF-8'}" class="brandLogo">
            <img src="{$urls.img_url}logo-datacard.jpg" alt="Logo Datacard" />
        </a>
    </li>
</ul>