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
<!doctype html>
<html lang="{$language.iso_code}">

<head>
  {block name='head'}
    {include file='_partials/head.tpl'}
  {/block}
</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames}">

  {block name='hook_after_body_opening_tag'}
    {hook h='displayAfterBodyOpeningTag'}
  {/block}

  <main>
    {block name='product_activation'}
      {include file='catalog/_partials/product-activation.tpl'}
    {/block}

    <header id="header">
      {block name='header'}
        {include file='_partials/header.tpl'}
      {/block}
    </header>

    {block name='notifications'}
      {include file='_partials/notifications.tpl'}
    {/block}
    <section>

      <a href="" class="js-scrollTo btnUP">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
      </a>

  <div class="{if $page.page_name == "ybc_blog_page"}container{else}container-fluid{/if} p-0" id="wrapper">
        {block name='breadcrumb'}
          {include file='_partials/breadcrumb.tpl'}
        {/block}

        {block name="left_column"}
          <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
            {if $page.page_name == 'product'}
              {hook h='displayLeftColumnProduct'}
            {else}
              {hook h="displayLeftColumn"}
            {/if}
          </div>
        {/block}

        {block name="content_wrapper"}
          <div id="content-wrapper" class="left-column right-column col-sm-4 col-md-6">
            {hook h="displayContentWrapperTop"}
            {block name="content"}
              <p>Hello world! This is HTML5 Boilerplate.</p>
            {/block}
            {hook h="displayContentWrapperBottom"}
          </div>
        {/block}

        {block name="right_column"}
          <div id="right-column" class="col-xs-12 col-sm-4 col-md-3">
            {if $page.page_name == 'product'}
              {hook h='displayRightColumnProduct'}
            {else}
              {hook h="displayRightColumn"}
            {/if}
          </div>
        {/block}
      </div>
      {hook h="displayWrapperBottom"}
    </section>

    <footer id="footer">
      {block name="footer"}
        {include file="_partials/footer.tpl"}
      {/block}
    </footer>

  </main>

  {block name='offcanvas_modals'}
    {* offcanvas search filter *}
    <div class="modal fade" id="offcanvas_search_filter" tabindex="-1" role="dialog" data-modal-hide-mobile>
      <div class="modal-dialog modal-dialog__offcanvas modal-dialog__offcanvas--right" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <p class="modal-title">Filtrer par</p>
            <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div id="_mobile_search_filters_wrapper"></div>
          </div>
          <div class="modal-footer">
            <button class="btn_close-filter btn btn-default btn-block ok w-100" data-dismiss="modal"
              aria-label="{l s='Close' d='Shop.Theme.Global'}">
              <i class="material-icons rtl-no-flip">&#xE876;</i>
              {l s='OK' d='Shop.Theme.Actions'}
            </button>
          </div>
        </div>
      </div>
    </div>
    {* end search filter *}
  {/block}

  {block name='javascript_bottom'}
    {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
  {/block}

  {block name='hook_before_body_closing_tag'}
    {hook h='displayBeforeBodyClosingTag'}
  {/block}

</body>

</html>