/**
 * Change product when you change combination
 * && Add click event to add to cart custom buttons
 * @param {object} event 
 * @returns {Number}
 */
 export function gtmiPrintersLoadEvents(event) {
  try {
    __changeCurrentProduct(event)
    bvkAddToCartBtns()
    return 1
  } catch (error) {
    return 0
  }
}
/**
 * Add change events to checkbox of product associated
 * @returns {void}
 */
export function gtmiAddAssocProductEvents() {
  const productAssList = document.querySelector('.productAccessoryList')
  if (productAssList && productAssList.childElementCount > 0) { // check product has product accessories
    const productsAssociated = document.querySelectorAll('.add_me_to_cart')
    for (let i = 0; i < productsAssociated.length; i++) {
      const pAssoc = productsAssociated[i]
      pAssoc.checked = false
      pAssoc.addEventListener('change', __changeProductPrice)
    }
  }
}

/**
 * Add to cart by URL
 * @see Module addtocartfromurl
 * @author <frédéric curie>
 * @returns {void}
 */
export function bvkAddToCartBtns() {
  $('#add-cart-custom, #add-cart-quote').each(function () {
    $(this).on('click', () => {
      if ($(this).hasClass("disabled")) {
        console.log("disabled");
      } else {
        var checked_accessories = $('.add_me_to_cart:checked');
        var main_product = $('#product_page_product_id').val();
        var qty_product = $('#quantity_wanted').val();
        var products_list = "";

        var urlQuote = "";
        if ($(this).hasClass("add-to-quote")) {
          urlQuote = "#print-quotation";
        };

        $(checked_accessories).each(function () {
          var id_prd = '-' + $(this).val();
          products_list += id_prd;
        });
        var protocol = location.protocol;
        var host = location.host;
        var domain = protocol + "//" + host;
        /* console.log(domain + "/module/addtocartfromurl/cart?p="+main_product+products_list+"&qp="+qty_product);
        console.log("TEST"); */
        var url_gen = domain + "/module/addtocartfromurl/cart?p=" + main_product + products_list + "&qp=" + qty_product + urlQuote;
        window.location.replace(url_gen);
      }
    })
  })
}

/**
 * (Private) Change partial information of combination refers to the new product
 * @param {object} event
 * @returns {void}
 */
function __changeCurrentProduct(event) {
  // change the whole the page
  __replaceNode(document.querySelector('div#main'), event.product_whole_page)
  document.querySelector('input.product-refresh').style.display = 'none'
  __replaceNode(document.querySelector('.breadcrumb.hidden-sm-down.row'), event.product_breadcrumb)
  gtmiAddAssocProductEvents()
  setTimeout(() => {bvkAddToCartBtns();}, 3000) // To be executed as the last
}


/**
 * (Private) Change content of a current node by keeping the wrapper
 * @param {object} currentNode 
 * @param {string} newHtmlContent
 * @return {void}
 */
export function __replaceNode(currentNode, newHtmlContent) {
  const newNode = document.createElement('div')
  newNode.innerHTML = newHtmlContent
  currentNode.replaceWith(...newNode.childNodes)
}

/**
 * (Private) Get final price with product associated checked or not
 * @param {object} event change event from checkbox product associated
 * @param {object} el 
 * @returns {string}
 */
export function __getFinalPriceWithAssocProducts(event, el) {
  const assProduct = {
    inc: event.target.dataset.priceIncTax,
    exc: event.target.dataset.priceExcTax,
    checked: event.target.checked
  }
  let finalPrice = __calculateNewPrice(el, assProduct)
  el.setAttribute('newPrice', finalPrice)
  const suffix = el.classList.contains('priceTTC') ? '€ TTC' : '€ HT'
  finalPrice = finalPrice.replace(/\d(?=(\d{3})+\.)/g, '$& ').replace('.', ',') // separate thousands example 1320.20 => 1 320,20
  return `${finalPrice} ${suffix}`
}


/**
 * (Private) Set newPrice attribute to HTML Element
 * @param {object} el HTML Element
 * @param {object} assessoryProduct product associated
 * @returns {null|float}
 */
export function __calculateNewPrice(el, assessoryProduct) {
  if (el == null) {
    return
  }
  const initPrice = el.hasAttribute('newPrice') ? el.getAttribute('newPrice') : el.getAttribute('content')
  let finalPrice = new Number(initPrice)
  let whichPrice = (el.classList.contains('priceTTC')) ? assessoryProduct.inc : assessoryProduct.exc
  if (assessoryProduct.checked) {
    finalPrice += new Number(whichPrice)
  } else {
    finalPrice -= new Number(whichPrice)
  }
  return finalPrice.toFixed(2)
}


/**
 * (Private) Change product price in front office
 * @param {object} event 
 * @returns {void}
 */
export function __changeProductPrice(event) {
  const currentPrice = document.querySelector('#currentPrice')
  const regularPrice = document.querySelector('.product-discount .regular-price')
  const priceTTC = document.querySelector('.priceTTC')
  currentPrice.textContent = __getFinalPriceWithAssocProducts(event, currentPrice)
  priceTTC.textContent = __getFinalPriceWithAssocProducts(event, priceTTC)
  if (regularPrice) {
    regularPrice.textContent = __getFinalPriceWithAssocProducts(event, regularPrice)
  }
}