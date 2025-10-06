/**
 * Add Event change on select to choose the brand
 */
export function gtmiChoosePrinter() {
  const brand = document.querySelector('#gtmiPrinters')
  if(brand) {
    brand.addEventListener('change', function (e) {
      clearSpan()
      getModels(e.target.value)
      updateSearchURL()
    })
  }
}

/**
 * Add Event change to select models
 */
export function gtmiChooseModel() {
  const model = document.querySelector('#gtmiModels')
  if(model) {
    model.addEventListener('change', function () {
      clearSpan()
      updateSearchURL().then(() => {
        checkResults()
      })
    })
  }
}

/**
 * Add event change to select rubans
 */
export function gtmiChooseRuban() {
  if (document.querySelector('#gtmiRubans') !== null) {
    const ruban = document.querySelector('#gtmiRubans')
    if(ruban) {
      ruban.addEventListener('change', function () {
        updateSearchURL().then(() => {
          checkResults()
        })
      })
    }
  }
}

export function gtmiGetType() {
  if (document.querySelector('#gtmiRubans') !== null) {
    const type = document.querySelector('#gtmiRubans')
    type.addEventListener('change', checkResults)
  }
}

function countResult(html) {
  const article = /<article/g
  return ((html || '').match(article) || []).length
}

function checkResults() {
  const a = document.querySelector('#gtmi-ruban-link')
  const div = document.querySelector('#gtmi-ruban-alert')
  const span = div.querySelector('span')
  const p = div.querySelector('p')
  a.setAttribute('disabled', 'disabled')
  span.classList.add('gtmi-ruban-loader')
  span.innerHTML = ''
  div.style.display = 'block'
  p.style.display = 'block'
  console.log('check result')
  $.ajax(a.href)
    .done(function (res) {
      p.style.display = 'none'
      if(/désagrément/gi.test(res)) {
        span.innerHTML = 'Aucun ruban ne correspond à vos critères'
      } else {
        const total = countResult(res)
        span.innerHTML = `${total} ruban(s) trouvé(s)`
        a.removeAttribute('disabled')
      }
    })
    .fail(function () {
      p.style.display = 'none'
      span.innerHTML = 'Impossible d\'effectuer la recherche'
      console.error('failed')
    }).always (function(){
      span.classList.remove('gtmi-ruban-loader')
    })
}

function clearSpan() {
  document.querySelector('#gtmi-ruban-alert span').innerHTML = ''
}

/**
 * Get Models from id of category
 * @param {int} modelId 
 */
function getModels(modelId) {
  $.ajax(setAjaxParams('models', modelId))
    .done(function (res) {
      const results = JSON.parse(res)
      removeAllOptions('#gtmiModels')
      addOptions('#gtmiModels', results)
    })
    .fail(function () {
      console.error('failed')
    })
}

/**
 * Parameters for ajax request
 * @param {string} action
 * @param {int} model 
 * @returns  object
 */
function setAjaxParams(action, model) {
  return {
    url: '',
    type: 'POST',
    cache: false,
    data: {
      ajax: true,
      action,
      model
    },
  }
}

/**
 * Remove all options of select except placeholder
 * @param {string} selector CSS selector
 */
function removeAllOptions(selector) {
  const select = document.querySelector(selector)
  let i = 0
  const opts = select.querySelectorAll('option:not([value=""])')
  for (;i < opts.length;i++) {
    select.removeChild(opts[i])
  }
}

/**
 * Add options in select from results of ajax request
 * @param {string} selector CSS selector 
 * @param {*} results results of ajax request
 */
function addOptions(selector, results) {
  let i = 0
  for (;i < results.length;i++) {
    const opt = document.createElement('option')
    const name = results[i].name
    opt.value = results[i].id
    opt.innerText = name
    document.querySelector(selector).append(opt)
  }
}


/**
 * Make URI from selects values (brand, model and type of ruban)
 */
function updateSearchURL() {
  console.log('update url')
  const block = document.querySelector('#blockPrinterFilters')
  const brandSelect = block.querySelector('#gtmiPrinters')
  const modelSelect = block.querySelector('#gtmiModels')
  const typeSelect = block.querySelector('#gtmiRubans')
  const brand = prepareURL(brandSelect)
  const model = prepareURL(modelSelect)
  const type = prepareURL(typeSelect)
  let page = '120-rubans-encre'
  let param = ''
  if(brand  && !/^choisissez/i.test(brand)) {
    const link = brandSelect.options[brandSelect.selectedIndex].getAttribute('data-link')
    const uri = link.split('/')
    page = uri[uri.length-1]
  }
  if(model && !/^choisissez/i.test(model)) {
    param += `Modèle+d'imprimante-${model}/`
  }
  if(type && !/^choisissez/i.test(type)) {
    param += `Type-${type}/`
  }
  const searchURL = `${page}?q=${param}`
  block.querySelector('.btn').href = searchURL
  return Promise.resolve(searchURL)
}

/**
 * Replace space by +
 * @param {object} select select HTMLElement
 * @returns string
 */
function prepareURL(select) {
  let param = select.options[select.selectedIndex].text.replaceAll(' ', '+')
  let severalModelRgx = /(,\+)|(\+et\+)/g
  if(severalModelRgx.test(param)) {
    param = param.replace(severalModelRgx, '-')
  }
  // specific statements with model feature (name of feature does not match name of category)
  param = specificURLs(param)
  return param
}

/**
 * After apply prepareURL some of them must have a specific statement
 * @param {string} param 
 * @returns string
 */
function specificURLs(param) {
  const data = [
    {
      rgx :/ds2/i,
      replace : 'Sigma+DS2' 
    },
    {
      rgx :/SP25-SP25Plus/i,
      replace : 'SP25-SP25+Plus'
    },
    {
      rgx :/badgy\+100/i,
      replace : 'Badgy+1'
    },
    {
      rgx :/pebble4-dualys3/i,
      replace : 'Pebble-Dualys'
    },
    {
      rgx :/tattoo2/i,
      replace : 'Tattoo2+RW'
    },
    {
      rgx :/DTC1250e/i,
      replace : 'DTC1250E'
    },
    {
      rgx :/DTC4250e/i,
      replace : 'DTC4250E'
    },
    {
      rgx :/DTC4500e/i,
      replace : 'DTC4500E'
    },
    {
      rgx :/mc\+210-310/i,
      replace : 'MC210+et+310'
    },
    {
      rgx :/matica\+XID8300-XL8300/i,
      replace : 'XID8300+et+XL8300'
    },
    {
      rgx :/matica\+/i,
      replace : ''
    },
    {
      rgx :/(PR|PR\%5C){1}-/i,
      replace : 'PR\\-'
    },
    {
      rgx :/\+s[e|é]ries\+/i,
      replace : ''
    },
    {
      rgx :/zenius\+classic/i,
      replace : 'Zenius'
    },
    {
      rgx :/smart\+21-31-51/i,
      replace : 'Smart+21-Smart+31-Smart+51'
    }
  ]
  let i = 0
  for(; i < data.length; i++) {
    const model = data[i]
    if(model.rgx.test(param)) {
      param =  param.replace(model.rgx, model.replace)
      break
    }
  }
  return param
}
