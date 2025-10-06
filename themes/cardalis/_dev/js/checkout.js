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
import prestashop from 'prestashop';
import './jPushMenu';

function setUpCheckout() {
  if ($('.js-cancel-address').length !== 0) {
    $('.checkout-step:not(.js-current-step) .step-title').addClass('not-allowed');
  }

  $('.js-terms a').on('click', (event) => {
    event.preventDefault();
    var url = $(event.target).attr('href');
    if (url) {
      // TODO: Handle request if no pretty URL
      url += `?content_only=1`;
      $.get(url, (content) => {
        $('#modal').find('.modal-content').html($(content).find('.page-cms').contents());
      }).fail((resp) => {
        prestashop.emit('handleError', { eventType: 'clickTerms', resp: resp });
      });
    }

    $('#modal').modal('show');
  });

  $('.js-gift-checkbox').on('click', (event) => {
    $('#gift').collapse('toggle');
  });
}

$(document).ready(() => {
  if ($('body#checkout').length === 1) {
    setUpCheckout();
  }

  prestashop.on('updatedDeliveryForm', (params) => {
    // Hide all carrier extra content ...
    $(".carrier-extra-content").hide();
    // and show the one related to the selected carrier
    params.deliveryOption.find(".carrier-extra-content").slideDown();
  });

  // $('.address-item .custom-radio input:checked, .address-item').closest().addClass("selected");

  $('#delivery-addresses .address-item .custom-radio input').click(function () {
    $('#delivery-addresses .address-item .custom-radio input').each(function () {
      $(this).closest('.address-item').removeClass('selected');
    });
    if ($(this).is(':checked')) {
      $(this).closest('.address-item').addClass('selected');
    }
  });

  $('#invoice-addresses .address-item .custom-radio input').click(function () {
    $('#invoice-addresses .address-item .custom-radio input').each(function () {
      $(this).closest('.address-item').removeClass('selected');
    });
    if ($(this).is(':checked')) {
      $(this).closest('.address-item').addClass('selected');
    }
  });

  $('.js-scrollTo').on('click', function () { // Au clic sur un élément
    var page = $(this).attr('href'); // Page cible
    var speed = 750; // Durée de l'animation (en ms)
    $('html, body').animate({ scrollTop: $(page).offset().top }, speed); // Go
    return false;
  });

});
