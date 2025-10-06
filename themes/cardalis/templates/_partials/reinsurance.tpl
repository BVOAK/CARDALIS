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

<div class="col-md-3 item">
    <a href="{$link->getCMSLink('5', 'paiement-securise')}">
        <div class="contentImg">
            <img src="{$urls.img_url}iconPayment.png" alt="Icône paiement"/>
        </div>
        <div class="contentText">
            <span>{l s="Paiements sécurisés" d='Shop.Theme'}</span>
            <small>{l s="CIC / Paypal" d='Shop.Theme'}</small>
        </div>
    </a>
</div>

<div class="col-md-3 item">
    <a href="{$link->getCMSLink('1', 'livraison')}">
        <div class="contentImg">
            <img src="{$urls.img_url}iconShipping.png" alt="Icône livraison"/>
        </div>
        <div class="contentText">
            <span>{l s="Livraison express (j+1)" d='Shop.Theme'}</span>
            <small>{l s="pour toute commande passée avant 14h" d='Shop.Theme'}</small>
        </div>
    </a>
</div>

<div class="col-md-3 item">
    <a href="{$link->getPageLink('contact-form.php')}">
        <div class="contentImg">
            <img src="{$urls.img_url}iconService.png" alt="Icône service" />
        </div>
        <div class="contentText">
            <span>{l s="Service client" d='Shop.Theme'}</span>
            <small>{$shop.phone}</small>
            <small>{l s='Du lundi au vendredi de 9h à 12h30 et 14h à 17h30' d='Shop.Theme'}</small>
        </div>
    </a>
</div>

<div class="col-md-3 item">
    <a href="https://www.cardalis.fr/blog">
        <div class="contentImg">
            <img src="{$urls.img_url}iconQuestion.png"  alt="Icône question"/>
        </div>
        <div class="contentText">
            <span>{l s="Blog / News"}</span>
            <small>{l s="Faites le bon choix !"}</small>
        </div>
    </a>
</div>

