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

<div id="add-review-form-review" class="popup-form font-family-custom">


    <div class="title-rev">
        <div class="title-form-text-left">
            <b class="title-form-custom">{l s='Review' mod='reviewsadv'}:</b>

        </div>

        <div class="clear-reviewsadv"></div>
    </div>

    <div id="body-add-review-form-review" class="text-align-left">
        <span class="label-span">{l s='Review URL' mod='reviewsadv'}:</span>

        <span class="badge">
            <a href="{$reviewsadvdatareview.review_url|escape:'htmlall':'UTF-8'}" target="_blank">{$reviewsadvdatareview.review_url|escape:'htmlall':'UTF-8'}</a>
        </span>
        <div class="clear-reviewsadv"></div>

        <span class="label-span">{l s='Review Language' mod='reviewsadv'}:</span>

        <span class="badge">
            {$reviewsadvdatareview.name_lang|escape:'htmlall':'UTF-8'}
        </span>
        <div class="clear-reviewsadv"></div>


        {if $reviewsadvdatareview.id_customer == 0}

            <label for="name-abuse" >{l s='Guest Name' mod='reviewsadv'}:</label>
            <input type="text" name="name-abuse" id="name-abuse" class="form-control disabled-values" disabled value="{$reviewsadvdatareview.customer_name|escape:'htmlall':'UTF-8'}" />
        {if $reviewsadvdatareview.email}
            <label for="email-abuse" >{l s='Guest Email' mod='reviewsadv'}:</label>
            <input type="text" name="email-abuse" id="email-abuse" class="form-control disabled-values" disabled  value="{$reviewsadvdatareview.email|escape:'htmlall':'UTF-8'}" />

         {/if}

            <div class="clear-reviewsadv"></div>
        {else}
            <span class="label-span">{l s='Customer' mod='reviewsadv'}:</span>
            <span class="badge">
            <a href="{$reviewsadvdatareview.url_to_customer|escape:'htmlall':'UTF-8'}" target="_blank">{$reviewsadvdatareview.customer_name_full|escape:'htmlall':'UTF-8'}</a>
        </span>
            <div class="clear-reviewsadv"></div>

        {/if}



        {if $reviewsadvdatareview.criterions|@count>0}

                {foreach from=$reviewsadvdatareview.criterions item=criterion}
                        <label for="rating-review" >{$criterion.name|escape:'htmlall':'UTF-8'}:</label>

                        <span class="stars-section">
                        {section name=ratid loop=5}
                            {if $smarty.section.ratid.index < $criterion.rating}
                                <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list1"
                                     alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                            {else}
                                <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list1"
                                     alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                            {/if}
                        {/section}
                        </span>
                    <div style="clear:both"></div>

                {/foreach}

            <br/>
         {else}
            <label for="rating-review" >{l s='Rating' mod='reviewsadv'}:</label>
            <span class="stars-section">
            {section name=ratid loop=5}
                {if $smarty.section.ratid.index < $reviewsadvdatareview.rating}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list1"
                         alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                {else}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list1"
                         alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                {/if}
            {/section}
             </span>
            <br/>
        {/if}
        <div style="clear: both;"></div>


        {if strlen($reviewsadvdatareview.title_review)>0}
        <label for="subject-review" >{l s='Review Title' mod='reviewsadv'}:</label>
        <input disabled class="form-control disabled-values" id="disabledInput" type="text" value="{$reviewsadvdatareview.title_review|escape:'htmlall':'UTF-8' nofilter}"  />
        {/if}

        {if strlen($reviewsadvdatareview.text_review)>0}
        <label for="text-review" >{l s='Review Text' mod='reviewsadv'}:</label>
        <textarea disabled class="form-control disabled-values" id="disabledInput" cols="42" rows="7">{$reviewsadvdatareview.text_review|escape:'htmlall':'UTF-8' nofilter}</textarea>
        {/if}
    </div>



    {if $reviewsadvdatareview.is_changed == 2}
    <div id="body-add-review-form-review">

        <span class="badge">
            <a href="javascript:void(0)" onclick="$('.old-review-item').toggle();" >{l s='Click to see old review' mod='reviewsadv'}</a>
        </span>



    </div>
    <div id="body-add-review-form-review" class="text-align-left old-review-item" style="display: none">

        {if $reviewsadvdatareview.criterions_old|@count>0}

            {foreach from=$reviewsadvdatareview.criterions_old item=criterion}
                <label for="rating-review" >{$criterion.name|escape:'htmlall':'UTF-8'}:</label>

                <span class="stars-section">
                        {section name=ratid loop=5}
                            {if $smarty.section.ratid.index < $criterion.rating}
                                <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list"
                                     alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                            {else}
                                <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list"
                                     alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                            {/if}
                        {/section}
                        </span>
                <br/>

            {/foreach}

            <br/>
        {else}
            <label for="rating-review" >{l s='Rating' mod='reviewsadv'}:</label>
            <span class="stars-section">
            {section name=ratid loop=5}
                {if $smarty.section.ratid.index < $reviewsadvdatareview.rating}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list1"
                         alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                {else}
                    <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" class="gsniprev-img-star-list1"
                         alt="{$smarty.section.ratid.index|escape:'htmlall':'UTF-8'}"/>
                {/if}
            {/section}
             </span>
            <br/>
        {/if}



        {if strlen($reviewsadvdatareview.title_review_old)>0}
            <label for="subject-review" >{l s='Review Title' mod='reviewsadv'}:</label>
            <input disabled class="form-control disabled-values" id="disabledInput" type="text" value="{$reviewsadvdatareview.title_review_old|escape:'htmlall':'UTF-8'}"  />
        {/if}

        {if strlen($reviewsadvdatareview.text_review_old)>0}
            <label for="text-review" >{l s='Review Text' mod='reviewsadv'}:</label>
            <textarea disabled class="form-control disabled-values" id="disabledInput" cols="42" rows="7">{$reviewsadvdatareview.text_review_old|escape:'htmlall':'UTF-8'}</textarea>
        {/if}


    </div>
    {/if}


    {if $reviewsadvdatareview.id_customer != 0}

    <div class="title-rev">
        <div class="title-form-text-left">
            <b class="title-form-custom">{l s='Your suggest for change the review' mod='reviewsadv'}:</b>
        </div>

        <div class="clear-reviewsadv"></div>
    </div>
    <div id="body-add-review-form-review" class="text-align-left">




        <label for="text-admin_response" >{l s='Your suggestion text' mod='reviewsadv'}:</label>
        <textarea id="text-admin_response" name="text-admin_response" cols="42" rows="7" class="form-control cursor-active"
                  onkeyup="check_inpReponseReview();" onblur="check_inpReponseReview();"  {*{if $reviewsadvdatareview.is_changed == 2}disabled{/if}*}
                >{$reviewsadvdatareview.suggest_text|escape:'htmlall':'UTF-8'}</textarea>
        <div id="error_text-admin_response" class="errorTxtAdd"></div>

        <label for="is_display_old" >{l s='Display your suggestion on product page' mod='reviewsadv'}:</label>
        <input type="checkbox"  class="reviewsadv-checkbox" {if $reviewsadvdatareview.is_display_old == 1}checked="checked"{/if} value="1" id="is_display_old" name="is_display_old">


        

        {if $reviewsadvdatareview.is_count_sending_suggestion != 0}
            <div style="clear: both;"></div>
        <label for="is_send_again" >{l s='Send your suggestion by email again' mod='reviewsadv'}:</label>
        <input type="checkbox"  class="reviewsadv-checkbox" value="1" id="is_send_again" name="is_send_again"/>

            <div class="tip-times">
                {l s='Your response has already been sent' mod='reviewsadv'} <strong>{$reviewsadvdatareview.is_count_sending_suggestion|escape:'htmlall':'UTF-8'}</strong> {l s='time(s)' mod='reviewsadv'}<br>

            </div>
        {/if}


    </div>
    <div id="footer-add-review-form-review">
        <button onclick="update_chaged()"  value="{l s='Send suggestion to user change the review' mod='reviewsadv'}" class="btn btn-success">{l s='Send suggestion to user change the review' mod='reviewsadv'}</button>
    </div>

    {else}
        <div class="tip-times">
            {l s='You cannot suggest a guest the change own review. Only for registered customers' mod='reviewsadv'}
        </div>

    {/if}



    </div>


{if $reviewsadvdatareview.id_customer != 0}
{literal}
<script type="text/javascript">

    function check_inpReponseReview()
    {

        var text_review = trim(document.getElementById('text-admin_response').value);

        if (text_review.length == 0)
        {
            field_state_change('text-admin_response','failed', '{/literal}{$reviewsadvrca_msg1|escape:'htmlall':'UTF-8'}{literal}');
            return false;
        }
        field_state_change('text-admin_response','success', '');
        return true;
    }


    function update_chaged(){

            var is_text_response =  check_inpReponseReview();

            if(is_text_response){

            var id_review = {/literal}{$reviewsadvdatareview.id|escape:'htmlall':'UTF-8'}{literal};

            $('#changeditem'+id_review).html('<img src="../img/admin/../../modules/reviewsadv/views/img/loader.gif" alt="Logo avis" />');

                if($("input#is_display_old").is(":checked")) {
                    var is_display_old = 1;
                } else {
                    var is_display_old = 0;
                }

                if($("input#is_send_again").is(":checked")) {
                    var is_send_again = 1;
                } else {
                    var is_send_again = 0;
                }

            $.post('../modules/reviewsadv/reviews_admin.php',
                    {action:'change-wait',
                    review_id:{/literal}{$reviewsadvreview_id|escape:'htmlall':'UTF-8'}{literal},
                    is_display_old: is_display_old,
                    is_send_again:is_send_again,
                    admin_response: $('#text-admin_response').val(),
                    },
                    function (data) {

                        if (data.status == 'success') {

                            $('#changeditem'+id_review).html('');
                            var html = '<span class="label-tooltip" data-original-title="{/literal}{$reviewsadvrca_msg2|escape:'htmlall':'UTF-8'}{literal}" data-toggle="tooltip">'+
                                '<a style="text-decoration:none" onclick="reviewsadv_list({/literal}{$reviewsadvdatareview.id|escape:'htmlall':'UTF-8'}{literal},\'changed\',1,\'{/literal}{$reviewsadvtoken|escape:'htmlall':'UTF-8'}{literal}\');" href="javascript:void(0)">'+
                                '<img src="../img/admin/../../modules/reviewsadv/views/img/time.gif" />'+
                            '</a>'+
                                    '</span>';
                            $('#changeditem'+id_review).html(html);

                             $('#fb-con-wrapper-admin').remove();
                             $('#fb-con').remove();



                        } else {

                            alert(data.message);

                        }
                    }, 'json');
            }

        }


</script>
{/literal}

{/if}