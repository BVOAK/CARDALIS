{extends 'customer/page.tpl'}

{block name='breadcrumb'}{/block}

{block name='page_title'}
  <div class="headerTitle">
    <h1 class="h1 mainTitle">{l s='Your personal information' d='Shop.Theme.Customeraccount'}</h1>
  </div>
{/block}

{* StarterTheme: Add confirmation/error messages *}

{block name='page_content'}
  {render file='customer/_partials/customer-form.tpl' ui=$customer_form}
{/block}
