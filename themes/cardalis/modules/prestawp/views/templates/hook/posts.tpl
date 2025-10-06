{**
* NOTICE OF LICENSE
*
* This file is licenced under the Software License Agreement.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
* @author    Presta.Site
* @copyright 2017 Presta.Site
* @license   LICENSE.txt
*}
<div class="prestawpblock block psv{$psvwd|intval}">
    <div class="blockTitle w-100 text-center">
		<p class="mainTitle"><a {if $pswp_blank}target="_blank" {/if} class="readall cBlue" href="{if $pswp_enable_posts_page}{$pswp_posts_page_url|escape:'html':'UTF-8'}{else}{$wp_path|escape:'html':'UTF-8'}{/if}">
			{l s='NOS ACTUALITES' mod='prestawp'}
			</a></p>
    </div>
    {strip}
        <div class="pswp_grid d-flex flex-wrap posts_container {if $show_featured_images}posts_container-fi{else}posts_container-text{/if} {if $pswp_carousel}pswp-carousel{/if} {if $pswp_masonry && $grid_columns > 1 && !$pswp_carousel}pswp_masonry{/if} pswp-cols-{$grid_columns|intval}"
            data-cols="{$grid_columns|intval}" {if $pswp_carousel}data-autoplay="{$pswp_carousel_autoplay|intval}"
            data-dots="{$pswp_carousel_dots|intval}" data-arrows="{$pswp_carousel_arrows|intval}" {/if}>
            {foreach from=$posts item=post}
                {if $show_featured_images}
                    <article id="pswp-post-{$post.ID|escape:'html':'UTF-8'}" class="pswp-post"
                        style="{if $grid_columns}width: {math equation="x/y" x=100 y=$grid_columns|escape:'html':'UTF-8'}%;{/if}">
                        <div class="pswp-post-wrp">
                            <div class="pswp-post-wrp-1">
                                {if $post.image}
                                    <a href="{$post.url|escape:'html':'UTF-8'}" class="pswp-post-image-link"
                                        {if $pswp_blank}target="_blank" {/if}>
                                        <img class="pswp-post-image" src="{$post.image|escape:'quotes':'UTF-8'}"
                                            alt="{$post.post_title|strip_tags:false|escape:'html':'UTF-8'|html_entity_decode}" />
                                    </a>
                                {/if}
                                <div class="pswp-post-fi-title {if !$post.image}pswp-no-image{/if}"
                                    {if $pswp_title_bg_color}style="background-color: {$pswp_title_bg_color|escape:'quotes':'UTF-8'};"
                                    {/if}>
                                    <a {if $pswp_blank}target="_blank" {/if} class="pswp-post-title"
                                        href="{$post.url|escape:'html':'UTF-8'}"
                                        {if $pswp_title_color}style="color: {$pswp_title_color|escape:'quotes':'UTF-8'};" {/if}
                                        rel="bookmark">
                                        {$post.post_title|strip_tags:false|escape:'html':'UTF-8'|html_entity_decode}
                                    </a>
                                    {if $post.image && $pswp_show_preview}
                                        <a class="pswp-post-preview" href="{$post.url|escape:'html':'UTF-8'}"
                                            {if $pswp_blank}target="_blank" {/if}
                                            {if $pswp_title_color}style="color: {$pswp_title_color|escape:'quotes':'UTF-8'};" {/if}>
                                            {$post.main_content|strip_tags:false|escape:'html':'UTF-8'|html_entity_decode|truncate:200}
                                        </a>
                                    {/if}
                                    {if $show_footer}
                                        <footer class="entry-footer"
                                            {if $pswp_title_color}style="color: {$pswp_title_color|escape:'quotes':'UTF-8'};" {/if}>
                                            <span class="posted-on">
                                                <a {if $pswp_blank}target="_blank" {/if} href="{$post.url|escape:'html':'UTF-8'}"
                                                    rel="bookmark"
                                                    {if $pswp_title_color}style="color: {$pswp_title_color|escape:'quotes':'UTF-8'};"
                                                    {/if}>
                                                    <time class="entry-date published updated"
                                                        datetime="{$post.time_created|escape:'html':'UTF-8'}">{$post.date_created|escape:'html':'UTF-8'}</time>
                                                </a>
                                            </span>
                                            {if isset($post.comment_count)}
                                                &nbsp;/&nbsp;<span class="comments-link"><a {if $pswp_blank}target="_blank" {/if}
                                                        href="{$post.url|escape:'html':'UTF-8'}/#comments"
                                                        {if $pswp_title_color}style="color: {$pswp_title_color|escape:'quotes':'UTF-8'};"
                                                        {/if}>{$post.comment_count|escape:'html':'UTF-8'}
                                                        {if $post.comment_count == 1}{l s='comment' mod='prestawp'}{else}{l s='comments' mod='prestawp'}{/if}</a></span>
                                            {/if}
                                        </footer>
                                    {/if}
                                </div>
                                {if !$post.image && $pswp_show_preview_no_img}
                                    <a class="pswp-no-image-preview" href="{$post.url|escape:'html':'UTF-8'}"
                                        {if $pswp_blank}target="_blank" {/if}
                                        {if $pswp_title_bg_color}style="border-color: {$pswp_title_bg_color|escape:'quotes':'UTF-8'};"
                                        {/if}>
                                        {$post.main_content|strip_tags:false|escape:'html':'UTF-8'|html_entity_decode|truncate:300}
                                    </a>
                                {/if}
                            </div>
                        </div>
                    </article>
                {else}
                    <article id="pswp-post-{$post.ID|escape:'html':'UTF-8'}" class="pswp-post"
                        style="{if $grid_columns}width: {math equation="x/y" x=100 y=$grid_columns|escape:'html':'UTF-8'}%;{/if}">
                        <div class="pswp-post-wrp">
                            <div class="pswp-post-wrp-wrp">
                                <header class="entry-header">
                                    <h3 class="entry-title"
                                        {if $pswp_title_bg_color}style="background-color: {$pswp_title_bg_color|escape:'quotes':'UTF-8'}; padding: 4px;"
                                        {/if}>
                                        <a {if $pswp_blank}target="_blank" {/if} href="{$post.url|escape:'html':'UTF-8'}"
                                            rel="bookmark"
                                            {if $pswp_title_color}style="color: {$pswp_title_color|escape:'quotes':'UTF-8'};" {/if}>
                                            {$post.post_title|strip_tags:false|escape:'html':'UTF-8'|html_entity_decode}
                                        </a>
                                    </h3>
                                </header>

                                <div class="entry-content">
                                    {if $strip_tags}
                                        <p>
                                            {$post.main_content|strip_tags|escape:'html':'UTF-8'}
                                        </p>
                                    {else}
                                        {$post.main_content nofilter} {*keep html*}
                                    {/if}

                                    {if $show_full}
                                        {if $strip_tags}
                                            {$post.extended_content|strip_tags|escape:'html':'UTF-8'}
                                        {else}
                                            {$post.extended_content nofilter} {*keep html*}
                                        {/if}
                                    {else}
                                        <p>
                                            <a {if $pswp_blank}target="_blank" {/if} href="{$post.url|escape:'html':'UTF-8'}"
                                                rel="bookmark">{l s='Continue reading' mod='prestawp'}</a>
                                        </p>
                                    {/if}
                                </div>

                                {if $show_footer}
                                    <footer class="entry-footer">
                                        <span class="posted-on">
                                            <a {if $pswp_blank}target="_blank" {/if} href="{$post.url|escape:'html':'UTF-8'}"
                                                rel="bookmark">
                                                <time class="entry-date published updated"
                                                    datetime="{$post.time_created|escape:'html':'UTF-8'}">{$post.date_created|escape:'html':'UTF-8'}</time>
                                            </a>
                                        </span>
                                        {if isset($post.comment_count)}
                                            &nbsp;/&nbsp;<span class="comments-link"><a {if $pswp_blank}target="_blank" {/if}
                                                    href="{$post.url|escape:'html':'UTF-8'}/#comments">{$post.comment_count|escape:'html':'UTF-8'}
                                                    {if $post.comment_count == 1}{l s='comment' mod='prestawp'}{else}{l s='comments' mod='prestawp'}{/if}</a></span>
                                        {/if}
                                    </footer>
                                {/if}
                            </div>
                        </div>
                    </article>
                {/if}
            {/foreach}
        </div>
    {/strip}
</div>