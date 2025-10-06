{*
* 2007-2017 PrestaShop
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
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2017 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{extends file='../layout.tpl'}

{block name="content"}
  <div class="panel">
    <div class="panel-heading">
      {l s='Configure your Trustbadge®' mod='trustedshopsintegration'}
    </div>

    <form class="form-horizontal" method="POST">
      <div class="alert alert-info">
        {{l s='The Trustbadge is always displayed on the order confirmation page.[br]We recommend you display the [b]Trustbadge®[/b] on every page of your shop. Statistics show that trust and therefore conversion are reinforced if the [b]Trustbadge®[/b] is always displayed.' mod='trustedshopsintegration'}|totlreplace}
      </div>
      <div class="form-group clearfix">
        <label class="control-label col-lg-3">{l s='Display the Trustbadge® on all pages' mod='trustedshopsintegration'}</label>
        <div class="col-lg-9">
          {radio_slide name='display_trustbadge' value=$tsconfig->display_trustbadge|escape:'htmlall':'UTF-8' dataAttr='toggle="trustbadge"' on="{l s='Yes' mod='trustedshopsintegration'}" off="{l s='No' mod='trustedshopsintegration'}"}
        </div>
      </div>

      <div class="sub-form" data-trustbadge {if !$tsconfig->display_trustbadge}style="display: none;"{/if}>
        <div class="form-group clearfix emphasis">
          <label class="control-label col-lg-3">{l s='Use advanced configuration' mod='trustedshopsintegration'}</label>
          <div class="col-lg-9">
            {* @TODO missing input value *}
            {radio_slide name='trustbadge_advanced_configuration' value=($tsconfig->trustbadge_advanced_configuration == 1) dataAttr='toggle-advanced="trustbadge"' on="{l s='Yes' mod='trustedshopsintegration'}" off="{l s='No' mod='trustedshopsintegration'}"}
          </div>
        </div>

        <div data-trustbadge-advanced="off" {if $tsconfig->trustbadge_advanced_configuration == 1}style="display: none;"{/if}>
          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Display mode' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              <select name="variant" class="form-control fixed-width-lg">
                <option value="reviews"{if $tsconfig->variant == "reviews"} selected{/if}>{l s='With reviews stars' mod='trustedshopsintegration'}</option>
                <option value="default"{if $tsconfig->variant == "default"} selected{/if}>{l s='Without reviews stars' mod='trustedshopsintegration'}</option>
              </select>
            </div>
          </div>
          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Vertical offset' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              <input type="number" class="form-control fixed-width-lg" name="y_offset" value="{$tsconfig->y_offset|escape:'htmlall':'UTF-8'}" />
              <div class="help-block">
                {l s='Adjust the y-axis position of your Trustbadge up to 250px vertically from the lower right corner of your shop.' mod='trustedshopsintegration'}
              </div>
            </div>
          </div>
        </div>

        <div data-trustbadge-advanced="on" {if $tsconfig->trustbadge_advanced_configuration != 1}style="display: none;"{/if}>
          <div class="alert alert-warning">
            {{l s='You are in the advanced configuration mode. This option is for advanced users only.[br]It allows you to place your [b]Trustbadge® wherever you want[/b], by specifying a custom element ID.[br]You can also deactivate mobile use[/b].[br]Learn more about the Trustbadge® options [a]here[/a]. As a PrestaShop user you can skip step 1 and change the variables directly in the code box instead.' mod='trustedshopsintegration'}|totlreplace:['@href@' => {get_multilang_var varName='trustbadge-link'}]}
          </div>
          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Trustbadge® configuration code' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              <textarea name="trustbadge_code" class="form-control code-input">{$tsconfig->trustbadge_code|prettyJSON|escape:'htmlall':'UTF-8'}</textarea>
            </div>
          </div>
        </div>
      </div>

      <div class="panel-footer">
        <button type="submit" class="btn btn-default pull-right" name="trustbadge_save" value="submit"><i class="process-icon-save"></i> {l s='Save' mod='trustedshopsintegration'}</button>
        <button type="submit" class="btn btn-default pull-right" name="trustbadge_save_and_stay" value="submit"><i class="process-icon-save"></i> {l s='Save and stay' mod='trustedshopsintegration'}</button>
      </div>
    </form>
  </div>

  <div class="panel">
    <div class="panel-heading">
      {l s='Review Sticker' mod='trustedshopsintegration'}
    </div>
    <form method="POST" class="form-horizontal">
      <div class="alert alert-info">
        {{l s='The [b]Review Sticker[/b] displays user comments on your shop. Customize here the look and content of your Review Sticker. Together with the Trustbadge®, the Review Sticker increases trust in your shop and is therefore likely to boost conversions.' mod='trustedshopsintegration'}|totlreplace}
      </div>

      <div class="form-group clearfix">
        <label class="control-label col-lg-3">{l s='Display Shop Reviews Sticker' mod='trustedshopsintegration'}</label>
        <div class="col-lg-9">
          {radio_slide name='display_shop_reviews' value=$tsconfig->display_shop_reviews dataAttr='toggle="shopreviews"' on="{l s='Yes' mod='trustedshopsintegration'}" off="{l s='No' mod='trustedshopsintegration'}"}
        </div>
      </div>


      <div class="sub-form" data-shopreviews {if !$tsconfig->display_shop_reviews}style="display: none;"{/if}>
        <div class="form-group clearfix emphasis">
          <label class="control-label col-lg-3">{l s='Use advanced configuration' mod='trustedshopsintegration'}</label>
          <div class="col-lg-9">
            {* @TODO missing input value *}
            {radio_slide name='review_advanced_configuration' value=$tsconfig->review_advanced_configuration|escape:'htmlall':'UTF-8' dataAttr='toggle-advanced="shopreviews"' on="{l s='Yes' mod='trustedshopsintegration'}" off="{l s='No' mod='trustedshopsintegration'}"}
          </div>
        </div>

        <div data-shopreviews-advanced="off" {if $tsconfig->review_advanced_configuration == 1}style="display: none;"{/if}>
          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Font' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              {* @TODO wouldn't a php array be better ? What if we have 150 fonts ? *}
              <select name="review_sticker_font" class="form-control fixed-width-lg">
                <option value="Arial" {if $tsconfig->review_sticker_font == 'Arial'}selected{/if}>Arial</option>
                <option value="Geneva" {if $tsconfig->review_sticker_font == 'Geneva'}selected{/if}>Geneva</option>
                <option value="Georgia" {if $tsconfig->review_sticker_font == 'Georgia'}selected{/if}>Georgia</option>
                <option value="Helvetica" {if $tsconfig->review_sticker_font == 'Helvetica'}selected{/if}>Helvetica</option>
                <option value="Sans-serif" {if $tsconfig->review_sticker_font == 'Sans-serif'}selected{/if}>Sans-serif</option>
                <option value="Serif" {if $tsconfig->review_sticker_font == 'Serif'}selected{/if}>Serif</option>
                <option value="Trebuchet MS" {if $tsconfig->review_sticker_font == 'Trebuchet MS'}selected{/if}>Trebuchet MS</option>
                <option value="Verdana" {if $tsconfig->review_sticker_font == 'Verdana'}selected{/if}>Verdana</option>
              </select>
            </div>
          </div>

          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Number of reviews displayed' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              <select name="number_of_reviews" class="form-control fixed-width-lg">
                <option value="1" {if $tsconfig->number_of_reviews == 1}selected{/if}>{l s='Show only 1 review' mod='trustedshopsintegration'}</option>
                <option value="2" {if $tsconfig->number_of_reviews == 2}selected{/if}>{l s='Alternate between 2 reviews' mod='trustedshopsintegration'}</option>
                <option value="3" {if $tsconfig->number_of_reviews == 3}selected{/if}>{l s='Alternate between 3 reviews' mod='trustedshopsintegration'}</option>
                <option value="4" {if $tsconfig->number_of_reviews == 4}selected{/if}>{l s='Alternate between 4 reviews' mod='trustedshopsintegration'}</option>
                <option value="5" {if $tsconfig->number_of_reviews == 5}selected{/if}>{l s='Alternate between 5 reviews' mod='trustedshopsintegration'}</option>
              </select>
            </div>
          </div>

          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Minimum rating displayed' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              <input class="form-control fixed-width-lg" type="number" step="0.5" min="0" max="5" name="maximum_rating" value="{$tsconfig->maximum_rating|escape:'htmlall':'UTF-8'}" />
            </div>
          </div>

          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Background color' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              {input_color name='site_review_background_color' value={$tsconfig->site_review_background_color|escape:'htmlall':'UTF-8'}}
            </div>
          </div>
        </div>

        <div data-shopreviews-advanced="on"{if $tsconfig->review_advanced_configuration != 1} style="display: none;"{/if}>
          <div class="alert alert-warning">
            {{l s='You are in the advanced configuration mode. This option is for advanced users only.[br]It allows you to use a [b]custom font[/b], and more.[br]Learn more about the Review Sticker options [a]here[/a]. You may need to change your language to English.' mod='trustedshopsintegration'}|totlreplace:['@href@' => {get_multilang_var varName='review-sticker-link'}]}
          </div>

          <div class="form-group clearfix">
            <label class="control-label col-lg-3">{l s='Review Sticker configuration code' mod='trustedshopsintegration'}</label>
            <div class="col-lg-9">
              <textarea class="form-control code-input" name="site_review_configuration_code">{$tsconfig->site_review_configuration_code|prettyJSON|escape:'htmlall':'UTF-8'}</textarea>
            </div>
          </div>
        </div>
      </div>

      <div class="panel-footer">
        <button type="submit" class="btn btn-default pull-right" name="review_save" value="submit"><i class="process-icon-save"></i> {l s='Save' mod='trustedshopsintegration'}</button>
        <button type="submit" class="btn btn-default pull-right" name="review_save_and_stay" value="submit"><i class="process-icon-save"></i> {l s='Save and stay' mod='trustedshopsintegration'}</button>
      </div>
    </form>
  </div>
{/block}
