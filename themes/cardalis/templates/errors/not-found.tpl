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

{block name='content_search'}
  <div class="p-0 pt-5 pb-5 wrapper">
    <p>Si vous le souhaitez, un conseiller client est à votre disposition pour répondre à toutes vos questions
      au 04 22 14 00 86 ou par email contact@cardalis.fr ou par notre chat d’assistance en direct en bas à droite de
      votre écran,
      du lundi au vendredi de 9h00 à 12h30 puis de 14h00 à 17h30.</p>
    <p class="cBlue text-uppercase"><strong>{l s='Search again what you are looking for' d='Shop.Theme'}</strong></p>
    {block name='search'}
      {hook h='displaySearch'}
    {/block}

    {hook h='displayNotFound'}
  </div>
{/block}