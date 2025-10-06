{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div class="contact-rich">
  <h4>{l s='Informations' d='Shop.Theme'}</h4>
  <div class="block">
    <div class="icon"><i class="material-icons">&#xE55F;</i></div>
    <div class="data">{$contact_infos.address.formatted nofilter}</div>
  </div>
  {if $contact_infos.phone}
    <hr/>
    <div class="block">
      <div class="icon"><i class="material-icons">&#xE0CD;</i></div>
      <div class="data">
        <strong>{l s='Call us:' d='Shop.Theme'}</strong><br/>
        <a href="tel:{$contact_infos.phone}">{$contact_infos.phone}</a> <i>(de France)</i><br />
        <a href="tel:0033422140086">+33 422 140 086</a> <i>(de l'étanger)</i>
       </div>
    </div>
  {/if}
  {if $contact_infos.fax}
    <hr/>
    <div class="block">
      <div class="icon"><i class="material-icons">&#xE0DF;</i></div>
      <div class="data">
        <strong>{l s='Fax:' d='Shop.Theme'}</strong><br/>
        {$contact_infos.fax} <i>(de France)</i><br />
        +33 422 140 121</a> <i>(de l'étanger)</i>
      </div>
    </div>
  {/if}
  {if $contact_infos.email}
    <hr/>
    <div class="block">
      <div class="icon"><i class="material-icons">&#xE158;</i></div>
      <div class="data email">
        <strong>{l s='Email us:' d='Shop.Theme'}</strong><br/>
       </div>
       <a href="mailto:{$contact_infos.email}">{$contact_infos.email}</a>
    </div>
  {/if}
  <hr/>
    <div class="block">
      <div class="icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
      <div class="data email">
        <strong>{l s='Horaires d\'ouverture:' d='Shop.Theme'}</strong><br/>
        {l s='Du lundi au vendredi' d='Shop.Theme'}<br/>
        {l s='de 9h à 12h30 et 14h à 17h30' d='Shop.Theme'}<br/>
       </div>
    </div>
</div>
