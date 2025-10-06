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
<div class="blockSortOrders d-md-block d-none">
<div class="form-inline">
<div class="form-group mb-0">
    <label for="select-sort-order" class="visible--desktop">{l s='Sort by:' d='Shop.Theme.Global'}</label>
    <select class="custom-select ml-sm-2" id="select-sort-order">
        {foreach from=$listing.sort_orders item=sort_order}
            <option value="{$sort_order.url}"{if $sort_order.current} selected="selected"{/if}>{$sort_order.label}</option>
        {/foreach}
    </select>
</div>
</div>
</div>