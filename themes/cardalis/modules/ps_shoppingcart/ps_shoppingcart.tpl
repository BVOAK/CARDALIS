<div id="blockCart">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="header d-flex">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}" class="d-flex">
      {/if}
            <img src="{$urls.img_url}iconCartHeader.svg" class="hidden-md-down"  alt="Icône panier"/>
            <i class="material-icons shopping-cart hidden-lg-up">shopping_cart</i>
            <div>
                <span class="hidden-md-down cart-product-title">{l s='Mon panier' d='Shop.Theme.Checkout'}</span>
                <span class="cart-products-count">({$cart.products_count})</span>
            </div>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
