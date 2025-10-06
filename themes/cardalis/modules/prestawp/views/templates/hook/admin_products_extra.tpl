{**
* NOTICE OF LICENSE
*
* This file is licenced under the Software License Agreement.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
* @author    Presta.Site
* @copyright 2017 Presta.Site
* @license   LICENSE.txt
*}
<div id="module_prestawp" class="{if $psv == 1.6}panel product-tab{/if} pswp{$psv*10|intval}">
    <input type="hidden" name="submitted_tabs[]" value="{$module_name|escape:'html':'UTF-8'}" />
    <input type="hidden" name="{$module_name|escape:'html':'UTF-8'}-submit" value="1" />

    {if $psv == 1.6}
        <h3>{l s='PrestaShop-WordPress' mod='prestawp'}</h3>
    {/if}
    <div class="row">
        <div class="col-lg-12 col-xl-12">
            <fieldset class="form-group">
                <label class="form-control-label"><b>{l s='Select posts to display:' mod='prestawp'}</b></label>
                <div class="row form-group {if $psv == 1.5}margin-form wp-content-ps15{/if}">
                    <div class="col-md-4 {if $psv == 1.5}wpc-col-15{/if}">
                        <label for="wp_categories{if $wp_input.id_item}{$wp_input.id_item|intval}{/if}">{l s='WordPress categories' mod='prestawp'}</label>
                        <select name="{if isset($wp_input.wp_categories_name) && $wp_input.wp_categories_name}{$wp_input.wp_categories_name|escape:'html':'UTF-8'}[]{else}wp_categories[]{/if}"
                                id="wp_categories{if $wp_input.id_item}{$wp_input.id_item|intval}{/if}"
                                class="{if isset($wp_input.class)}{$wp_input.class|escape:'html':'utf-8'}{/if} wp_categories_input"
                                multiple
                                size="10">
                            {foreach from=$wp_input.wp_category_options item="option"}
                                <option value="{$option.id_option|escape:'html':'UTF-8'}"
                                        {if $option.selected || (isset($wp_input.wp_categories_name) && isset($fields_value[$wp_input.wp_categories_name]) && in_array($option.id_option, $fields_value[$wp_input.wp_categories_name])|escape:'html':'UTF-8')}selected{/if}>
                                    {$option.name|escape:'html':'UTF-8'}
                                </option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="col-md-4 {if $psv == 1.5}wpc-col-15{/if}">
                        <label for="wp_posts{if $wp_input.id_item}{$wp_input.id_item|intval}{/if}">{l s='WordPress posts' mod='prestawp'}</label>
                        <select name="{if isset($wp_input.wp_posts_name) && $wp_input.wp_posts_name}{$wp_input.wp_posts_name|escape:'html':'UTF-8'}[]{else}wp_posts[]{/if}"
                                id="wp_posts{if $wp_input.id_item}{$wp_input.id_item|intval}{/if}"
                                class="{if isset($wp_input.class)}{$wp_input.class|escape:'html':'utf-8'}{/if} wp_posts_input"
                                multiple
                                size="10">
                            {foreach from=$wp_input.wp_post_options item="option"}
                                <option value="{$option.id_option|escape:'html':'UTF-8'}"
                                        {if $option.selected || (isset($wp_input.wp_posts_name) && isset($fields_value[$wp_input.wp_posts_name]) && in_array($option.id_option, $fields_value[$wp_input.wp_posts_name])|escape:'html':'UTF-8')}selected{/if}>
                                    {$option.name|escape:'html':'UTF-8'}
                                </option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="col-md-12">
                        <a href="#" id="pswp-product-unselect">{l s='Unselect all' mod='prestawp'}</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

    {if $psv == 1.6}
        <div class="panel-footer">
            <a href="{$link->getAdminLink('AdminProducts')|escape:'html':'UTF-8'}" class="btn btn-default"><i class="process-icon-cancel"></i> {l s='Cancel' mod='prestawp'}</a>
            <button type="submit" name="submitAddproduct" class="btn btn-default pull-right"><i class="process-icon-save"></i> {l s='Save' mod='prestawp'}</button>
            <button type="submit" name="submitAddproductAndStay" class="btn btn-default pull-right"><i class="process-icon-save"></i> {l s='Save and stay' mod='prestawp'}</button>
        </div>
    {/if}
</div>
