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

<h4>
   <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/btn/{if isset($reviewsadvis_facebook)}ico-facebook.png{else}ico-star.png{/if}"/>&nbsp;
   {$reviewsadvfirsttext|escape:'htmlall':'UTF-8'}  {$reviewsadvdiscountvalue|escape:'htmlall':'UTF-8'}
</h4>
<br/>
<div class="text-coupon-lines">{$reviewsadvsecondtext|escape:'htmlall':'UTF-8'}: &nbsp;<b>{$reviewsadvvoucher_code|escape:'htmlall':'UTF-8'}</b></div>
<br/>
<div class="text-coupon-lines">{$reviewsadvthreetext|escape:'htmlall':'UTF-8'}: &nbsp;<b>{$reviewsadvdate_until|escape:'htmlall':'UTF-8'}</b></div>



{literal}
    <script type="text/javascript">

        $('#fb-con-wrapper').css('height','auto');

        document.addEventListener("DOMContentLoaded", function(event) {
            $(document).ready(function(){

                $('#fb-con-wrapper').css('height','auto');

            });
        });

    </script>
{/literal}