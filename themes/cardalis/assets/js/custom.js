/*
 * Custom code goes here.
 * A template should always ship with an empty custom.js
 */

/**
 * @desc Permet de stocker les informations du formulaire dans le localstorage afin de les restituer lors du chgmt du produit
 * @param boolean addToCart ajout au panier
 */
function setInfoToLocalStorage(andAddToCart = false) {
  let form = document.querySelector("#add-to-cart-or-refresh")
  let dataForm = new FormData(form);
  $('#add-to-cart-or-refresh input,#add-to-cart-or-refresh textarea').each(function () {
    /*
     *ON RECUPERE TOUS LES CHAMPS VIA LES ID QUI SONT STATIQUES POUR LES STOCKER DANS LE LOCALSTORAGE
     *LES NAMES DES CHAMPS DE PERSONNALISATION SONT DYNAMIQUES ET INCREMENTEES PLUS DIFFICILE VOIR IMPOSSS. A GERER LORSQU'ON CHANGE DE PRODUIT
     */
    if (typeof (Storage) !== "undefined") { // NAVIGATEUR SUPPORTE LE LOCALSTORAGE
      if ($(this)[0].id.length > 0) { //VERIF QUE LES CHAMPS POSSEDENT UN ID
        if ($(this)[0].id != 'logoFile') {
          let value = $(this)[0].value

          if (value != " ") {
            localStorage.setItem($(this)[0].id.replace('colorpicker-', ''), value); //POUR AVOIR DES INDEX PLUS COURT
          }
        }
      }
    } else {
      alert(
        `Votre navigateur ne supporte pas la sauvergade des données.
        Veuillez télecharger une version plus récente dde votre navigateur pour profitez de l'expérience utilisateur de cette fonctionnalité.
        Vous devez insérer toutes vos informations avant d'ajouter au panier.
        Attention le changement de valeur de l'attache, largeur ruban, quantité ou accessoires supprimiravos choix des élements graphiques si elles ont été saisi en amont`
      );
      return;
    }
  });
  //Bluf click bouton enregistrer les customs
  dataForm.append('submitCustomizedData', "submitCustomizedData")

  $.ajax({
    url: '',
    data: dataForm,
    method: 'POST',
    cache: false,
    async: false,
    enctype: 'multipart/form-data',
    processData: false,
    contentType: false,
    success: function (res) {
      console.info('success', 'sauvergade données sans ajout au panier');

      if (andAddToCart) { //AJOUT PANIER
        var fakeBtnImg = $("#saveAndAddCustomProduct img");
        console.info('add to cart ok')

        //IMAGE DE CHARGEMENT
        $(fakeBtnImg).attr("src", function (index, old) {
          return old.replace('iconCartButton.svg', 'loader.svg');
        });

        $('[data-button-action=add-to-cart]').removeAttr('disabled').click()
        DeleteDataFromLocalStorage() // clean les champs de personnalisation
        $('#product_customization_id').val(0) // le forcer à changer lors d'une prochaine customization
        return; //Empecher suite execution du code
      }
    },
    error: function (dataForm) {
      console.error("La validation du formulaire de personnalisation n'a pas aboutie");
      console.error('error', dataForm);
    },
    complete: function () {
      if (dataForm.get('id_customization') == 0) {
        window.location.reload() // forcer le rechargement pour avoir un id_customization != 0 => indespensable pour distinguer les personnalisations
      }
    }
  });
}


/**
 * Permet de vider le localStorage
 */
function DeleteDataFromLocalStorage() {
  if (typeof (Storage) !== "undefined") {
    if (localStorage.getItem('bgcolor')) {
      localStorage.removeItem('bgcolor');
    }
    if (localStorage.getItem('bgcolor-pantone')) {
      localStorage.removeItem('bgcolor-pantone');
    }
    if (localStorage.getItem('textcolor')) {
      localStorage.removeItem('textcolor');
    }
    if (localStorage.getItem('textcolor-pantone')) {
      localStorage.removeItem('textcolor-pantone');
    }
    if (localStorage.getItem('fontpicker')) {
      localStorage.removeItem('fontpicker');
    }
    if (localStorage.getItem('fontValue')) {
      localStorage.removeItem('fontValue');
    }
    if (localStorage.getItem('comment')) {
      localStorage.removeItem('comment');
    }
    if (localStorage.getItem('quantity_wanted')) {
      localStorage.removeItem('quantity_wanted');
    }
  }
}


/**
 * Permet de remplir les champs du formulaire dans le localStorage
 */
function getDataFromLocalStorage() {
  if (typeof (Storage) !== "undefined") {
    if (bgColor = localStorage.getItem('bgcolor')) {
      $('#colorpicker-bgcolor').val(bgColor)
    }

    if (bgPantone = localStorage.getItem('bgcolor-pantone')) {
      $('#colorpicker-bgcolor-pantone').val(bgPantone)
    }
    if (textColor = localStorage.getItem('textcolor')) {
      $('#colorpicker-textcolor').val(textColor)
    }

    if (textPantone = localStorage.getItem('textcolor-pantone')) {
      $('#colorpicker-textcolor-pantone').val(textPantone)
    }
    if (fontpicker = localStorage.getItem('fontpicker')) {
      fontpicker = fontpicker.replace(/\+/g, ' '); // remplacer les + par des espaces
      $('#fontpicker').val(fontpicker);
      $('.font-select>a>span').text(fontpicker).css('font-family', fontpicker)
    }

    if (fontValue = localStorage.getItem('fontValue')) {
      $('#fontValue').val(fontValue);
    }

    if (comment = localStorage.getItem('comment')) {
      $('#comment').text(comment)
    }

    if (localStorage.getItem('quantity_wanted')) {
      $('#quantity_wanted').val(localStorage.getItem('quantity_wanted'))
    }

    /*if(positionY = localStorage.getItem('positionY')){
        //$('html,body').animate({ scrollTop: positionY},1000);
         localStorage.removeItem('positionY')
     }*/
  }
}

/**
 * Gestion des évenements sur les différents champs du formulaire
 */
function handleEventsFromCustomForm() {
  if ($("div[data-save-and-add=1]").length > 0) { //Clone du bouton ajout au panier classique
    $("#saveAndAddCustomProduct").on("click", function (e) {
      let bgColorCmx = $("#colorpicker-bgcolor")
      let bgColorPtn = $("#colorpicker-bgcolor-pantone")
      let txtColorCmx = $("#colorpicker-textcolor")
      let txtColorPtn = $("#colorpicker-textcolor-pantone")

      /*
       *Switcher de name si le client choisi de saisir une couleur cmx au lieu du pantone et que le pantone est vide
       *Pantone est plus important que cmx
       */
      if (bgColorCmx.val().length > 0 && bgColorPtn.val().length == 0) {
        let nameBgPantone = $(bgColorPtn).attr('name')
        $(bgColorCmx).attr('name', nameBgPantone);
        $(bgColorPtn).removeAttr('name');
      }

      if (txtColorCmx.val().length > 0 && txtColorPtn.val().length == 0) {
        let nameTxtPantone = $(txtColorPtn).attr('name')
        $(txtColorCmx).attr('name', nameTxtPantone);
        $(txtColorPtn).removeAttr('name');
      }
      setInfoToLocalStorage(true);
    });
  }

  $("#quantity_wanted").on('change keyup keydown', function (e) {
    // Empeche ajout au panier avec le bouton entrée
    if (e.type == "keydown") {
      if (e.keyCode == 13) {
        return false;
      }
    }
    //Mettre à jour quelques infos directement en évitant une nouvelle requete ajax
    if (typeof (Storage) !== "undefined") {
      localStorage.setItem('quantity_wanted', e.target.value)
      localStorage.setItem('comment', $('#comment').val())
      localStorage.setItem('fontValue', $('#fontValue').val())
      localStorage.setItem('bgcolor-pantone', $('#colorpicker-bgcolor-pantone').val())
      localStorage.setItem('textcolor-pantone', $('#colorpicker-textcolor-pantone').val())
    }
  });

  // Changement valeur fond couleur texte pantone, texte et commentaire après perte focus pour récupérer les valeurs saisies
  $('#fontValue, #comment,#colorpicker-bgcolor-pantone,#colorpicker-textcolor-pantone').each(function () {
    $(this).on('blur', function () {
      setInfoToLocalStorage();
    });
  });

  // champ fond et couleur du texte après enregistrement
  $('.pcr-save').each(function () {
    $(this).on('click', function () {
      $('#comment').val(" ").trigger('blur') // déclencher indirectement setInfoToLocalStorage
    });
  });

  // Changement de la police
  $('.font-select').fontselect().on('change', function (e) {
    $('#fontpicker').val(e.target.value);
    setInfoToLocalStorage();
  });

  /*
   *Chargement du logo en natif car jquery provoque quelques erreurs indésirables dans ce cas précis
   */
  document.getElementById("logoFile").addEventListener('change', function (e) {
    let file = e.target.files[0];
    let reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function (e) { //Sert au final à avoir un dataURL de l'image uploadé et le stocker
      if (e.target.readyState == FileReader.DONE) {
        let dataF = new FormData(document.querySelector("#add-to-cart-or-refresh"))
        //Bluf qui simule l'enregistrement des customs
        dataF.set('submitCustomizedData', 'submitCustomizedData')
        $.ajax({
          url: '',
          data: dataF,
          method: 'POST',
          cache: false,
          async: false,
          enctype: 'multipart/form-data',
          processData: false,
          contentType: false,
          success: function (res) {
            setInfoToLocalStorage()
            prestashop.emit('updateProduct', {
              reason: res
            })
          },
          error: function (error) {
            console.error("Erreur upload du fichier");
            console.error('error', error);
          },
        });
      }
    }
  });

  /*
  //Supprimer le choix des couleurs si on n'en veut plus
  $('.pcr-clear').each(function(e){
      console.log('this',$(this))
      $(this).on('click', function(e) {
          if(localStorage.getItem('bgcolor')){
              localStorage.removeItem('bgcolor');
          }
          if(localStorage.getItem('textcolor')){
              localStorage.removeItem('textcolor');
          }   
      });
  });*/
}

/*
 *Il y a un tag html a supplémentaire non présent sur le fichier tpl qui s'ajoute sur certaines pages mon-compte et qui pertube la mise en page
 *Le js suivant sert à le supprimer
 */

function removeLinksEmpty() {
  $('#pageAccount a').each(function () {
    if (!($(this).attr("href"))) {
      $(this).contents().unwrap();
    }
  });
}

removeLinksEmpty();

/* blockShippingDelayStep append to step 5 shipping  */
$("#ShippingDelayStep").replaceWith($("#blockShippingDelayStep"));
$("#blockShippingDelayStep").removeClass("d-none")


/* Add multiple related products */
var noSelectionTxt = "{l s='No items selected'}";


function changeWidthContentProduct() {
  /*console.log('test'+$('#product #blockRightContent .product-variants').contents().length);*/
  if ($('#product #blockRightContent .product-variants').contents().length > 1 || $('#product #blockRightContent .product-discounts').contents().length > 1 || $('#product #blockRightContent .blockSaleWith').contents().length > 1) {
    $('#product #blockRightContent').addClass('col-xl-5 col-lg-6');
    $('#product #blockLeftContent').addClass('col-xl-7 col-lg-6');
  } else {
    $('#product #blockRightContent').removeClass('col-xl-5 col-lg-6');
    $('#product #blockLeftContent').removeClass('col-xl-7 col-lg-6').addClass('col-lg-12');
  }
}

function countTabsProduct() {
  var numItems = $('#blockTabProduct .nav-item').length;
  if (numItems == 1) {
    $('#blockTabProduct .nav').addClass("nav-title");
    $('#myTabContent').addClass("tab-title");
  }
}

function btnTooltip() {
  $('.btn-tooltip').popover({ trigger: 'hover' });
  $('.btn-tooltip').on('click', function () {
    $(this).popover("hide");
  });
}


// GET LINK ITEM
function customLinkItem() {
  $('.blockItemList .item, .blockItemList .itemCE').each(function () {
    var links = $(this).find("a").attr("href");
    $(this).on('click', function () {
      window.location.replace(links);
    });
  });
}
customLinkItem();



function unckeckedRadio(item) {

  $(item + ' .radioMarkInput').click(function () {
    $(item).find(".checked").each(function () {
      $(this).removeClass("checked");
      $(this).prop('checked') == false;
      if ($(this).prop('checked') == true) {
        $(this).trigger("click");
      }
    });
    if ($(this).prop('checked') == true) {
      $(this).addClass("checked");
      $(this).prop('checked') == true;
    } else {
      $(this).removeClass("checked");
      $(this).prop('checked') == false;
    }
  });
}

if ($("#select_type_bracelet").length) {
  var typeBracelet = $("#inputTypeBracelet").val();
  if (typeBracelet != undefined) {
    $("#select_type_bracelet").val(typeBracelet);
  }
}


//$("#address input[type='tel']").attr('pattern', '^[0-9]{10}$');
inputTel = $("#address input[type='tel']");
$("#address .btn").click(function () {
  inputTelVal = inputTel.val();
  newVal = inputTelVal.replace(/\D+/g, '');
  inputTel.val(newVal);
});


//AccordionContentPlus
$('.accordionContentPlus').each(function () {
  var idCollapse = $(this).find(".collapse").attr("id");
  $(this).find("button").attr("data-toggle", "collapse").attr("data-target", "#" + idCollapse).attr("aria-expanded", "false").attr("aria-controls", idCollapse);
});

$('.accordionContentPlus button').click(function () {
  if ($(this).attr("aria-expanded") == "false") {
    $(this).html("Réduire le texte");
  } else {
    $(this).html("Lire la suite");
  }
});


//Menu fixed 
// Scroll Menu
function scrollMenu() {
  $(window).on('scroll', () => {
    var windowScrollTop = $(window).scrollTop();
    if (windowScrollTop >= 500) {
      $("#sectionMenu").addClass("fixed");
    } else if (windowScrollTop <= 200) {
      $("#sectionMenu").removeClass("fixed");
    }
  });
}
scrollMenu();

// Scroll Menu Mobile
function scrollMenuMobile() {
  $(window).on('scroll', () => {
    var windowScrollTop = $(window).scrollTop();
    if (windowScrollTop >= 35) {
      $("#blockHeader2").addClass("fixed");
    } else if (windowScrollTop <= 35) {
      $("#blockHeader2").removeClass("fixed");
    }
  });
}
scrollMenuMobile();

// Scroll Filter Cat Mobile
function scrollFilterCatMobile() {
  if ($(window).innerWidth() < 768) {
    $(window).on('scroll', () => {
      var windowScrollTop = $(window).scrollTop();
      if (windowScrollTop >= 200) {
        $("#leftColumn").addClass("fixed");
      } else if (windowScrollTop <= 200) {
        $("#leftColumn").removeClass("fixed");
      }
    });
  }
}
scrollFilterCatMobile();


//MENU FOOTER HIDDEN MOBILE
function collapseMenuFooter() {
  if ($(window).innerWidth() < 768) {
    $(".menuFooter .level01").removeClass("show");
  } else {
    $(".menuFooter .level01").addClass("show");
  }
}

collapseMenuFooter();

$(window).resize(function () {
  collapseMenuFooter();
});


//Slick Page Cartes imprimées
$('#blockCardList').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  dots: false,
  infinite: true,
  responsive: [
    {
      breakpoint: 996,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
});


//CARTES PERSO HOVER NUMBER SCHEMA
$('.repereNumber').each(function () {
  var linksRepere = $(this).attr("id");
  $(this).on("mouseover click", function () {
    $(".repereText").removeClass('hover');
    $("#text" + linksRepere).addClass('hover');
  });
  $(this).on("mouseout", function () {
    $("#text" + linksRepere).removeClass('hover');
  });
});

$('.jsscrollTo').on('click', function () { // Au clic sur un élément
  var page = $(this).attr('href'); // Page cible
  var speed = 750; // Durée de l'animation (en ms)
  var bottom = $(window).height() - 200;
  $('html, body').animate({ scrollTop: $(page).offset().top - bottom }, speed); // Go
  return false;
});

$("#woodCard a").attr("data-toggle", "modal").attr("data-target", "#blocWoodCard");
$("#corkCard a").attr("data-toggle", "modal").attr("data-target", "#blocCorkCard");


//HIDE VALUE STOCK PRINTER PRODUCT
function hideStockProductPrinter() {
  $(".breadcrumb li").each(function () {
    var idCat = $(this).attr("data-id-cat");
    if (idCat == 93) {
      $("#product .stockProduct").hide();
    }
  });
}
hideStockProductPrinter();

//HIDE VALUE STOCK RUBBAN PRODUCT
function checkRubbanProduct() {
  $(".breadcrumb li").each(function () {
    var idCat = $(this).attr("data-id-cat");
    if (idCat == 120) {
      $("#product #product-availability .product-unavailable.messageStock").addClass("force-stock");
      //$("#product #product-availability .product-unavailable.noMessageStock").html("Sur commande");
    }
  });
}
checkRubbanProduct();

//HIDE VALUE STOCK EVOLIS RUBBAN CATEGORY
var ckeckBreadcrumb = false;
$(".breadcrumb li").each(function () {
  var idCat = $(this).attr("data-id-cat");
  if (idCat == 120) {
    ckeckBreadcrumb = true;
  }
});

function checkRubbanCategory() {
  $(".product-miniature").each(function () {
    var idCatProduct = $(this).attr("data-id-category");
    if (ckeckBreadcrumb == true) {
      $(this).find(".product-unavailable.messageStock").addClass("force-stock");
      $(this).find(".product-unavailable.messageStock").html("En stock");
      $(this).find(".product-unavailable.noMessageStock").html("Sur commande");
    }
  });
}
checkRubbanCategory();

if ($("#leftColumn").children().length == 0) {
  $("#productsListColumn").addClass("w-100");
}

function activeFiltersAppendToReady() {
  if ($(window).innerWidth() >= 768) {
    $('.PM_ASSelectionsBlock').appendTo("#blockActiveFilters");
  }
}

activeFiltersAppendToReady();


//Search Widget Mobile
$(".btSearchMobile").click(function (e) {
  e.stopPropagation();
  e.preventDefault();

  if ($(this).hasClass("active")) {
    $(this).removeClass("active");
    $("#searchWidgetMobile #search_widget").removeClass("opened");
  } else {
    $(this).addClass("active");
    $("#searchWidgetMobile #search_widget").addClass("opened");
  }
});

function checkSimilarProducts() {
  $("#blockTabDescription").hide();
  $("#btnMoreProducts").hide();
  if ($("#similarproducts .elementor").length > 0 || $("body").hasClass(".elementor-editor-active")) {
    $("#blockTabDescription").show();
    $("#btnMoreProducts").show();
  }
}

function bvClickMoreProducts() {
  $("#btnMoreProducts").click(function (e) {
    e.preventDefault();
    $('#similar-tab').tab('show');
    var position = $("#myTabDescription").offset().top - 150;
    $('html, body').stop().animate({ scrollTop: position }, 500);
  });
}

function checkLabelStockTooLonger() {
  $("#products .product-available").each(function () {
    var str = $(this).text();
    str = str.replace("Disponible sous", "Dispo.");
    $(this).text(str);
  });
}
checkLabelStockTooLonger()




//CUSTOMER ADDRESS FORM
if ($('#typeCustomer').length > 0) {
  $('#typeCustomer .form-control').each(function () {
    var nameInput = $(this).attr('name');
    $(this).parent().parent().attr("id", "row" + nameInput);
  });
}

$("#rowcompany .form-control").attr("required", "required");
$("#rowcompany .form-control-comment").hide();

$('#company-tab').on('shown.bs.tab', function () {
  $("#rowcompany").show();
  $("#rowvat_number").show();
  $("#rowcompany .form-control").attr("required", "required")
})

$('#individual-tab').on('shown.bs.tab', function () {
  $("#rowcompany").hide();
  $("#rowvat_number").hide();
  $("#rowcompany .form-control").removeAttr("required", "required")
})


// Erreur code postal 97 et France
$('#typeCustomer form').on('submit', function (e) {
  const postalCode = $('input[name="postcode"]').val().trim(); // Récupère la valeur du code postal
  const country = $('select[name="id_country"] option:selected').text(); // Récupère le pays sélectionné

  // Vérification du code postal et du pays
  if (postalCode.startsWith('97') && country === 'France') {
    e.preventDefault(); // Empêche la soumission du formulaire

    // Créer dynamiquement la balise HTML
    const errorMessage = $('<div>', {
      id: 'custom-error-message',
      class: 'alert alert-danger',
      text: 'Erreur : Les codes postaux commençant par "97" ne peuvent pas être associés au pays "France".',
      style: 'display: none;' // Masqué par défaut
    });

    // Ajouter la balise dans le conteneur et afficher le message
    $('#notifications .container').append(errorMessage);
    $('#custom-error-message').slideDown(); // Animation pour afficher le message

  }
});



const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const preview_id = urlParams.get('preview_id')

// Banner to Blog
function appendBannerBlog() {

  if (preview_id == null) {

    setTimeout(() => {
      var heightArticle = $(".article10").innerHeight();

      if ($('#bannerBlogCat').length > 0 && $('.article12').length > 0) {

        var links = $("#bannerBlogCat").find("a.elementor-button").attr("href");
        $($("#bannerBlogCat")).on('click', function () {
          window.location.replace(links);
        });

        $("#bannerBlogCat").css("display", "block");
        if ($(window).innerWidth() > 1600) {
          $("#bannerBlogCat").insertAfter($(".article12")).css("height", "170");
        } else if ($(window).innerWidth() > 1200 && $(window).innerWidth() <= 1600) {
          $("#bannerBlogCat").insertAfter($(".article10")).css("height", "170");
        } else if ($(window).innerWidth() > 991 && $(window).innerWidth() <= 1200) {
          $("#bannerBlogCat").insertAfter($(".article8")).css("height", "170");
        } else if ($(window).innerWidth() > 768 && $(window).innerWidth() <= 991) {
          $("#bannerBlogCat").insertAfter($(".article8")).css("height", (heightArticle - 10));
          $("#bannerBlogCat .blocText").css("height", (heightArticle - 100));
        } else if ($(window).innerWidth() > 530 && $(window).innerWidth() <= 768) {
          $("#bannerBlogCat").insertAfter($(".article8")).css("height", (heightArticle - 10));
          $("#bannerBlogCat .blocText").css("height", (heightArticle - 150));
        } else if ($(window).innerWidth() > 0 && $(window).innerWidth() <= 530) {
          $("#bannerBlogCat").insertAfter($(".article8")).css("height", (heightArticle - 10));
          $("#bannerBlogCat .blocText").css("height", (heightArticle - 100));
        }
      }

    }, 200);

  } else {

    $("#bannerBlogCat").css("display", "block");

  }

}

appendBannerBlog();

$(window).resize(function () {
  appendBannerBlog();
});


/// SEARCH WIDGET WITH DOOFINDER
$("#inputSearchDooFinder").on("keypress", function (e) {
  if (e.which === 13) {
    e.preventDefault();
  }
});


/// CHOSEN ELASTICSEARCH INPUT ORDER
if ($("input[name='id_order']")) {
  $("select[name='id_order']").addClass("chosen-select-order").attr("data-placeholder", "Choisissez une commande...").attr("data-placeholder", "Choisissez une commande...")
  $("select[name='id_order']").chosen();
}

function kitEchantillonsExistInCart() {
  var qtyContainer = $('#cart .cart-item[data-product="3994"] .input-group.bootstrap-touchspin');
  var inputQty = qtyContainer.find(".js-cart-line-product-quantity");
  qtyContainer.hide();
  inputQty.attr("value", "1").val(1);
};

setTimeout(kitEchantillonsExistInCart, 500);

// Fonction pour recharger le bloc de cross-selling
document.addEventListener("DOMContentLoaded", function () {
  if (window.location.pathname.includes('/panier')) {
    cleanCartUrl();
  }
});

// Supprime les paramètres d'URL après rechargement
function cleanCartUrl() {
  var newUrl = window.location.protocol + "//" + window.location.host + window.location.pathname + "?action=show&atcfu";
  history.replaceState({ path: newUrl }, '', newUrl);
}

// Surveiller l'ajout du produit CrossSelling (forcer rechargement de la page)
$(document).on('click', '.add-to-cart-cs', function (event) {
  event.preventDefault(); // Empêche l'action par défaut du lien

  var addToCartUrl = $(this).attr('href'); // Récupère l'URL d'ajout au panier
  window.location.href = addToCartUrl;
});

// Surveiller les actions de suppression de produit (AJAX)
$(document).on('click', '.remove-from-cart', function () {
  setTimeout(updateCrossSellingBlock, 1000);
});

// Surveiller l'ajout via un bouton AJAX (classique)
$(document).on('click', '.ajax_add_to_cart_button', function () {
  setTimeout(updateCrossSellingBlock, 1000);
});

// Fonction pour recharger le bloc de cross-selling
function updateCrossSellingBlock() {
  $.ajax({
    url: ajaxCrossSellingUrl, // URL définie dans le TPL
    type: 'GET',
    dataType: 'json',
    success: function (response) {
      console.log('Réponse Ajax:', response);

      //${response.price_display}

      if (response) {
        // Met à jour le bloc CrossSelling avec le produit trouvé
        $('.cross-selling-container').html(`
                <div class="cross-selling-product d-flex m-0 bgGrey p-3 justify-content-around align-items-center flex-wrap">
                  <div class="col-md-2 p-0">
                    <span class="product-image media-middle">
                      <img src="${response.image_url}" alt="${response.name}" class="mr-3 p-md-0 p-2 img-fluid" />
                    </span>
                  </div>
                  <div class="col-md-6 p-0">
                    <p class="m-0 cBlue text-uppercase titleSec"><strong>${response.name}</strong></p>
                    <div class="cBlue description">
                      <p class="m-0">Envie d'essayer avant d'acheter ?</p>
                      <p class="m-0">Ajoutez un Kit Échantillon à votre panier.</p>
                    </div>
                  </div>
                  <div class="col-md-4 d-flex justify-content-end align-items-center pl-3">
                    <span class="m-0 p-3 cOrange price"><strong></strong></span>
                    <p class="m-0">
                      <a href="${response.add_to_cart_url}" class="btn btn-primary bgOrange add-to-cart-cs text-uppercase">Ajouter au panier</a>
                    </p>
                  </div>
                </div>
              `);
      } else {
        $('.cross-selling-container').html(''); // Cache le bloc si aucun produit
      }
    },
    error: function (xhr, status, error) {
      console.error('Erreur lors de la requête Ajax :', status, error, xhr.responseText);
    }
  });
}

//Insérer un attribut alt pour les images imgtotcustomfields
function attrAltTotCustom() {
  $(".imgtotcustomfields").each(function () {
    var dataTitle = $(this).data("title");
    $(this).children().attr("alt", dataTitle);
    $('#category-image-reseller img').attr("alt", dataTitle);
  });
};

attrAltTotCustom();



$(function () {
  var $recap = $('#address-recap');
  if (!$recap.length) return;

  var $deliveryStep = $('#checkout-delivery-step');

  function toggleRecap() {
    var isOpen = $deliveryStep.hasClass('-current');
    $recap.toggle(isOpen);
  }

  // Initial
  toggleRecap();

  // Écoute l’événement custom si ton thème le déclenche
  $('body').on('ps:checkout-step-changed', toggleRecap);

  // Fallback robuste : observe le changement de classe sur l’étape transporteur
  if (window.MutationObserver && $deliveryStep.length) {
    new MutationObserver(toggleRecap).observe($deliveryStep.get(0), {
      attributes: true,
      attributeFilter: ['class']
    });
  }

  // Petit filet de sécurité : quand on clique sur "Continuer" dans les étapes,
  // on re-teste après le rafraîchissement du DOM.
  $(document).on('click', '#checkout-addresses-step .continue, #checkout-delivery-step .continue', function () {
    setTimeout(toggleRecap, 50);
  });
});


