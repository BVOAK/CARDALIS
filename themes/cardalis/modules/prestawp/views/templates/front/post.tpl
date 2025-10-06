{**
* NOTICE OF LICENSE
*
* This file is licenced under the Software License Agreement.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
* @author    Presta.Site
* @copyright 2018 Presta.Site
* @license   LICENSE.txt
*}

<div id="pswp-page" class="rte pswp{$psvd|escape:'html':'UTF-8'}">
    {capture name=path}{if $pswp->enable_posts_page}<a href="{$pswp->getModuleLink('prestawp', 'list')|escape:'quotes':'UTF-8'}">{l s='Posts' mod='prestawp'}</a>&nbsp;{$navigationPipe|escape:'html':'UTF-8'}&nbsp;{/if}{$pswp_post.title|escape:'html':'UTF-8'}{/capture}
    <h1 class="page-heading">{$pswp_post.title|escape:'html':'UTF-8'}</h1>

    {if !$pswp_post.post_password}
        <div class="pswp-post-content">
            {if $pswp_post.image}
                <div class="pswp-post-img">
                    <img src="{$pswp_post.image|escape:'html':'UTF-8'}" alt="{$pswp_post.title|escape:'html':'UTF-8'}">
                </div>
            {/if}
            {$pswp_post.post_content nofilter} {* HTML *}
        </div>
    {else}
        <p>
            {l s='This content is password-protected. Please enter your password to view it:' mod='prestawp'}
        </p>
        <form action="" method="post">
            <div class="form-group row">
                <label for="pswp-pass" class="col-md-3 form-control-label">{l s='Password:' mod='prestawp'}</label>
                <div class="col-md-6">
                    <input type="password" name="password" id="pswp-pass" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <input type="submit" class="btn btn-primary">
                </div>
            </div>
        </form>
    {/if}

    {if $pswp->enable_posts_page}
        <hr>
        <p class="pswp-return"><a class="pswp-return-link" href="{$pswp->getModuleLink('prestawp', 'list')|escape:'quotes':'UTF-8'}">{l s='Back to the list' mod='prestawp'}</a></p>
    {/if}
</div>