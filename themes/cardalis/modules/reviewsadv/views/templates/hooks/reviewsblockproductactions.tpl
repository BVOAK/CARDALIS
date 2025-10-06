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

<div class="clear-reviewsadv"></div>

{if $reviewsadvrvis_on == 1}

{if $reviewsadvratings_on == 1 || $reviewsadvtitle_on == 1 || $reviewsadvtext_on == 1}

{if $reviewsadvhooktodisplay == "product_actions"}



    <div class="clear-reviewsadv"></div>

    <div class="{if $reviewsadvis16 == 1}gsniprev-block-16{else}gsniprev-block{/if}">
        {*<b class="title-rating-block">*}
            {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" />&nbsp;{l s='Total Rating' mod='reviewsadv'}</b><span class="ratings-block-punct">:</span>*}

        {*<br/><br/>*}


            <div class="rating">{$reviewsadvavg_rating|escape:'htmlall':'UTF-8'}</div>
            <div class="gsniprev-block-reviews-text">
                <span>{$reviewsadvavg_decimal|escape:'htmlall':'UTF-8'}</span>/<span>5</span> - <span id="count_review_block">{$reviewsadvcount_reviews|escape:'htmlall':'UTF-8'}</span> <span id="reviews_text_block">{$reviewsadvtext_reviews|escape:'htmlall':'UTF-8'}</span>
            </div>

        {*{if $reviewsadvstarratingon == 1}*}

            {*<a href="javascript:void(0)" onclick="$('.gsniprev-rating-block').toggle();" class="view-ratings">{l s='View ratings' mod='reviewsadv'}</a>*}
            {*<br/>*}
            {*<div class="gsniprev-rating-block">*}
                {*<table class="gsniprev-rating-block-table">*}
                    {*<tr>*}
                        {*<td class="gsniprev-rating-block-left">*}
                            {*{section name="test" loop=5}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                        {*</td>*}
                        {*<td class="gsniprev-rating-block-right"><b id="five-blockreview">{$reviewsadvfive|escape:'htmlall':'UTF-8'}</b></td>*}
                    {*</tr>*}
                    {*<tr>*}
                        {*<td class="gsniprev-rating-block-left">*}
                            {*{section name="test" loop=4}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                            {*{section name="test" loop=1}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                        {*</td>*}
                        {*<td class="gsniprev-rating-block-right"><b id="four-blockreview">{$reviewsadvfour|escape:'htmlall':'UTF-8'}</b></td>*}
                    {*</tr>*}
                    {*<tr>*}
                        {*<td class="gsniprev-rating-block-left">*}
                            {*{section name="test" loop=3}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                            {*{section name="test" loop=2}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                        {*</td>*}
                        {*<td class="gsniprev-rating-block-right"><b id="three-blockreview">{$reviewsadvthree|escape:'htmlall':'UTF-8'}</b></td>*}
                    {*</tr>*}
                    {*<tr>*}
                        {*<td class="gsniprev-rating-block-left">*}
                            {*{section name="test" loop=2}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                            {*{section name="test" loop=3}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                        {*</td>*}
                        {*<td class="gsniprev-rating-block-right"><b id="two-blockreview">{$reviewsadvtwo|escape:'htmlall':'UTF-8'}</b></td>*}
                    {*</tr>*}
                    {*<tr>*}
                        {*<td class="gsniprev-rating-block-left">*}
                            {*{section name="test" loop=1}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                            {*{section name="test" loop=4}*}
                                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvnoactivestar|escape:'htmlall':'UTF-8'}" />*}
                            {*{/section}*}
                        {*</td>*}
                        {*<td class="gsniprev-rating-block-right"><b id="one-blockreview">{$reviewsadvone|escape:'htmlall':'UTF-8'}</b></td>*}
                    {*</tr>*}
                {*</table>*}
            {*</div>*}
        {*{/if}*}

        <a class="viewReviewActionTop" href="#idTab777" >
            <span>
                {*<img src="{$base_dir_ssl|escape:'htmlall':'UTF-8'}modules/reviewsadv/views/img/{$reviewsadvactivestar|escape:'htmlall':'UTF-8'}" class="title-rating-one-star" alt="{l s='View Reviews' mod='reviewsadv'}"/>*}
                {l s='View Reviews' mod='reviewsadv'}
            </span>
        </a>

        {*{if $reviewsadvis_add != 1}*}
            {*<a class="addReviewActionTop" href="#idTab777" id="idTab777-my-click">*}
                {*<span>*}
                    {*<i class="icon-pencil"></i>&nbsp;*}
                    {*{l s='Add Review' mod='reviewsadv'}*}
                {*</span>*}
            {*</a>*}
        {*{/if}*}





    </div>




{/if}

{/if}

{/if}
