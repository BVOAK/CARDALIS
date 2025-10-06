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

<div id="blockPrinterFilters" class="d-flex flex-wrap mt-3 mb-3 p-0">
    <div class="d-flex flex-wrap col-lg-10 p-3 align-items-center">
        <p class="titleSec cWhite col-md-2 p-0 m-0">
            {l s="Trouvez rapidement votre ruban" d='Shop.Theme'}
        </p>
        <form class="col-md-10 p-0 align-items-center">
            <div class="form-group mb-0 ml-2 mr-2">
                <select class="form-control" id="gtmiPrinters">
                    <option value="" selected>{l s='Marque de l’imprimante'}</option>
                    {foreach from=$gtmiPrinters item=cat}
                        <option value="{$cat.id}" data-link="{$link->getCategoryLink($cat.id)|escape:'html':'UTF-8'}">
                            {$cat.name}</option>
                    {/foreach}
                </select>
            </div>
            <div class="form-group mb-0 ml-2 mr-2">
                <select class="form-control" id="gtmiModels">
                    <option value="" selected>{l s='Modèle de l’imprimante'}</option>
                </select>
            </div>
            <div class="form-group mb-0 ml-2 mr-2">
                <select class="form-control" id="gtmiRubans">
                    <option value="" selected>{l s='Type de ruban'}</option>
                    {foreach from=$gtmiTypesOfRubans item=ruban}
                        <option value="{$ruban.id}">{$ruban.name}</option>
                    {/foreach}
                </select>
            </div>
            <div class="button mb-0 ml-2 mr-2">
                <a id="gtmi-ruban-link" class="btn btn-primary" href="120-rubans-encre">{l s='Voir les résultats'}</a>
                <div id="gtmi-ruban-alert">
                    <p>Recherche des rubans en cours...</p>
                    <span></span>
                </div>
            </div>
        </form>
    </div>
    <div class="img-fit col-lg-2 d-lg-block d-none">
        <img src="{$urls.img_url}img-rubans-filters.png" alt="{$shop.name}">           
    </div>
</div>