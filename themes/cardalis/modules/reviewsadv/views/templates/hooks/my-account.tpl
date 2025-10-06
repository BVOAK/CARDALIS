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

            {if $reviewsadvis17 == 0}
                <li>
            {/if}
            <a href="{$reviewsadvaccount_url|escape:'htmlall':'UTF-8'}"
               {if $reviewsadvis17 == 1}class="col-lg-4 col-md-6 col-sm-6 col-xs-12"{/if} title="{l s='Product Reviews' mod='reviewsadv'}">

                {if $reviewsadvis17 == 1}<span class="link-item">{/if}

                    {if $reviewsadvis16 == 1}
                        <i {if $reviewsadvis17 == 1}class="material-icons"{/if}>&#xE838;{/if}
                     {if $reviewsadvis16 == 1}</i>{/if}

                    {if $reviewsadvis16 == 1 && $reviewsadvis17 == 0}<span>{/if}
                        {l s='Product Reviews' mod='reviewsadv'}
                        {if $reviewsadvis16 == 1 && $reviewsadvis17 == 0}</span>{/if}


                    {if $reviewsadvis17 == 1}</span>{/if}

            </a>
            {if $reviewsadvis17 == 0}
                </li>
            {/if}


        {/if}

    {/if}

{/if}

{if $reviewsadvis_uprof == 1}
    {if $reviewsadvislogged !=0}

        {if $reviewsadvis17 == 0}
            <li>
        {/if}
        <a href="{$reviewsadvuacc_url|escape:'htmlall':'UTF-8'}"
           {if $reviewsadvis17 == 1}class="col-lg-4 col-md-6 col-sm-6 col-xs-12"{/if}
           title="{l s='User profile' mod='reviewsadv'}">

            {if $reviewsadvis17 == 1}<span class="link-item">{/if}

                {if $reviewsadvis16 == 1}<i {if $reviewsadvis17 == 1}class="material-icons"{/if}>{/if}
                    <img class="icon"
                         src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/users/users-logo.png"/>
                    {if $reviewsadvis16 == 1}</i>{/if}

                {if $reviewsadvis16 == 1  && $reviewsadvis17 == 0}<span>{/if}
                    {l s='User profile' mod='reviewsadv'}
                    {if $reviewsadvis16 == 1  && $reviewsadvis17 == 0}</span>{/if}

                {if $reviewsadvis17 == 1}</span>{/if}

        </a>
        {if $reviewsadvis17 == 0}
            </li>
        {/if}


    {/if}
{/if}

