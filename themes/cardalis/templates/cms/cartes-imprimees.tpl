{**
 * 2007-2017 PrestaShop
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
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}


<div id="pageCartesImprimees">

    <section class="container" id="blockDescription">
        <div class="row">
            <div class="wrapper">

                <nav class="breadcrumb hidden-sm-down container">
                    <div class="row">
                        <ol class="wrapper">
                            <li>
                                <a href="{$link->getCategoryLink(137)|escape:'html':'UTF-8'}">
                                    <span itemprop="name">{l s="Cartes et badges"}</span>
                                </a>
                            </li>
                            <li>
                                <span>{l s="Cartes imprimées à vos couleurs"}</span>
                            </li>
                        </ol>
                    </div>
                </nav>

                <div class="col-xl-6 col-lg-7 col-md-8" id="blockText">
                    <h1 class="title">
                        {$blockCartesImprimeesVosCouleurs->meta_title}
                    </h1>
                    <div class="description">
                        {$blockCartesImprimeesVosCouleurs->content nofilter}
                    </div>
                    {*<a href="#blockFormDemande" class="btAnchorCalcul js-scrollTo">{l s="Je calcule mon prix"}</a>*}
                </div>
                {*<div class="col-xl-6 col-lg-5 col-md-4" id="blockBtAnchor">*}
                    {*<a href="#blockFormDemande" class="btAnchorCalcul">{l s="Je calcule mon prix"}</a>*}
                {*</div>*}
            </div>
            <div id="blockImg" class="hidden-sm-down">
                <img src="{$urls.img_url}imgCartesImprimees01.png" alt="Image cartes imprimées" />
            </div>
        </div>
    </section>

    <section class="container" id="blockOptionsTarifs">
        <div class="row">
            <div class="wrapper">
                {$blockEpaisseursTechnologies->content nofilter}
            </div>
        </div>
    </section>

    <section class="container" id="sectionCommandeLivraison">
        <div class="row">
            <div class="wrapper">
                <p class="title">
                    {$blockCommandeLivraison->meta_title}
                </p>
                {$blockCommandeLivraison->content nofilter}
            </div>
        </div>
    </section>

    {*<section class="container" id="blockFormDemande">*}
        {*<div class="row">*}
            {*<div class="wrapper">*}
                {*<p class="title">*}
                    {*{l s="CONFIGURATEUR DE PRIX - CARTES IMPRIMEES"}*}
                {*</p>*}

                {*{literal}*}

                {*<div id="app-cartescustom" class="row">*}

                {*<div class="col-8 formwizard">*}
                    {*<!--FORM-->*}
                  {*<form-wizard  shape="square" color='#0769A7' error-color="#C1272D"*}
                     {*back-button-text="Précédent"*}
                     {*next-button-text="Suivant">*}
                     {*<div slot="title" class="wizard-header"><h4 class="wizard-title">{/literal}{l s="Je calcule mon prix"}{literal}</h4> <p class="category">{/literal}{l s="En 2 étapes"}{literal}</p></div>*}
                     {**}
                   {*<tab-content title="Technologie">*}
                        {*<div class="form-group">*}
                        {*<div>*}
                            {*<label for="puce"><h4 class="wizard-title">{/literal}{l s="Mes cartes sont sans contact (RFID)"}{literal}</h4></label>*}
                        {*</div>*}
                            {*<div class="form-check form-check-inline">*}
                                {*<span class="custom-radio">*}
                                    {*<input class="form-check-input" type="radio" v-model="puce" id="inlineRadio1" v-bind:value="false">*}
                                    {*<span></span>*}
                                {*</span>*}
                                {*<label class="form-check-label" for="inlineRadio1">Non</label>*}
                            {*</div>*}
                            {*<div class="form-check form-check-inline">*}
                                {*<span class="custom-radio">*}
                                    {*<input class="form-check-input" type="radio" v-model="puce" id="inlineRadio2" v-bind:value="true">*}
                                    {*<span></span>*}
                                {*</span>*}
                                {*<label class="form-check-label" for="inlineRadio2">Oui</label>*}
                            {*</div>*}
                        {*</div>*}

                        {*<div v-if="puce" class="form-group">*}
                            {*<label for="puce"><h4 class="wizard-title">{/literal}{l s="Mes cartes doivent contenir une puce :"}{literal}</h4></label><br>*}
                                {*<select v-model="puceTypeSelected" class="form-control" >*}
                                    {*<option v-for="value in puceTypes" :value="value.id" >*}
                                        {*{{value.name}}*}
                                    {*</option>*}
                                {*</select>*}
                        {*</div>*}

                          {*<div>*}
                            {**}
                           {**}
                        {*</div>*}
                    {*</tab-content>*}
                    {*<tab-content title="Options" :after-change="onOptionsDisplayed">*}
                        {*<div class="form-group">*}
                            {*<div>*}
                                {*<div class="row">*}
                                    {*<div class="col">*}
                                    {*<h4 class="wizard-title">{/literal}{l s="Options"}{literal}</h4>*}
                                        {*<div>*}
                                            {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="perso" v-model="perso">*}
                                                {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                            {*</span>*}
                                            {*<label for="perso">{/literal}{l s="Personnalisation"}{literal}</label>*}
                                        {*</div>*}
                                        {*<div>*}
                                            {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="ecriture" v-model="ecriture">*}
                                                {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                            {*</span>*}
                                            {*<label for="ecriture">{/literal}{l s="Pavé d'écriture"}{literal}</label>*}
                                        {*</div>*}
                                         {*<div>*}
                                            {*<label>{/literal}{l s="Bande magnétique"}{literal}</label><br>*}
                                            {*<div class="form-check form-check-inline">*}
                                                {*<span class="custom-radio">*}
                                                    {*<input class="form-check-input" type="radio" v-model="magstripe" id="magstripe1" value="no">*}
                                                    {*<span></span>*}
                                                {*</span>*}
                                                {*<label class="form-check-label" for="magstripe1">Non</label>*}
                                            {*</div>*}
                                            {*<div class="form-check form-check-inline">*}
                                                {*<span class="custom-radio">*}
                                                    {*<input class="form-check-input" type="radio" v-model="magstripe" id="magstripe2" value="up">*}
                                                    {*<span></span>*}
                                                {*</span>*}
                                                {*<label class="form-check-label" for="magstripe2">Oui</label>*}
                                            {*</div>*}
                                            {**}
                                        {*</div>*}
                                         {*<div>*}
                                            {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="perforation" v-model="perforation">*}
                                                {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                            {*</span>*}
                                            {*<label for="perforation">{/literal}{l s="Perforation"}{literal}</label>*}
                                        {*</div>*}
                                         {*<div>*}
                                             {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="overlay" v-model="overlay">*}
                                                 {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                             {*</span>*}
                                            {*<label for="overlay">{/literal}{l s="Pose Overlay"}{literal}</label>*}
                                        {*</div>*}
                                    {*</div>*}
                                    {*<div v-if="puce" class="col">*}
                                        {*<h4 class="wizard-title">{/literal}{l s="Options RFID"}{literal}</h4>*}
                                        {*<div>*}
                                            {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="printuid" v-model="printuid">*}
                                                {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                            {*</span>*}
                                            {*<label for="printuid">{/literal}{l s="Print/Lecture UID"}{literal}</label>*}
                                        {*</div>*}
                                        {*<div>*}
                                            {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="encoding" v-model="encoding">*}
                                                {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                            {*</span>*}
                                            {*<label for="encoding">{/literal}{l s="Encodage Puce"}{literal}</label>*}
                                        {*</div>*}
                                    {*</div>*}
                                     {*<div v-else class="col">*}
                                        {*<h4 class="wizard-title">{/literal}{l s="Autres options"}{literal}</h4>*}
                                        {*<div>*}
                                            {*<span class="custom-checkbox">*}
                                                {*<input type="checkbox" id="metal" v-model="metal">*}
                                                {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                            {*</span>*}
                                            {*<label for="metal">{/literal}{l s="Couleur métalique"}{literal}</label>*}
                                        {*</div>*}
                                    {*</div>*}
                                {**}
                                {*</div>*}
                               {**}
                            {*</div>*}
                            {**}
                        {*</div>*}

                    {*</tab-content>*}

                     {*<vue-slider v-if="puce" ref="slider2" v-model="qte" class="slider" v-bind="qteOptionsRfid"></vue-slider>*}
                            {*<vue-slider v-if="!puce" ref="slider" class="slider" v-model="qte" v-bind="qteOptionsRegular"></vue-slider>*}

                      {*<template slot="footer" slot-scope="props">*}
                          {*<div class=wizard-footer-left>*}
                              {*<wizard-button  v-if="props.activeTabIndex > 0 " @click.native="props.prevTab()" class="btn btn-primary">{/literal}{l s="Précédent"}{literal}</wizard-button>*}
                          {*</div>*}
                          {*<div class="wizard-footer-right">*}
                              {*<wizard-button v-if="!props.isLastStep"@click.native="props.nextTab()" class="btn btn-primary">{/literal}{l s="Suivant"}{literal}</wizard-button>*}
                          {*</div>*}
                      {*</template>*}
                    {*</form-wizard>*}
                    {*<!--FIN FORM-->*}
                {*</div>*}


                {*<div class="col-3 blockTotal">*}


                            {*<div class="total"><p>{/literal}{l s="Votre estimation de prix"}{literal}</p><span class="total_">{{total}} € HT</span></div>*}




                            {*<div class="sendme" v-if="emailShow"> <!-- v-if="emailShow" -->*}
                            {*{/literal}*}
                                {*<form action="{$urls.pages.contact}" v-on:submit.prevent="send" id="contactCartesPerso" ref="form" method="post" {if $contact.allow_file_upload}enctype="multipart/form-data"{/if} class="contact-form"> {literal}*}
                                {*<p>{/literal}{l s="Envoyez-moi un mail récapitulatif à:"}{literal}</p>*}
                                {*<div><input type='email' class="form-control" placeholder="example@domain.com" v-model="email"> </div>*}
                                {*<div>*}
                                    {*<span class="custom-checkbox">*}
                                        {*<input type="checkbox" id="contactback" v-model="contactback">*}
                                        {*<span><i class="material-icons checkbox-checked"></i></span>*}
                                    {*</span>*}
                                    {*<label for="contactback">{/literal}{l s="Je souhaite être contacté"}{literal}</label>*}


                                {*</div>*}
                                {*<div v-if="contactback">{/literal}{l s="Mon téléphone : "}{literal} <input type="text" id="numtel" v-model="numtel" class="form-control"> </div>*}
                                {*<input type="hidden" id="id_contact" name="id_contact" value="3"/>*}
                                {*<input type="hidden" id="message" name="message" value=""/>*}
                                {*<input type="hidden" id="cards" name="cards" value="true"/>*}
                                {*<input type="hidden" id="from" name="from" v-model="email"/>*}
                                {*<input type="hidden" id="callback" name="callback" v-model="contactback"/>*}
                                {*<div> {/literal}{if isset($HOOK_CONTACT_FORM_BOTTOM)}{$HOOK_CONTACT_FORM_BOTTOM nofilter}{/if}{literal}</div>*}
                                {*<div>  {/literal} <input class="btn btn-primary" type="submit" name="submitMessage" id="submitButton" value="{l s='Send' d='Shop.Theme.Actions'}"> {literal} </div>*}
                                {**}
                                {*</form>*}

                        {*</div>*}

                {*</div>*}
               {**}


            {*</div>*}
            {*<div class="row">*}
                {*<div class="col mentions">*}
                    {*{/literal}*}

                    {*{l s='* Carte PVC épaisseur 0,76mm format 86x54mm (carte bancaire), ou épaiseur 0,84mm pour une carte avec RFID sans contact.'}<br/>*}
                    {*{l s='Impression par offset recto ou recto verso. L\'option métalique est en sérigraphie.'}<br/>*}
                    {*{l s="Pour d'autres options, formats et épaisseurs, <a href='/nous-contacter'>contactez-nous!</a>."}<br/>*}
                    {*{l s="Attention: le configurateur de prix à pour objectif de vous fournir une approximation du prix. Ceci n'est pas un devis. Pour obtenir un devis nous vous invitons à nous contacter."}<br/>*}
                {*</div>*}
            {*</div>*}

        {*</div>*}
    {*</section>*}


</div>