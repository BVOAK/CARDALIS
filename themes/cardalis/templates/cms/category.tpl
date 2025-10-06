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
{extends file='page.tpl'}

{block name='page_title'}
  <section class="row" id="blockTitleCMS">
    <div class="wrapper text-center">
      <h1 class="title"> {$cms_category.name}</h1>
    </div>
  </section>
{/block}

{block name='page_content'}
  {block name='cms_sub_categories'}
    {if $sub_categories}
      {* <section class="row" id="brandContent">
        <div class="wrapper d-flex flex-wrap">
          <div class="blockText">
            <p>{l s='List of sub categories in %name%:' d='Shop.Theme' sprintf=['%name%' => $cms_category.name]}</p>
            <ul>
              {foreach from=$sub_categories item=sub_category}
                <li><a href="{$sub_category.link}">{$sub_category.name}</a></li>
              {/foreach}
            </ul>
          </div>
        </div>
      </section> *}
    {/if}
  {/block}

  {assign var=langID value=$language.id}
  <div class="row">
    <div class="wrapper">
      {block name='page_content_container'}
        <section id="content" class="page-content page-cms page-cms-{$cms_category.id}">
          {block name='cms_content'}
            {$cms_category.description nofilter}
          {/block}
        </section>
      {/block}
    </div>
    {*  <ul>
              {foreach from=$cms_pages item=cms_page}
                <li><a href="{$cms_page.link}">{$cms_page.meta_title}</a></li>
              {/foreach}
            </ul> *}
  </div>
{/block}