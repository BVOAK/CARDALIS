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

{if $reviewsadvptabs_type == 2}

{if $reviewsadvrvis_on == 1}

{if $reviewsadvratings_on == 1 || $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1}

<li>

<a id="idTab777-my" href="#idTab777" data-toggle="tab"
        ><img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}"
                                            class="{if $reviewsadvis16 == 0}fix-width-ps15{/if} title-rating-one-star"
                                           alt="{l s='Reviews' mod='reviewsadv'}" />&nbsp;{l s='Reviews' mod='reviewsadv'} <span id="count-review-tab">({$reviewsadvcount_reviews|escape:'html':'UTF-8'})</span></a>

</li>

{/if}

{/if}

{/if}
