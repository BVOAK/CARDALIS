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
<div class="container-fluid">
    <div class="wrapper row p-md-2 p-0">
        <div id="blockReinsuranceFooter" class="d-flex w-100 flex-wrap">
            {include file='_partials/reinsurance.tpl'}
        </div>
        <div id="blockTopFooter" class="flex-wrap justify-content-center w-100">
            <div class="contentPaymentLogo col-lg-6">
                <img src="{$urls.img_url}logoPayment.png" alt="Logo paiement" class="paymentLogo" /><br />
                <img src="{$urls.img_url}chrono-logo.png" class="dpdLogo" alt="Icone chronopost livraison"
                    width="200" />
            </div>
            <div class="blockTrustedShop col-lg-6">
                <p class="title">Avis Trusted Shops</p>
                <etrusted-widget data-etrusted-widget-id="wdg-1f4110cc-1eac-4f18-8372-badceb56f171"></etrusted-widget>
            </div>
            {* <div class="col-lg-4">
          <iframe data-w-type="embedded" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
              src="https://llsm.mj.am/wgt/llsm/5g9/form?c=fca991cd" width="100%"></iframe>
          <script type="text/javascript" src="https://app.mailjet.com/pas-nc-embedded-v1.js"></script>
      </div> *}
            {*<div class="col-md-4 contentNewsletter">*}
            {*{hook h='displayFooterBefore'}*}
            {*</div>*}
        </div>
    </div>

    <div class="footer-container wrapper row d-flex flex-wrap justify-content-around">

        <nav class="col-md-2 menuFooter" role="navigation">
            <button class="title cBlue" data-toggle="collapse" data-target="#collapseCategories" aria-expanded="true"
                type="button" aria-controls="collapseCategories">{l s="Catégories"} <i
                    class="fa fa-chevron-down d-md-none d-sm-block" aria-hidden="true"></i></button>
            <ul class="level01 collapse show" id="collapseCategories">
                {foreach from=$categoriesMenu.children item=cat}
                    {foreach from=$cat.children item=subCatNiv1}
                        <li class="mainCategory"><a class="link" href="{$subCatNiv1.link}">{$subCatNiv1.name}</a></li>
                    {/foreach}
                {/foreach}
            </ul>
        </nav>

        <nav class="menuFooter col-md-1" role="navigation">
            <button class="title cBlue" data-toggle="collapse" data-target="#collapseMarques" aria-expanded="true"
                type="button" aria-controls="collapseMarques">{l s="Marques"} <i
                    class="fa fa-chevron-down d-md-none d-sm-block" aria-hidden="true"></i></button>
            <ul class="level01 collapse show" id="collapseMarques">
                <li><a href="{url entity='cms' id=409}">POINTMAN</a></li>
                <li><a href="{url entity='cms' id=154}">EVOLIS</a></li>
                <li><a href="{url entity='cms' id=161}">MAGICARD</a></li>
                <li><a href="{url entity='cms' id=158}">FARGO</a></li>
                <li><a href="{url entity='cms' id=160}">EDIKIO</a></li>
                <li><a href="{url entity='cms' id=155}">IDP SMART</a></li>
                <li><a href="{url entity='cms' id=157}">ZEBRA</a></li>
                <li><a href="{url entity='cms' id=159}">ENTRUST</a></li>
            </ul>
        </nav>

        <nav class="col-md-2 menuFooter" role="navigation">
            <button class="title cBlue" data-toggle="collapse" data-target="#collapseConseils" aria-expanded="true"
                type="button" aria-controls="collapseConseils">{l s="Conseils"} <i
                    class="fa fa-chevron-down d-md-none d-sm-block" aria-hidden="true"></i></button>
                <ul class="level01 collapse show" id="collapseConseils">
                    <li><a href="https://www.cardalis.fr/blog">{l s="Tous les conseils"}</a></li>
                    <li><a href="https://www.cardalis.fr/blog/categorie/Imprimantes-et-consommables">Impression cartes plastiques PVC</a></li>
                    <li><a href="https://www.cardalis.fr/blog/categorie/bracelets-d-identification">Bracelets événementiels d'identification</a></li>
                    <li><a href="https://www.cardalis.fr/blog/categorie/portes-badges-et-tours-de-cou">Portes badges et tours de cou</a></li>
                    <li><a href="https://www.cardalis.fr/blog/categorie/technologie-rfid">Technologie RFID</a></li>
				</ul>
            </nav>

            {hook h='displayFooter'}

            <div id="blockLogoFooter">
                <a href="{$urls.base_url}" class="btLogo">
                    <img class="logo img-responsive hidden-sm-down" src="{$urls.img_url}logoCardalisFooter.svg"
                        alt="{$shop.name}">
                </a>
                <p id="msgProFooter">L’accès à ce site est réservé aux professionnels</p>
                <div id="linksSocialFooter">
                    <a href="https://www.linkedin.com/company/cardalis" target="_blank">
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                    </a>
                    <a href="https://www.facebook.com/Cardalis/" target="_blank">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a>
                </div>
            </div>


                    {hook h='displayFooterAfter'}

        </div>

        <div class="wrapper row border-top justify-content-center p-0 pb-5 ">
            <ul class="d-flex flex-wrap justify-content-between col-md-6">
                <li><a href="
                    {url entity='cms' id=2}" class="cGrey">Mentions légales</a></li>
                <li><a href="
                    {url entity='cms' id=3}" class="cGrey">Conditions générales de ventes</a></li>
                <li><a href="
                    {url entity='cms' id=6}" class="cGrey">Politique de confidentialité</a></li>
                <li><a href="https://www.bvoak.com" target="_blank" class="cGreyLight"><i>Réalisation BVOAK.com</i></a></li>
            </ul>
        </div>

    </div>


                    {if $urls.base_url == "https://www.cardalis.fr/"}


                        {literal}
            <!--Start of Zendesk Chat Script-->
            <script type="text/javascript">
                window.$zopim||(function(d,s){var z=$zopim=function(c){
                z._.push(c)
                }, $ = z.s =
                    d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
                    _.push(o)
                };
                z._ = [];
                z.set._ = [];
                $.async = !0;
                $.setAttribute('charset', 'utf-8');
                $.src = 'https://v2.zopim.com/?5YJfYDF2BiBNp9C98lnl8O5ZAuGUncjj';
                z.t = +new Date;
                $.
                type = 'text/javascript';
                e.parentNode.insertBefore($, e)
                })(document, 'script');
            </script>
            <!--End of Zendesk Chat Script-->

            <script>
                const dfLayerOptions = {
                    installationId: '5359d293-1cc3-4192-8ce2-653ae5beeaa3',
                    zone: 'eu1'
                };

                (function(l, a, y, e, r, s) {
                    r = l.createElement(a);
                    r.onload = e;
                    r.async = 1;
                    r.src = y;
                    s = l.getElementsByTagName(a)[0];
                    s.parentNode.insertBefore(r, s);
                })(document, 'script', 'https://cdn.doofinder.com/livelayer/1/js/loader.min.js', function() {
                    doofinderLoader.load(dfLayerOptions);
                });
            </script>


            <script>
                window.axeptioSettings = {
                    clientId: "6658761286671f563fc6905a",
                };

                (function(d, s) {
                    var t = d.getElementsByTagName(s)[0],
                        e = d.createElement(s);
                    e.async = true;
                    e.src = "//static.axept.io/sdk.js";
                    t.parentNode.insertBefore(e, t);
                })(document, "script");
            </script>

        {/literal}

    {/if}

    <script>
        var ajaxCrossSellingUrl = "{$link->getPageLink('cart', true)}?ajax=1&action=getCrossSellingProduct";
    </script>