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

<div id="js-product-list">
  <div class="products row">
    {assign var="i" value=1 }
    {foreach from=$listing.products item="product" name=products}
      {block name='product_miniature'}
        {include file='catalog/_partials/miniatures/product.tpl' product=$product i=$i}
      {/block}
      {assign var="i" value=$i+1}
    {/foreach}
  </div>

  {block name='pagination'}
    {include file='_partials/pagination.tpl' pagination=$listing.pagination}
  {/block}

  
 <div class="col-sm-12 hidden-md-up text-xs-center showing pt-3 pb-3 u-bor-top">
 {l s='Showing %from%-%to% of %total% item(s)' d='Shop.Theme.Catalog' sprintf=[
 '%from%' => $listing.pagination.items_shown_from ,
 '%to%' => $listing.pagination.items_shown_to,
 '%total%' => $listing.pagination.total_items
 ]}
</div>

  <div class="hidden-md-up text-xs-right up">
    <a href="#header" class="btn btn-secondary js-scrollTo">
      {l s='Back to top' d='Shop.Actions'}
      <i class="material-icons">&#xE316;</i>
    </a>
  </div>
</div>