{**
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
 *}
{extends file='page.tpl'}

{block name='page_header_container'}
  <div class="headerTitle">
    <h1 class="h1 mainTitle">
      {l s="Contactez-nous"}
    </h1>
  </div>
{/block}



{block name='page_content_container'}
  <div class="container-fluid" id="blockContent">
    <div class="row wrapper p-0">
      <div id="left-column" class="col-xs-12 col-sm-12 col-md-3 blockCol">
        {widget name="ps_contactinfo" hook='displayLeftColumn'}
      </div>
      {block name='page_content'}
        {widget name="contactform"}
      {/block}
    </div>

    <div class="row">
      {literal}
        <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDkrD5yb_ZPy4zKiCT4bhRqgbPtZ_Rg2oM&v=3.exp'></script>

        <div id='gmap_canvas'></div>
        <style>
          #gmap_canvas img{max-width:none!important;background:none!important}
        </style>

        <script type='text/javascript'>
          function init_map(){var myOptions = {zoom:12,center:new google.maps.LatLng(43.455329,6.6840799999999945),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(43.455329,6.6840799999999945)});infowindow = new google.maps.InfoWindow({content:'<strong>Cardalis</strong><br>Puget sur Argens<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);
        </script>
      {/literal}
    </div>
  </div>
{/block}