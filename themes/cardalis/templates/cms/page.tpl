{**
 * 2007-2017 PrestaShop
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
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file=$layout}

{block name='breadcrumb'}{/block}

{block name='content'}

    {if $cms.id == 13}
        {include file='cms/cartes-imprimees.tpl'}

    {elseif $cms.id == 8}
        {include file='cms/faq.tpl'}

    {elseif $cms.id == 4}
        {include file='cms/about-us.tpl'}

    {elseif $cms.id == 7}
        {include file='cms/support.tpl'}

    {elseif $cms.id == 154 || $cms.id == 155 || $cms.id == 156 || $cms.id == 157 || $cms.id == 158 || $cms.id == 159 || $cms.id == 160 || $cms.id == 161}
        {include file='cms/page-marque.tpl' cms=$cms.id}

    {else}

        {include file='_partials/breadcrumb.tpl'}

        <section id="main" class="container-fluid">

            {* {block name='page_title'}
                <section class="row" id="blockTitleCMS">
                    <div class="wrapper text-center">
                        <h1 class="title">{$cms.meta_title}</h1>
                    </div>
                </section>
            {/block}
 *}
            <div class="row">

                <div class="wrapper">

                    {block name='page_content_container'}
                        <section id="content" class="page-content page-cms page-cms-{$cms.id} pt-0 pb-0">

                            {block name='cms_content'}
                                {$cms.content nofilter}
                            {/block}

                            {block name='hook_cms_dispute_information'}
                                {hook h='displayCMSDisputeInformation'}
                            {/block}

                            {block name='hook_cms_print_button'}
                                {hook h='displayCMSPrintButton'}
                            {/block}

                        </section>
                    {/block}

                </div>
            </div>
        </section>

        {assign var="contentsCat53" value=CMS::getCMSPages(2, 53, false, null)}
        {assign var="contentsCat54" value=CMS::getCMSPages(2, 54, false, null)}

        {if $cms.id_cms_category == "53"}
            <section id="pagination" class="container">
                <div class="row wrapper justify-content-center">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            {foreach from=$contentsCat53 item=item name=contentsCat53 key=k}
                                {if $cms.id == $item.id_cms}
                                    {assign var="prev" value=$contentsCat53[$k-1]}
                                    {assign var="next" value=$contentsCat53[$k+1]}
                                    {if $prev.active == "1"}
                                        <li class="page-item"><a href="{url entity='cms' id=$prev.id_cms}" class="page-link">Précédent</a></li>
                                    {/if}
                                    {if $next.active == "1"}
                                        <li class="page-item"><a href="{url entity='cms' id=$next.id_cms}" class="page-link">Suivant</a></li>
                                    {/if}
                                {/if}
                            {/foreach}
                        </ul>
                    </nav>
                </div>
            </section>
        {/if}

        {if $cms.id_cms_category == "54"}
            <section id="pagination" class="container">
                <div class="row wrapper justify-content-center">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            {foreach from=$contentsCat54 item=item name=contentsCat54 key=k}
                                {if $cms.id == $item.id_cms}
                                    {assign var="prev" value=$contentsCat54[$k-1]}
                                    {assign var="next" value=$contentsCat54[$k+1]}
                                    {if $prev.active == "1"}
                                        <li class="page-item"><a href="{url entity='cms' id=$prev.id_cms}" class="page-link">Précédent</a></li>
                                    {/if}
                                    {if $next.active == "1"}
                                        <li class="page-item"><a href="{url entity='cms' id=$next.id_cms}" class="page-link">Suivant</a></li>
                                    {/if}
                                {/if}
                            {/foreach}
                        </ul>
                    </nav>
                </div>
            </section>
        {/if}

    {/if}

{/block}

{block name='page_footer_container'}
    <footer class="page-footer">
        {block name='page_footer'}
            <!-- Footer content -->
        {/block}
    </footer>
{/block}