<div class="blockSaleWith">
  <div class="productAccessoryList accordion" id="accordionSaleWith">
    {foreach from=$product.features item=feature}
      {if $feature.id_feature == '47'}
        {assign var="feature47" value=1}
        <div class="control-label" id="headingSaleWith">
          <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
            data-target="#collapseSaleWith" aria-expanded="true" aria-controls="collapseSaleWith">
            Généralement vendu avec
          </button>
        </div>
        {break}
      {/if}
    {/foreach}
  <div id="collapseSaleWith" class="collapse {if $feature47 == 1}show{/if}" aria-labelledby="headingSaleWith" data-parent="#accordionSaleWith">
      <div class="card-body">
        {foreach from=$product.features item=feature}
          {foreach from=$accessories item="product_accessory"}
            {if $feature.value == $product_accessory.reference}
              {if $product_accessory.id_category_default != 392 && $product_accessory.id_category_default != 393}
                <label class="container">
                  <input type="checkbox" value="{$product_accessory.id_product}" class="add_me_to_cart"
                    data-price-exc-tax="{$product_accessory.price_amount|replace:',':'.'}"
                    data-price-inc-tax="{Product::getPriceStatic($product_accessory.id_product)}" />
                  <span class="checkmark"></span>
                  {$product_accessory.name} - <strong class="cBlue">{$product_accessory.price}</strong>
                </label>
              {/if}
            {/if}
          {/foreach}
        {/foreach}
      </div>
    </div>
  </div>
</div>



<div class="blockSaleWith">
  <div class="productAccessoryList accordion" id="accordionWarranty">
    {foreach from=$product.features item=feature}
      {if $feature.id_feature == '59'}
        <div class="control-label" id="headingWarranty">
          <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
            data-target="#collapseWarranty" aria-expanded="false" aria-controls="collapseWarranty">
            Support & Garantie
          </button>
        </div>
        {break}
      {/if}
    {/foreach}
    <div id="collapseWarranty" class="collapse" aria-labelledby="headingWarranty" data-parent="#accordionWarranty">
      <div class="card-body">

        <div id="blockWarranty392" class="blockWarranty">
          {foreach from=$accessories item="product_accessory"}
            {if $product_accessory.id_category_default == 392}
              <div class="title d-none">
                <strong>Extension de garantie</strong> <button type="button" class="btn btn-tooltip-help" data-target="#warranty_modal"
                  data-toggle="modal">?</button>
              </div>
              <label class="container radioList">
                <input type="checkbox" value="{$product_accessory.id_product}" class="add_me_to_cart radioMarkInput"
                  data-price-exc-tax="{$product_accessory.price_amount|replace:',':'.'}"
                  data-price-inc-tax="{Product::getPriceStatic($product_accessory.id_product)}" />
                <span class="checkmark radiomark"></span>
                {foreach from=$product_accessory.features item=feature}
                  {if $feature.id_feature == '63'}
                    {$feature.value} 
                  {/if}
                {/foreach} :
                <strong class="cBlue">{$product_accessory.price}</strong> /imprimante
              </label>
            {/if}
          {/foreach}
        </div>

          <hr />

        <div id="blockWarranty393" class="blockWarranty">
          {foreach from=$accessories item="product_accessory"}
            {if $product_accessory.id_category_default == 393}
              <div class="title d-none">
                <strong>Double échange</strong> <button type="button" class="btn btn-tooltip-help" data-target="#double_exchange_modal"
                  data-toggle="modal">?</button>
              </div>
              <label class="container radioList">
                <input type="checkbox" value="{$product_accessory.id_product}" class="add_me_to_cart radioMarkInput"
                  data-price-exc-tax="{$product_accessory.price_amount|replace:',':'.'}"
                  data-price-inc-tax="{Product::getPriceStatic($product_accessory.id_product)}" />
                <span class="checkmark radiomark"></span>
                {foreach from=$product_accessory.features item=feature}
                  {if $feature.id_feature == '63'}
                    {$feature.value} 
                  {/if}
                {/foreach} :
                <strong class="cBlue">{$product_accessory.price}</strong> /imprimante
              </label>
            {/if}
          {/foreach}

        </div>
      </div>
    </div>
  </div>
</div>