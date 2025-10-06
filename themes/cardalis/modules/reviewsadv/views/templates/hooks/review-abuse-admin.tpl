{*
/**
 * mitrocops
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the EULA
 * that is bundled with this package in the file LICENSE.txt.
 *
 /*
 * 
 * @author    mitrocops
 * @category content_management
 * @package reviewsadv
 * @copyright Copyright mitrocops
 * @license   mitrocops
 */

*}

{if $reviewsadvis_abuse == 0}
<div id="add-review-form-review" class="popup-form font-family-custom">


    <div class="title-rev">
        <div class="title-form-text-left">
            <b class="title-form-custom">{l s='Review' mod='reviewsadv'}</b>:

        </div>

        <div class="clear-reviewsadv"></div>
    </div>

    <div id="body-add-review-form-review" class="text-align-left">
        <span class="label-span">{l s='Review URL' mod='reviewsadv'}:</span>
        <span class="badge">
            <a href="{$reviewsadvabuserev.review_url|escape:'htmlall':'UTF-8'}" target="_blank">{$reviewsadvabuserev.review_url|escape:'htmlall':'UTF-8'}</a>
        </span>
        <div class="clear-reviewsadv"></div>

        {if strlen($reviewsadvabuserev.title_review)>0}
        <label for="subject-review" >{l s='Title' mod='reviewsadv'}:</label>
        <input disabled class="form-control disabled-values" id="disabledInput" type="text" value="{$reviewsadvabuserev.title_review|escape:'htmlall':'UTF-8' nofilter}"  />
        {/if}

        {if strlen($reviewsadvabuserev.text_review)>0}
        <label for="text-review" >{l s='Text' mod='reviewsadv'}:</label>
        <textarea disabled class="form-control disabled-values" id="disabledInput" cols="42" rows="7">{$reviewsadvabuserev.text_review|escape:'htmlall':'UTF-8' nofilter}</textarea>
        {/if}
    </div>

    <div class="title-rev">
        <div class="title-form-text-left">
            <b class="title-form-custom">{l s='Abuse' mod='reviewsadv'}:</b>
        </div>

        <div class="clear-reviewsadv"></div>
    </div>
    <div id="body-add-review-form-review" class="text-align-left">

    {if $reviewsadvabuserev.is_customer == 0}
            <label for="name-abuse" >{l s='Guest Name' mod='reviewsadv'}:</label>
            <input type="text" name="name-abuse" id="name-abuse" class="form-control disabled-values" disabled value="{$reviewsadvabuserev.abuse_name|escape:'htmlall':'UTF-8'}" />

            <label for="email-abuse" >{l s='Guest Email' mod='reviewsadv'}:</label>
            <input type="text" name="email-abuse" id="email-abuse" class="form-control disabled-values" disabled  value="{$reviewsadvabuserev.email|escape:'htmlall':'UTF-8'}" />
    {else}
        <span>{l s='Customer' mod='reviewsadv'}:</span>
        <span class="badge">
            <a href="{$reviewsadvabuserev.url_to_customer|escape:'htmlall':'UTF-8' nofilter}" target="_blank">{$reviewsadvabuserev.customer_name|escape:'htmlall':'UTF-8'}</a>
        </span>
        <div class="clear-reviewsadv"></div>
    {/if}

        <label for="text-abuse" >{l s='Abuse text' mod='reviewsadv'}:</label>
        <textarea id="text-abuse" name="text-abuse" cols="42" rows="7" class="form-control disabled-values" disabled>{$reviewsadvabuserev.text_abuse|escape:'htmlall':'UTF-8' nofilter}</textarea>



    </div>
    <div id="footer-add-review-form-review">
        <button onclick="update_abuse()"  value="{l s='Set review is not abusive' mod='reviewsadv'}" class="btn btn-success">{l s='Set review is not abusive' mod='reviewsadv'}</button>
    </div>


    </div>

{literal}
<script type="text/javascript">


    function update_abuse(){
            var id_review = {/literal}{$reviewsadvabuserev.id_review|escape:'htmlall':'UTF-8'}{literal};

            $('#abuseitem'+id_review).html('<img src="../img/admin/../../modules/reviewsadv/views/img/loader.gif"  alt="Logo loader avis" />');


            $.post('../modules/reviewsadv/reviews_admin.php',
                    {action:'status-abuse',
                    review_id:{/literal}{$reviewsadvreview_id|escape:'htmlall':'UTF-8'}{literal},

                    },
                    function (data) {

                        if (data.status == 'success') {

                            $('#abuseitem'+id_review).html('');
                            var html = '<span class="label-tooltip" data-original-title="{/literal}{$reviewsadvraad_msg1|escape:'htmlall':'UTF-8'}{literal}" data-toggle="tooltip">'+
                            '<img src="../img/admin/../../modules/reviewsadv/views/img/ok.gif" alt="Logo avis" />'+
                                    '</span>';
                            $('#abuseitem'+id_review).html(html);

                             $('#fb-con-wrapper-admin').remove();
                             $('#fb-con').remove();



                        } else {

                            alert(data.message);

                        }
                    }, 'json');

        }


</script>
{/literal}


{else}
    <div>
        <div class="alert alert-warning form-warning">
            <p class="text-center">{l s='You cannot change status for this abuse because somebody has already changed status' mod='reviewsadv'}</p>
        </div>
    </div>

{/if}