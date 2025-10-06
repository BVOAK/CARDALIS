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

{if $reviewsadvrvis_on == 1}

    {if $reviewsadvratings_on == 1 || $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1}

        {if $reviewsadvislogged !=0}
            <li>

                <a href="{$reviewsadvaccount_url|escape:'htmlall':'UTF-8'}" title="{l s='Product Reviews' mod='reviewsadv'}">
                    <i class="material-icons">&#xE8CF;</i>
                    {l s='Product Reviews' mod='reviewsadv'}
                </a>
            </li>
        {/if}

    {/if}

{/if}


{if $reviewsadvis_uprof == 1}
    {if $reviewsadvislogged !=0}
        <li>

            <a href="{$reviewsadvuacc_url|escape:'htmlall':'UTF-8'}"
               title="{l s='User profile' mod='reviewsadv'}">
                <img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/users/users-logo.png" alt="{l s='User profile' mod='reviewsadv'}" />
                {l s='User profile' mod='reviewsadv'}
            </a>
        </li>
    {/if}
{/if}

