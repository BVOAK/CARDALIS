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

{if $mustCustomize == true}

    <div class="product-variants" id="accordionVariants">
        {foreach from=$groups key=id_attribute_group item=group}
            {if $id_attribute_group == 6}
                <div class="clearfix product-variants-item" id="accordion1">
                    <a class="btn-link titleStepCustomization control-label" data-toggle="collapse" data-target="#group1"
                        aria-expanded="true" aria-controls="group1">1. {$group.name}</a>
                    {if $group.group_type == 'radio'}
                        <ul id="group1" class="collapse show group_{$id_attribute_group}" aria-labelledby="accordion1"
                            data-parent="#accordionVariants">
                            {foreach from=$group.attributes key=id_attribute item=group_attribute}

                                <li class="input-container pull-xs-left {if $group_attribute.selected}checked{/if}">
                                    <input class="input-radio" id="input{$id_attribute}" type="radio"
                                        data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]"
                                        value="{$id_attribute}" {if $group_attribute.selected} checked="checked" {/if}>
                                    <label for="input{$id_attribute}" class="radio-label">
                                        <img src="{$urls.img_url}attache{$id_attribute}.png" alt="Image produit variante"
                                            class="labelImg" />
                                        <span class="labelText">{$group_attribute.name}</span>
                                    </label>
                                </li>
                            {/foreach}
                        </ul>
                    {/if}
                </div>
            {/if}
            {if $id_attribute_group == 9 }
                <div class="clearfix product-variants-item" id="accordion2">
                    <a class="btn-link titleStepCustomization control-label" data-toggle="collapse" data-target="#group2"
                        aria-expanded="true" aria-controls="group2">2. {$group.name} (mm)</a>
                    {if $group.group_type == 'radio'}
                        <ul id="group2" class="collapse show group_{$id_attribute_group}" aria-labelledby="accordion2"
                            data-parent="#accordionVariants">
                            {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                <li class="input-container pull-xs-left {if $group_attribute.selected}checked{/if}">
                                    <input class="input-radio" id="input{$id_attribute}" type="radio"
                                        data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]"
                                        value="{$id_attribute}" {if $group_attribute.selected} checked="checked" {/if}>
                                    <label for="input{$id_attribute}" class="radio-label">
                                        <span class="labelText">{$group_attribute.name}</span>
                                    </label>
                                </li>
                            {/foreach}
                        </ul>
                    {/if}
                </div>
            {/if}
        {/foreach}

    </div>

{else}

    <div class="product-variants">
        {foreach from=$groups key=id_attribute_group item=group}
            {if $group.group_type == 'select'}
                <div class="clearfix product-variants-item">
                    <span class="control-label">{$group.name}</span>
                    <select id="group_{$id_attribute_group}" data-product-attribute="{$id_attribute_group}"
                        name="group[{$id_attribute_group}]">
                        {foreach from=$group.attributes key=id_attribute item=group_attribute}
                            <option value="{$id_attribute}" title="{$group_attribute.name}" {if $group_attribute.selected}
                                selected="selected" {/if}>{$group_attribute.name}</option>
                        {/foreach}
                    </select>
                </div>
            {elseif $group.group_type == 'radio'}
                {if $id_attribute_group != 6}
                    <div class="clearfix product-variants-item">
                        <div class="d-flex align-items-center">
                            <span class="control-label">{$group.name}</span>
                            {if $id_attribute_group == 15}
                                <button type="button" class="btn btn-tooltip-help btn-tooltip" data-toggle="popover" data-placement="top" data-content='{l s="Sélectionnez le mode de connexion pour relier l'imprimante à votre appareil"}'>?</button>
                            {else if $id_attribute_group == 14}
                                <button type="button" class="btn btn-tooltip-help btn-tooltip" data-toggle="popover" data-placement="top" data-content='{l s="Sélectionnez le mode d'encodage de vos cartes. Cochez \"sans\" si vous ne souhaitez pas encoder"}'>?</button>
                            {/if}    
                        </div>
                        <ul id="group_{$id_attribute_group}">
                            {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                <li class="input-container">
                                    <input class="input-radio" type="radio" data-product-attribute="{$id_attribute_group}"
                                        name="group[{$id_attribute_group}]" value="{$id_attribute}" {if $group_attribute.selected}
                                        checked="checked" {/if}>
                                    <span class="radio-label">{$group_attribute.name}</span>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                {/if}
            {elseif $group.group_type == 'color'}
                <div class="clearfix product-variants-item">
                    <span class="control-label">{$group.name}</span>
                    <ul id="group_{$id_attribute_group}" class="d-flex flex-wrap">
                        {foreach from=$group.attributes key=id_attribute item=group_attribute}
                            <li class="input-container input-color-container">
                                <input class="input-color btn-tooltip" type="radio" data-product-attribute="{$id_attribute_group}" data-toggle="popover" data-placement="top" data-content='{$group_attribute.name}'
                                    name="group[{$id_attribute_group}]" value="{$id_attribute}" {if $group_attribute.selected}
                                    checked="checked" {/if}>
                                <span {if $group_attribute.html_color_code}class="color"
                                    style="background-color: {$group_attribute.html_color_code}" {/if}
                                    {if $group_attribute.texture}class="color texture"
                                    style="background-image: url({$group_attribute.texture})" {/if}><span
                                        class="sr-only">{$group_attribute.name}</span></span>
                            </li>
                        {/foreach}
                    </ul>
                </div>
            {/if}
            {if $id_attribute_group == 6}
                <div class="clearfix product-variants-item" id="variantAttachLanyard">
                <span class="control-label">{$group.name}</span>
                    {if $group.group_type == 'radio'}
                        <ul id="group1" class="group_{$id_attribute_group} d-flex flex-wrap">
                            {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                <li class="input-container {if $group_attribute.selected}checked{/if}">
                                    <input class="input-radio" id="input{$id_attribute}" type="radio"
                                        data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]"
                                        value="{$id_attribute}" {if $group_attribute.selected} checked="checked" {/if}>
                                    <label for="input{$id_attribute}" class="radio-label">
                                        <img src="{$urls.img_url}attache{$id_attribute}.png" alt="Image produit variante"
                                            class="labelImg" />
                                        <span class="labelText">{$group_attribute.name}</span>
                                    </label>
                                </li>
                            {/foreach}
                        </ul>
                    {/if}
                </div>
            {/if}
        {/foreach}
    </div>

{/if}