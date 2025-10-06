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

<div>
     <div class="alert alert-danger">
         {if $reviewsadvis17 == 1}
            {$reviewsadvmsg|escape:'quotes':'UTF-8' nofilter}
         {else}
             {$reviewsadvmsg|escape:'quotes':'UTF-8'}
         {/if}
        </div>
</div>