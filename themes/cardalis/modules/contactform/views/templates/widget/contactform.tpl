{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

<section class="contact-form blockCol col-md-9">

    <div class="login-form">
        <form action="{$urls.pages.contact|escape:'htmlall':'UTF-8'}" method="post"
            {if $contact.allow_file_upload}enctype="multipart/form-data" {/if}>

            <header>
                <h1 class="h3">{l s='Send a message' d='Modules.Contactform.Shop'}</h1>
                <p>{l s='If you would like to add a comment about your order, please write it in the field below.' d='Modules.Contactform.Shop'}
                </p>
            </header>

            {if $notifications}
                <div class="w-100 alert {if $notifications.nw_error}alert-danger{else}alert-success{/if}">
                    <ul>
                        {foreach $notifications.messages as $notif}
                            <li class="w-100">{$notif}</li>
                        {/foreach}
                    </ul>
                </div>
            {/if}

            {if !$notifications || $notifications.nw_error}
                <section class="form-fields">

                    <div class="form-group row">
                        <label class="col-md-3 form-control-label">
                            <span>{l s='Subject Heading' d='Modules.Contactform.Shop'}</span>
                        </label>
                        <div class="col-md-6">
                            <select name="id_contact" id="subject" class="form-control">
                                {foreach from=$contact.contacts item=contact_elt}
                                    <option value="{$contact_elt.id_contact|escape:'htmlall':'UTF-8'}">{$contact_elt.name}
                                    </option>
                                {/foreach}
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 form-control-label">
                            <span>{l s='Société' d='Modules.Contactform.Shop'}</span>
                        </label>
                        <div class="col-md-6">
                            <input class="form-control" type="text" name="company" value="" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 form-control-label">
                            <span>{l s='Email address' d='Modules.Contactform.Shop'}</span>
                        </label>
                        <div class="col-md-6">
                            <input class="form-control" type="email" name="from"
                                value="{$contact.email|escape:'htmlall':'UTF-8'}" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 form-control-label">{l s='Téléphone' d='Shop.Forms.Labels'}</label>
                        <div class="col-md-6">
                            <input class="form-control" name="tel" type="text" value="">
                        </div>
                    </div>

                    {if $contact.orders}
                        <div class="form-group row">
                            <label class="col-md-3 form-control-label">
                                <span>{l s='Order reference' d='Modules.Contactform.Shop'}</span>
                            </label>
                            <div class="col-md-6">
                                <select name="id_order" class="form-control">
                                    <option value="">{l s='Select reference' d='Modules.Contactform.Shop'}</option>
                                    {foreach from=$contact.orders item=order}
                                        <option value="{$order.id_order|escape:'htmlall':'UTF-8'}">
                                            {$order.reference|escape:'htmlall':'UTF-8'}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                    {/if}

                    {if $contact.allow_file_upload}
                        <div class="form-group row">
                            <label class="col-md-3 form-control-label">{l s='Attachment' d='Shop.Forms.Labels'}</label>
                            <div class="col-md-6">
                                <input type="file" name="fileUpload" class="filestyle"
                                    data-buttonText="{l s='Parcourir...' d='Shop.Theme.Actions'}">
                            </div>
                            <span class="col-md-3 form-control-comment">
                                {l s='optional' d='Shop.Forms.Help'}
                            </span>
                        </div>
                    {/if}

                    <div class="form-group row">
                        <label class="col-md-3 form-control-label">{l s='Message' d='Shop.Forms.Labels'}</label>
                        <div class="col-md-9">
                            <textarea class="form-control" name="message" id="message"
                                placeholder="{l s='How can we help?' d='Shop.Forms.Help'}"
                                rows="3">{if $contact.message}{$contact.message|escape:'htmlall':'UTF-8'}{/if}</textarea>
                        </div>
                    </div>

                    {hook h='displayGDPRConsent' id_module=$id_module}

                    {hook h='displayPaCaptcha' posTo='contact'}
                </section>

                <footer class="form-footer">
                    <style>
                        input[name=url] {
                            display: none !important;
                        }
                    </style>
                    <input type="text" name="url" value="" />
                    <input type="hidden" name="token" value="{$token|escape:'htmlall':'UTF-8'}" />
                    <input type="hidden" id="recaptchaResponse" name="recaptcha-response">
                    <button type="submit" name="submitMessage" class="btn btn-primary">
                        {l s='Send' d='Modules.Contactform.Shop'}
                    </button>
                </footer>
            {/if}


        </form>
    </div>
</section>