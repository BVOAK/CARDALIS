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
<nav data-depth="{$breadcrumb.count}" class="breadcrumb row {if ($page.page_name == "category") || ($page.page_name == "manufacturer") || ($page.page_name == "advancedsearch-seo-2") || ($page.page_name == "module-pm_advancedsearch4-searchresults")}bgBlueLighter{/if}">
    <ol itemscope itemtype="http://schema.org/BreadcrumbList" class="wrapper">
        {foreach from=$breadcrumb.links item=path name=breadcrumb}
            {if $path.title  != 'Articles non visible'}{*Cacher item articles non visible*}
                <li {if isset($path.id_cat)}data-id-cat="{$path.id_cat}"{/if} itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" {if $smarty.foreach.breadcrumb.last}class="active"{/if}>
                    <a itemprop="item" href="{$path.url}">
                        <span itemprop="name">{$path.title}</span>
                    </a>
                    <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
                </li>
            {/if}
        {/foreach}
    </ol>
</nav>
