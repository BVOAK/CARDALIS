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
import 'expose-loader?Tether!tether';
import 'bootstrap/dist/js/bootstrap.min';
import 'flexibility';
import 'bootstrap-touchspin';
import 'jquery.scrollto/jquery.scrollTo';
//import 'malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar';
//import 'imagesloaded/imagesloaded';


import DropDown from './components/drop-down';
import Form from './components/form';
import ProductMinitature from './components/product-miniature';
import ProductSelect from './components/product-select';
import TopMenu from './components/top-menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';
//import lazysizes from 'lazysizes'

import './lib/slick.min';
import './lib/bootstrap-filestyle.min';
import './lib/jquery.scrollbox.min';

import './components/block-cart';
//import './components/cartes-custom';
import SlickSlider from './components/slick';

import './responsive';
import './checkout';
import './customer';
import './listing';
import './product';
import './cart';
import './jPushMenu';
import './chosen.jquery.min';
import './jquery.fontselect';
import $ from "jquery";
import { gtmiChoosePrinter, gtmiChooseModel, gtmiChooseRuban, gtmiGetType } from './gtmi.ruban.js'

gtmiChoosePrinter()
gtmiChooseModel()
gtmiChooseRuban()
gtmiGetType()

// "inherit" EventEmitter
for (var i in EventEmitter.prototype) {
    prestashop[i] = EventEmitter.prototype[i];
}

function initPhTestimonials() {
    if (typeof testimonialsAutoPlay !== 'undefined' && testimonialsAutoPlay !== null) {
        setInterval(changeSlide, testimonialsAutoPlay);
    }
}

function changeSlide() {
    var currentSlide = $('.testimonials-carousel-item.active');
    var nextSlide = $('#slideTesti-' + currentSlide.data('next'));
    currentSlide.fadeOut('slow', function () {
        currentSlide.removeClass('active');
        nextSlide.addClass('active');
        nextSlide.fadeIn('slow');
    });
}

function nextPost() {
    var currentSlide = $('.post-slide.active');
    var nextSlide = $('#slidePost-' + currentSlide.data('next'));
    currentSlide.fadeOut('slow', function () {
        currentSlide.removeClass('active');
        nextSlide.addClass('active');
        nextSlide.fadeIn('slow');
    });

}

function prevPost() {
    var currentSlide = $('.post-slide.active');
    var nextSlide = $('#slidePost-' + currentSlide.data('prev'));
    currentSlide.fadeOut('slow', function () {
        currentSlide.removeClass('active');
        nextSlide.addClass('active');
        nextSlide.fadeIn('slow');
    });
}

var sliders = {};
$(document).ready(() => {
    let dropDownEl = $('.js-dropdown');
    const form = new Form();
    let topMenuEl = $('.js-top-menu ul[data-depth="0"]');
    let dropDown = new DropDown(dropDownEl);
    let topMenu = new TopMenu(topMenuEl);
    let productMinitature = new ProductMinitature();
    let productSelect = new ProductSelect();
    let slickSlider = new SlickSlider();
    dropDown.init();
    form.init();
    topMenu.init();
    productMinitature.init();
    productSelect.init();
    slickSlider.init();

    initPhTestimonials();

    $('#prevPost').click(prevPost);
    $('#nextPost').click(nextPost);


    $('#contactCartesPerso').submit(function (e) {
        e.preventDefault();
        e.stopPropagation();

        var url = $('#contactCartesPerso').attr('action');
        var method = $('#contactCartesPerso').attr('method');

        var message = "Demande de devis cartes imprimées\n\n" +
            'Nom : ' + $('#contactCartesPerso').find('#nom').val() + '\n' +
            'Prénom : ' + $('#contactCartesPerso').find('#prenom').val() + '\n' +
            'eMail : ' + $('#contactCartesPerso').find('#email').val() + '\n' +
            'Téléphone : ' + $('#contactCartesPerso').find('#telephone').val() + '\n' +
            "Message : \n" + $('#contactCartesPerso').find('#message').val();

        $('#contactCartesPerso').find('#message').val(message);

        var data = $('#contactCartesPerso').serialize() + '&submitMessage=true';


        $.ajax({
            type: method,
            url: url,
            data: data,
            success: function (data) {
                var previousText = $('#contactCartesPerso').find('#submitButton').val();
                $('#contactCartesPerso').find('#submitButton').addClass('sent').val('Demande envoyée ;-)');
                setTimeout(function () {
                    $('#contactCartesPerso').find('#submitButton').removeClass('sent').val(previousText);
                }, 10000);
            }
        })
    });

    var width = $(window).width();

    $(".toggle-menu").jPushMenu({ closeOnClickLink: false, closeOnClickOutside: false });

    //BTN UP
    var stickyTop = $('.btnUP').offset().top + 20;
    $(window).on('scroll', function () {
        if ($(window).scrollTop() >= stickyTop) {
            $('.btnUP').addClass('sticky').attr("href", "#header");
        } else {
            $('.btnUP').removeClass('sticky').removeAttr("href", "");;
        }
    });


    $('#tabsFeatured .nav-link').on('shown.bs.tab', function (e) {
        var $catFId = $(this).data('catid');
        if (sliders["featured" + $catFId] !== undefined) {
            sliders["featured" + $catFId].reloadSlider();
        }
    });

    $('#tabsBestDeals .nav-link').on('shown.bs.tab', function (e) {
        var $catFId = $(this).data('catid');
        if (sliders["bd" + $catFId] !== undefined) {
            sliders["bd" + $catFId].reloadSlider();
        }

    });

    function jqUpdateSizePage() { }
    jqUpdateSizePage();    // When the page first loads
    $(window).resize(jqUpdateSizePage);


    if ($('body').hasClass('page-contact')) {
        $('.contact-form form').submit((event) => {
            /* let subject = $('#subject').val(); */
            $('#message').val($('#message').val());
            gtag('event', 'conversion', { 'send_to': 'AW-1069635118/PHdICKzgxIgBEK6shf4D' })
            return true;
        });
    }

    function jsScrollTo() {
        $('.js-scrollTo').on('click', function () { // Au clic sur un élément
            var page = $(this).attr('href'); // Page cible
            var speed = 500; // Durée de l'animation (en ms)
            var position =  $(page).offset().top - 150;
            $('html, body').stop().animate({ scrollTop: position }, speed); // Go
            return false;
        });
    }
    jsScrollTo();

    $("#mainMenu .globomenu-submenu-align-full_width").wrapInner("<div class='wrapper'></div>");   

});


