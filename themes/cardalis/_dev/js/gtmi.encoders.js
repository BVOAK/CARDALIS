export const DATA = {
  selectors: {
    pVariant: '.product-variants',
    pVariantLabel: '.product-variants .control-label',
    productAccessoryList: '.productAccessoryList',
    productAccessoryListLabel: '.productAccessoryList .control-label',
    hiddenCombination: '.product-variants-item:not(:first-of-type), ul, div.clearfix.product-variants-item::after',
    hiddenAccessories: 'label.container',
    groups: {
      ten: '[name="group[10]"]',
      fourteen: '[name="group[14]"]',
      fifteen: '[name="group[15]"]'
    },
  },
  newCssClass: {
    container: 'gtmi-printer-options',
    label: 'gtmi-printer-group-label',
  },
  icones: {
    arrowDown : '<svg width="32" height="32" viewBox="0 0 24 24"><path fill="currentColor" d="m11.3 14.3l-2.6-2.6q-.475-.475-.212-1.087Q8.75 10 9.425 10h5.15q.675 0 .937.613q.263.612-.212 1.087l-2.6 2.6q-.15.15-.325.225q-.175.075-.375.075t-.375-.075q-.175-.075-.325-.225Z"/></svg>',
    arrowUp: '<svg width="32" height="32" viewBox="0 0 24 24"><path fill="currentColor" d="M9.425 14q-.675 0-.937-.613q-.263-.612.212-1.087l2.6-2.6q.15-.15.325-.225Q11.8 9.4 12 9.4t.375.075q.175.075.325.225l2.6 2.6q.475.475.212 1.087q-.262.613-.937.613Z"/></svg>'
  }
}

/**
 * Replace all control labels for printer variants by one "options"
 * When variants are Simple or RV, encoder and connectors
 * 
 * @returns void
 */
export function gtmiReplaceAllVariantsLabel() {
  const labels = document.querySelectorAll(DATA.selectors.pVariantLabel)
  const size = labels.length
  if(size < 2) {
    return
  }
  let i = 0;
  for(; i < size; i++) {
    const label = labels[i]
    if(i !== 0) {
      label.remove()
    } else {
      label.innerHTML = '<span>options</span>'
      label.insertAdjacentHTML('beforeend', DATA.icones.arrowUp)
      label.classList.add(DATA.newCssClass.label)
    }
  }
}

export function gtmiReplaceProductAccessoryListLabel() {
  const label = document.querySelector(DATA.selectors.productAccessoryListLabel)
  if(label) {
    label.innerHTML = `<span>${label.innerHTML}</span>`
    label.insertAdjacentHTML('beforeend', DATA.icones.arrowUp)
    label.classList.add(DATA.newCssClass.label)
  }
}

export function gtmiToggleProductAccessoryList() {
  const label = document.querySelector(DATA.selectors.productAccessoryListLabel)
  if(!label) {
    return
  }
  label.classList.add(DATA.newCssClass.label)
  label.addEventListener('click', function() {
    const container = this.closest(DATA.selectors.productAccessoryList) 
    container.querySelectorAll(DATA.selectors.hiddenAccessories).forEach(el => {
      el.classList.toggle('d-none')
    })
    if(container.querySelector('.container').classList.contains('d-none')) {
      this.children[1].outerHTML = DATA.icones.arrowDown
    } else {// default arrowUp
      this.children[1].outerHTML = DATA.icones.arrowUp
    }
    container.classList.toggle('gtmi-no-active')
  })

}
/**
 * Add CSS class to change apparence of variant
 * For printers with attributes simple or RV, encoder and connector
 */
export function __addNewCssClassToContainer() {
  //TODO add only for printers
  const collapseElts = document.querySelectorAll(`${DATA.selectors.pVariant}, ${DATA.selectors.productAccessoryList}`)
  if(collapseElts) {
    collapseElts.forEach(label => label.classList.add(DATA.newCssClass.container))
  }
}
/**
 * Toggle show/hide product variants items 
 * And change options label icone
 */
export function gtmiToggleProductVariants() {
  const label = document.querySelector(DATA.selectors.pVariantLabel)
  if(!label) {
    return
  }
  label.addEventListener('click', function() {
    const container = this.closest(DATA.selectors.pVariant) 
    container.querySelectorAll(DATA.selectors.hiddenCombination).forEach(el => {
      el.classList.toggle('d-none')
    })
    if(container.querySelector('ul').classList.contains('d-none')) {
      this.children[1].outerHTML = DATA.icones.arrowDown
    } else {// default arrowUp
      this.children[1].outerHTML = DATA.icones.arrowUp
    }
    container.classList.toggle('gtmi-no-active')
  })
}