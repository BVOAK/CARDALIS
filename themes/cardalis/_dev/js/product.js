/**
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
 */
import $ from 'jquery';
import Pickr from '@simonwep/pickr/dist/pickr.es5.min'; 
import './lib/slick.min';
import { bvkAddToCartBtns, gtmiAddAssocProductEvents, gtmiPrintersLoadEvents } from './gtmi.changeprinter'
import ProductSelect from './components/product-select'

jQuery(function () {
  createProductSpin();
  createInputFile();
  //coverImage();
  changeWidthContentProduct();
  /*   imageScrollBox(); */
  initCustomBlock();
  miniatureSlickThumbnails();
  miniatureSlickImageCover();
  $('#quantity_wanted').trigger('change')
  // Add checkboxes events to add product accessory price
  gtmiAddAssocProductEvents();
  //checkRubbanProduct();
  
  // Add to cart by URL
  bvkAddToCartBtns()
  checkSimilarProducts();
  bvClickMoreProducts()
  countTabsProduct(); 

  btnTooltip ();

  unckeckedRadio('#blockWarranty392');
  unckeckedRadio('#blockWarranty393'); 
  $('#blockWarranty392 .title:first').addClass("d-block");
  $('#blockWarranty393 .title:first').addClass("d-block");


  prestashop.on('updatedProduct', function (event) {
    // Change no default combination product to corresponding product having the same reference
    if(gtmiPrintersLoadEvents(event)) {
      createProductSpin()
    }
    createProductSpin();
    createInputFile();
    //coverImage();

    gtmiAddAssocProductEvents();
    countTabsProduct(); 
    bvkAddToCartBtns();
    checkSimilarProducts();  
    bvClickMoreProducts();
    btnTooltip ();
    hideStockProductPrinter();
    //checkRubbanProduct(); 

    unckeckedRadio('#blockWarranty392');
    unckeckedRadio('#blockWarranty393');    
    $('#blockWarranty392 .title:first').addClass("d-block");
    $('#blockWarranty393 .title:first').addClass("d-block");

    if (event && event.product_minimal_quantity) {  
      const minimalProductQuantity = parseInt(event.product_minimal_quantity, 10);
      const quantityInputSelector = '#quantity_wanted';
      let quantityInput = $(quantityInputSelector);

      // @see http://www.virtuosoft.eu/code/bootstrap-touchspin/ about Bootstrap TouchSpin
      quantityInput.trigger('touchspin.updatesettings', { min: minimalProductQuantity });

    }

    /*imageScrollBox();*/
    miniatureSlickThumbnails();
    miniatureSlickImageCover();
    
    $($('.tabs .nav-link.active').attr('href')).addClass('active').removeClass('fade');
    $('.js-product-images-modal').replaceWith(event.product_images_modal);
    // Modal photos replaces the cover image when clicking on the other images
    const modalProductSelect = new ProductSelect()
    modalProductSelect.init()
    initCustomBlock();
  });


  function coverImage() {
    $('.js-thumb').on(
      'click',
      (event) => {
        $('.js-modal-product-cover').attr('src', $(event.target).data('image-large-src'));
        $('.selected').removeClass('selected');
        $(event.target).addClass('selected');
        $('.js-qv-product-cover').prop('src', $(event.currentTarget).data('image-large-src'));
      }
    );
  }

  function miniatureSlickThumbnails() {
    $('.js-qv-product-images').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      dots: false,
      vertical: false,
      focusOnSelect: true,
      asNavFor: '.product-cover',
    });
  } 

  function miniatureSlickImageCover() {
    $('.product-cover').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      fade: true,
      asNavFor: '.js-qv-product-images'
    });
  } 

  function imageScrollBox()
  {
    if ($('#main .js-qv-product-images li').length > 2) {
      $('#main .js-qv-mask').addClass('scroll');
      $('.scroll-box-arrows').addClass('scroll');
        $('#main .js-qv-mask').scrollbox({
          direction: 'v',
          distance: 113,
          autoPlay: false,
          infiniteLoop: true,
          switchAmount: 3
        });
        $('.scroll-box-arrows .left').click(function () {
          $('#main .js-qv-mask').trigger('backward');
        });
        $('.scroll-box-arrows .right').click(function () {
          $('#main .js-qv-mask').trigger('forward');
        });
    } else {
      $('#main .js-qv-mask').removeClass('scroll');
      $('.scroll-box-arrows').removeClass('scroll');
    }
  }

  function createInputFile() {
    $('.js-file-input').on('change', (event) => {
      $('.js-file-name').text($(event.currentTarget).val().replace(/c:\\fakepath\\/gi, ''));
    });
  }

  function createProductSpin() {
    let quantityInput = $('#quantity_wanted');
    quantityInput.TouchSpin({
      verticalbuttons: true,
      verticalupclass: 'material-icons touchspin-up',
      verticaldownclass: 'material-icons touchspin-down',
      buttondown_class: 'btn btn-touchspin js-touchspin',
      buttonup_class: 'btn btn-touchspin js-touchspin',
      min: parseInt(quantityInput.attr('min'), 10),
      max: 1000000
    });

    var quantity = quantityInput.val();
    quantityInput.on('keyup change', function (event) {
      const newQuantity = $(this).val();
      if (newQuantity !== quantity) {
        quantity = newQuantity;
        let $productRefresh = $('.product-refresh');
        $(event.currentTarget).trigger('touchspin.stopspin');
        $productRefresh.trigger('click', { eventType: 'updatedProductQuantity' });
      }
      event.preventDefault();
      return false;
    });

  }

  /* $('.btnGotoDesc').click(function (e) {
    e.stopPropagation();
    e.preventDefault();
    $(window).scrollTo($('#productDescription'), 1000);
  }); */

  function initPicker() {
    //Define BGCOLOR
    const inputElementBg = document.querySelector('#colorpicker-bgcolor');
    const pickrBG = Pickr.create({
      el: inputElementBg,
      useAsButton: true,
      default: '#999999',
      theme: 'classic', // or 'monolith', or 'nano'
      defaultRepresentation: 'CMYK',
      swatches: [
        'rgba(244, 67, 54, 1)',
        'rgba(233, 30, 99, 1)',
        'rgba(156, 39, 176, 1)',
        'rgba(103, 58, 183, 1)',
        'rgba(63, 81, 181, 1)',
        'rgba(33, 150, 243, 1)',
        'rgba(3, 169, 244, 1)',
        'rgba(0, 188, 212, 1)',
        'rgba(0, 150, 136, 1)',
        'rgba(76, 175, 80, 1)',
        'rgba(139, 195, 74, 1)',
        'rgba(205, 220, 57, 1)',
        'rgba(255, 235, 59, 1)',
        'rgba(255, 193, 7, 1)'
      ],
      components: {
        // Main components
        preview: true,
        hue: true,
        // Input / output Options
        interaction: {
          hex: false,
          rgba: false,
          hsla: false,
          hsva: false,
          cmyk: true,
          input: true,
          clear: false,
          save: true
        }
      },
      strings: {
        save: 'Enregistrer',  // Default for save button
        clear: 'Effacer', // Default for clear button
        cancel: 'Fermer' // Default for cancel button
      }
    }).on('init', (instance) => {
      if ($('#colorpicker-bgcolor').val()) {//BGCOLOR A UNE VALEUr => ON  LE MET EN FOND
        instance.setColor($('#colorpicker-bgcolor').val());

        $('#colorpicker-bgcolor')
          .css("background-color", instance._color.toHEXA().toString(0))
          .val(instance._color.toCMYK().toString(0));
      }
    })
      .on('save', (color, pickrBG) => {
        $('#colorpicker-bgcolor')
          .css("background-color", pickrBG.getSelectedColor().toHEXA().toString(0))
          .val(color.toCMYK().toString(0));
        pickrBG.hide();
      });


    //Define TEXTCOLOR
    const inputElementText = document.querySelector('#colorpicker-textcolor');
    const pickrText = Pickr.create({
      el: inputElementText,
      useAsButton: true,
      theme: 'classic', // or 'monolith', or 'nano'
      defaultRepresentation: 'CMYK',
      //comparison: false,
      swatches: [
        'rgba(244, 67, 54, 1)',
        'rgba(233, 30, 99, 1)',
        'rgba(156, 39, 176, 1)',
        'rgba(103, 58, 183, 1)',
        'rgba(63, 81, 181, 1)',
        'rgba(33, 150, 243, 1)',
        'rgba(3, 169, 244, 1)',
        'rgba(0, 188, 212, 1)',
        'rgba(0, 150, 136, 1)',
        'rgba(76, 175, 80, 1)',
        'rgba(139, 195, 74, 1)',
        'rgba(205, 220, 57, 1)',
        'rgba(255, 235, 59, 1)',
        'rgba(255, 193, 7, 1)'
      ],
      components: {
        // Main components
        preview: true,
        hue: true,
        // Input / output Options
        interaction: {
          hex: false,
          rgba: false,
          hsla: false,
          hsva: false,
          cmyk: true,
          input: true,
          clear: false,
          save: true
        }
      },
      strings: {
        save: 'Enregistrer',  // Default for save button
        clear: 'Effacer', // Default for clear button
        cancel: 'Fermer' // Default for cancel button
      }
    })
      .on('init', (instance) => {
        // console.log('color',instance);
        if ($('#colorpicker-textcolor').val()) {//TEXCOLOR A UNE VALEUR =>  ON LE MET EN FOND DU CHAMPS
          instance.setColor($('#colorpicker-textcolor').val());
          $('#colorpicker-textcolor')
            .css("background-color", instance._color.toHEXA().toString(0))
            .val(instance._color.toCMYK().toString(0));
        }

      })
      .on('save', (color, pickrText) => {
        $('#colorpicker-textcolor')
          .css("background-color", pickrText.getSelectedColor().toHEXA().toString(0))
          .val(color.toCMYK().toString(0));
        pickrText.hide();
      });

    //Define FONT
    $('#fontpicker').fontselect().on('load', function () {
      //console.info(' change et load')
      $("#fontpicker").attr("value", $(this).val().replace(/\+/g, ' '));
    });

    $('[data-toggle="popover"]').popover({ trigger: 'hover' });

  }



  

  /**
   * @desc Dans le contexte d'un produit personnalisable
   * Initialise les couleurs, la font
   * Récupère les données du formulaire dans le localStorage
   * Permet de changer de produit quand la valeur d'un attribut change
   */
  function initCustomBlock() {
    if ($("#main").attr("data-page") == "lanyardPage") {
      initPicker();
      handleEventsFromCustomForm();
      getDataFromLocalStorage();
    };
  }
});


