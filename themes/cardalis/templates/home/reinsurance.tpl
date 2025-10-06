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

<div id="blockListReinsuranceHome">

    <div class="item">
        <a href="{$link->getPageLink('contact-form.php')}" class="d-flex">
            <div class="img">
                <img src="{$urls.img_url}iconService.png" alt="Icône service" />
            </div>
            <div class="text">
                <span>{l s="Service client" d='Shop.Theme'}</span>
                <small>{$shop.phone}</small>
            </div>
        </a>
    </div>
    <div class="item">
        <a href="{$link->getCMSLink('5', 'paiement-securise')}" class="d-flex">
            <div class="img">
                <img src="{$urls.img_url}iconPayment.png" alt="Icône paiement" />
            </div>
            <div class="text">
                <span>{l s="Paiements sécurisés" d='Shop.Theme'}</span>
                <small>{l s="CIC / Paypal" d='Shop.Theme'}</small>
            </div>
        </a>
    </div>

    <div class="item">
        <a href="{$link->getCMSLink('1', 'livraison')}" class="d-flex">
            <div class="img">
                <img src="{$urls.img_url}iconShipping.png" alt="Icône livraison" />
            </div>
            <div class="text">
                <span>{l s="Livraison express (j+1)" d='Shop.Theme'}</span>
                <small>{l s="pour toute commande passée avant 14h" d='Shop.Theme'}</small>
            </div>
        </a>
    </div>

    <div class="item">
        <a href="{$link->getCMSLink('8', 'faq-cardalis')}#blockAccordionPaiements" class="d-flex">
            <div class="img">
                <img src="{$urls.img_url}iconMandat.png" alt="Icône Mandat" />
            </div>
            <div class="text">
                <span>{l s="Mandats administratifs" d='Shop.Theme'}</span>
                <small>{l s="sont acceptés" d='Shop.Theme'}</small>
            </div>
        </a>
    </div>

</div>