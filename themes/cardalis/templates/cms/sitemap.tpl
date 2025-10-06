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
{extends file=$layout}

{block name='breadcrumb'}{/block}

{block name='content'}

  <section id="main" class="container">

      {block name='page_title'}
        <div class="headerTitle">
          <h1 class="h1 mainTitle">
              {l s='Sitemap' d='Shop.Theme'}
          </h1>
        </div>
      {/block}

    <div class="row">

      <div class="wrapper">
          {block name='page_content_container'}
            <div id="sitemap-tree" class="sitemap">
                <div class="row sitemap">
                    <div class="col-md-4">
                        <h2>NOS MARQUES</h2>
                        {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.offers}
                        
                        <h2 class="mt-5">{$your_account}</h2>
                        {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.user_account}
                    </div>
                    <div class="col-md-4">
                        <h2>{$categories}</h2>
                        {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.categories}
                    </div>
                    <div class="col-md-4">
                        <h2>{$pages}</h2>
                        {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.pages}
                    </div>
                </div>
            </div>
          {/block}

      </div>
    </div>
  </section>

{/block}

