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
{extends file='cms/page.tpl'}

{block name='content'}

  {block name='page_title'}
    <section class="row" id="blockTitleCMS">
      <div class="wrapper text-center">
        <p class="cBlue text-uppercase h2 mt-5 mb-2 bold ">{l s='Sorry for the inconvenience.' d='Shop.Theme'}</p>
      <h1 class="title p-0 mt-0 mb-5">Page introuvable : laissez-nous vous guider vers nos solutions d'identification !
    </h1>
    {* <p>Si vous passiez une commande, pensez à vérifier votre suivi de commande et vos e-mails.</p> *}
  </div>
</section>
{/block}

<div id="page404">
  <div id="contentSearch" class="bgGrey">
    <div class="wrapper">
      {include file='errors/not-found.tpl'}
    </div>
  </div>

  {*   {$content404->content nofilter}
 *}

  {* <div class="wrapper row mt-5 mb-5 border-bottom">
    <div class="row w-100 justify-content-center">
      <h2><a href="https://www.cardalis.fr/92-imprimantes-a-badges" class="d-block">Cartes et badges PVC personnalisés</a></h2>
    </div>
    <div class="products row w-100 justify-content-center">
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
              <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="wrapper row mt-5 mb-5 border-bottom">
    <div class="row w-100 justify-content-center">
      <h2><a href="https://www.cardalis.fr/120-rubans-encre" class="d-block">Rubans encre pour impression de qualité</a></h2>
    </div>
    <div class="products row w-100 justify-content-center">
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="product-miniature">
        <div class="thumbnail-container link">
          <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html" class="blockThumbnail">
            <div class="thumbnail product-thumbnail">
            <img src="http://cardalis2022.test/img/cms/404/smart-31s-simple-face-interface-usb.png" width="250" height="250" class="img-fluid" />
            </div>
          </a>
          <div class="product-description clearfix">
            <p class="ref">Ref. : 651460</p>
            <h3 class="product-title">
              <a href="https://www.cardalis.fr/2005-smart-31d-duplex-interface-usb.html">Smart 31 Duplex, USB </a>
            </h3>
            <div class="d-flex w-100 justify-content-between product-price-and-shipping">
              <div class="blockShipping">
                <span class="info-stock product-available">En stock</span>
              </div>
              <div class="blockPrice text-right">
                <span class="price">1 185,00 €</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> *}

  <div class="wrapper mt-5 mb-5">

    <div class="d-flex flex-wrap justify-content-center w-100" id="listCat404">

      <div class="col-lg-3 p-2">
        <div class="itemCat item h-100">
          <a href="{$link->getCategoryLink(92)|escape:'html':'UTF-8'}" class="d-block">
            <img class="img-fluid" src="{$urls.img_url}imprimantes-badges-head.png"
              alt="Imprimantes à badges PVC et systèmes d'impression sur cartes plastique">
            <h2>Imprimantes à cartes et badges plastiques</h2>
          </a>
        </div>
      </div>

      <div class="col-lg-3 p-2">
        <div class="itemCat item h-100">
          <a href="{$link->getCategoryLink(120)|escape:'html':'UTF-8'}" class="d-block">
            <img class="img-fluid" src="{$urls.img_url}ruban-encre-imprimantes-a-badges.png"
              alt="Rubans encre et consommables pour imprimantes à badges et cartes plastique">
            <h2>Rubans encre pour impression de qualité</h2>
          </a>
        </div>
      </div>

      <div class="col-lg-3 p-2">
        <div class="itemCat item h-100">
          <a href="{$link->getCategoryLink(137)|escape:'html':'UTF-8'}" class="d-block">
            <img class="img-fluid" src="{$urls.img_url}cartes-badges-plastique.png"
              alt="Cartes, badges plastiques et étiquettes à imprimer">
            <h2>Cartes & badges plastique</h2>
          </a>
        </div>
      </div>

      <div class="col-lg-3 p-2">
        <div class="itemCat item h-100">
          <a href="{$link->getCategoryLink(343)|escape:'html':'UTF-8'}" class="d-block">
            <img class="img-fluid" src="{$urls.img_url}tours-de-cou.png" alt="Tour de cou pour badges et cartes">
              <h2>Cordons tour de cou</h2>
            </a>
          </div>
        </div>

      </div>
      {* {include file='errors/not-found.tpl'} *}
    </div>
  </div>
{/block}