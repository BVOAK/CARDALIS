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

<section class="product-customization" id="accordion4">
  {if $mustCustomize == true}

    <div id="blockElementsGraphiques" class="product-customization">
        <a class="btn-link titleStepCustomization control-label" data-toggle="collapse" data-target="#group4" aria-expanded="true" aria-controls="group4">3. {l s='Choix des éléments graphiques' d='Shop.Theme.Catalog'}</a>
        <div id="group4" class="collapse show group_" aria-labelledby="headingOne" data-parent="#accordion4">
          <div class="blockBG">
            <span class="labelInput">{l s='Choisissez votre fond' d='Shop.Theme.Catalog'}</span>
            <div class="product-customization-item colorPickerItem">
              <div class="blockInputsColor">
                <div class="blockColorpicker">
                  <input type="text" class="product-message" id="colorpicker-bgcolor" name="colorpicker-bgcolor" placeholder="{$customizations.fields[0].label}">
                </div>
                <span>ou</span>
                <input type="text" class="product-message" id="colorpicker-bgcolor-pantone" name="{$customizations.fields[0].input_name}" placeholder="Pantone ou CMJN">
              </div>
              <div data-toggle="popover" class="tooltipButton" data-placement="right" data-content="Utilisez l’outil à gauche pour choisir votre couleur de fond. Si vous le connaissez déjà vous
Pouvez le saisir dans la case à droite.  Si vous avez plus d’éléments à nous adresser vous pouvez le faire par mail à contact@cardalis.fr.">?</div>
            </div>
          </div>
          <div class="blockText">
            <span class="labelInput">{l s='Choisissez votre texte' d='Shop.Theme.Catalog'}</span>
            <div class="product-customization-item colorPickerItem">
              <div class="blockInputsColor">
                <div class="blockColorpicker">
                  <input type="text" class="product-message" id="colorpicker-textcolor" name="colorpicker-textcolor" placeholder="{$customizations.fields[1].label}">
                </div>
                <span>ou</span>
                <input type="text" class="product-message" id="colorpicker-textcolor-pantone" name="{$customizations.fields[1].input_name}" placeholder="Pantone ou CMJN">
              </div>
              <div data-toggle="popover" class="tooltipButton" data-placement="right" data-content="Utilisez l’outil à gauche pour choisir votre couleur du texte ou saisir le directement dans la casse à droite.  N’hésitez pas à nous adresser un mail (contact@cardalis.fr) si vous avez d’autres éléments à nous communiquer)">?</div>
            </div>
            <div class="product-customization-item fontPickerItem">
              <input type="text" class="product-message" id="fontpicker" name="{$customizations.fields[2].input_name}" placeholder="{$customizations.fields[2].label}">
              <div data-toggle="popover" class="tooltipButton" data-placement="right" data-content="Si vous souhaitez imprimer du texte, choisissez la police ici.  Si vous ne trouvez pas la police vous pouvez nous le communiquer avec la case commentaire en bas.">?</div>
            </div>
            <div class="product-customization-item fontValueItem">
              <input type="text" class="product-message" id="fontValue" name="{$customizations.fields[3].input_name}" placeholder="{$customizations.fields[3].label}">
              <div data-toggle="popover" class="tooltipButton" data-placement="right" data-content="Si vous souhaitez imprimer du texte, saisissez le ici.">?</div>
            </div>
          </div>
          <div class="blockFile">
            <div class="product-customization-item">
              <label class="labelInput"> {$customizations.fields[4].label}</label>
              <br>
                {if $customizations.fields[4].is_customized}
                  {if $customizations.fields[4].image.medium.url|substr:-3 == 'pdf' ||  $customizations.fields[4].image.medium.url|substr:-3 == ".ai"}
                     <a href="{$customizations.fields[4].image.medium.url}" target="_blank">Lien du fichier</a>
                  {else}
                    <img id="logoFileImg" src="{$customizations.fields[4].image.small.url}">
                  {/if}
                  <a class="remove-image" href="{$customizations.fields[4].remove_image_url}" rel="nofollow">{l s='Remove Image' d='Shop.Theme.Actions'}</a>
                {/if}
              <div class="product-customization-item custom-file">
                <span  id="logoFileName" class="js-file-name">{if $customizations.fields[4].image.medium.url}{$customizations.fields[4].image.medium.url|basename}{else}{l s='No selected file' d='Shop.Forms.Help'}{/if}</span>
                <input class="product-message file-input js-file-input" id="logoFile" {if $customizations.fields[4].required} required {/if} type="file" name="{$customizations.fields[4].input_name}">
              </div>
              <div data-toggle="popover" class="tooltipButton" data-placement="right" data-content="Si vous souhaitez imprimer un logo ou graphique sur le cordon téléchargez la ici.  Vous pouvez télécharger 1 seule fichier.  Si vous en avez plus merci de nous adresser un mail.">?</div>
             
            </div>
          </div>
          
          <div class="blockComment">
            <span class="labelInput">{l s='Laissez votre commentaire' d='Shop.Theme.Catalog'}</span>
            <div class="product-customization-item commentItem">
              <textarea type="file" class="product-message" id="comment" name="{$customizations.fields[5].input_name}"  placeholder="{$customizations.fields[5].label}"></textarea>
              <div data-toggle="popover" class="tooltipButton" data-placement="right" data-content="Ici vous pouvez nous communiquer tout ce que vous estimez utile.  Si vous souhaitez un appel écrivez le avec votre numéro de téléphone.   Sachez que nous procédons par un BAT pour validation. Aucune production est lancée sans votre validation.">?</div>
            </div>
          </div>   
          <!--
          <div class="clearfix">
            <button style="display:none;" class="btn btn-primary pull-xs-right" type="submit" id="btnCustom" name="submitCustomizedData">{l s='Save Customization' d='Shop.Theme.Actions'}</button>
          </div>
          -->
        </div>
      </div>

  {else}

   {if !$configuration.is_catalog}
      <div class="card card-block">
        <h3 class="h4 card-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h3>
        {l s='Don\'t forget to save your customization to be able to add to cart' d='Shop.Forms.Help'}
        <form method="post" action="{$product.url}" enctype="multipart/form-data">
          <ul class="clearfix">
            {foreach from=$customizations.fields item="field"}
              <li class="product-customization-item">
                <label> {$field.label}</label>
                {if $field.type == 'text'}
                  <label>{$field.text}</label>
                  <input type="text" placeholder="{l s='Your message here' d='Shop.Forms.Help'}" class="product-message" {if $field.required} required {/if} name="{$field.input_name}" value="{$field[0].text}">
                  <small class="pull-xs-right">{l s='250 char. max' d='Shop.Forms.Help'}</small>
                {elseif $field.type == 'image'}
                  {if $field.is_customized}
                   &nbsp;
                    {if $field.image.medium.url|substr:-3 == 'pdf' || $field.image.medium.url|substr:-3  =='.ai'}
                      <a href="{$field.image.medium.url}" target="_blank">&nbsp;Lien du fichier</a>
                    {else}
                      <br>
                      <img src="{$field.image.small.url}">
                      <a class="remove-image" href="{$field.remove_image_url}" rel="nofollow">{l s='Remove Image' d='Shop.Theme.Actions'}</a>
                    {/if}
                  {/if}
                  <span class="custom-file">
                  <span class="js-file-name">{l s='No selected file' d='Shop.Forms.Help'}</span>
                  <input class="file-input js-file-input" {if $field.required} required {/if} type="file" name="{$field.input_name}">
                  <button class="btn btn-primary">{l s='Choose file' d='Shop.Theme.Actions'}</button>
                </span>
                  <small class="pull-xs-right">{l s='.png .jpg .gif' d='Shop.Forms.Help'}</small>
                {/if}
              </li>
            {/foreach}
          </ul>
          <div class="clearfix">
            <button class="btn btn-primary pull-xs-right" type="submit" name="submitCustomizedData">{l s='Save Customization' d='Shop.Theme.Actions'}</button>
          </div>
        </form>
      </div>
    {/if}

  {/if}

</section>