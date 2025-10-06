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

<div id="blockPrinterFilters">
    <div class="card">
        <div class="blockTitle w-100">
            <p class="mainTitle text-center">
                <span>{l s="Trouvez rapidement" d='Shop.Theme'}</span>{l s="votre ruban" d='Shop.Theme'}
            </p>
        </div>
        {* <form>
            <div class="form-group">
                <select class="form-control" id="gtmiPrinters">
                    <option value="" selected>Choisissez la marque de votre imprimante</option>
                    {foreach from=$gtmiPrinters item=cat}
                        <option value="{$cat.id}" data-link="{$link->getCategoryLink($cat.id)|escape:'html':'UTF-8'}">{$cat.name}</option>
                    {/foreach}
                </select>
            </div>
            <div class="form-group">
                <select class="form-control" id="gtmiModels">
                    <option value="" selected>Choisissez le modèle de votre imprimante</option>
                </select>
            </div>
            <div class="form-group">
                <select class="form-control" id="gtmiRubans">
                    <option value="" selected>Choisissez le type de ruban souhaité </option>
                    {foreach from=$gtmiTypesOfRubans item=ruban}
                        <option value="{$ruban.id}">{$ruban.name}</option>
                    {/foreach}
                </select>
            </div>
            <a class="btn btn-primary" href="120-rubans-encre">Voir les résultats</a>
        </form> *}
    </div>
</div>