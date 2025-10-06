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

{* ID 92 *}
{if $subCatNiv1.id == 109}
    <div class="level02 clearfix" id="childCat{$subCatNiv1.id}">
        <div class="block wrapper">
            <div class="colMenu col-md-3">
                <div class="listMenu">
                    <p class="titleRubrique">{l s="Logiciels"}</p>
                    <ul>
                        <li><a href="{$link->getCategoryLink(274)|escape:'html':'UTF-8'}">Logiciel Cardpresso</a></li>
                        <li><a href="{$link->getCategoryLink(309)|escape:'html':'UTF-8'}">Logiciel Evolis Edikio</a></li>
                        <li><a href="{$link->getCategoryLink(297)|escape:'html':'UTF-8'}">Logiciel CardExchange</a></li>
                    </ul>
                </div>
            </div>
            <div class="colMenu">
                <div class="blockBanner">
                    <p class="titleRubrique">{l s="Tablettes de signature"}</p>
                    <a href="{$link->getCategoryLink(318)|escape:'html':'UTF-8'}" style="background-image: url('{$urls.img_url}encart-tablettes-318.png')" class="width3 bannerImg"></a>
                </div>
            </div>
        </div>
    </div>
{/if}