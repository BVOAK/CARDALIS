{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2017 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div id="ts_review_sticker"></div>
<script type="text/javascript">
(function () {
    _tsRatingConfig = {
        tsid: '{$id_trusted_shops|escape:'htmlall':'UTF-8'}',
        {if $smarty.const.TSAPI_URL == 'https://api-qa.trustedshops.com'}
            'apiServer': 'https://api-qa.trustedshops.com/',
        {/if}
        element: '#ts_review_sticker',
        variant: 'testimonial',
        reviews: '{$number_of_reviews|default:"5"|escape:'htmlall':'UTF-8'}',
        betterThan: '{$maximum_rating|default:"3.0"|escape:'htmlall':'UTF-8'}',
        richSnippets: 'off',
        backgroundColor: '{$site_review_background_color|default:"#ffdc0f"|escape:'htmlall':'UTF-8'}',
        linkColor: '#000000',
        quotationMarkColor: '#FFFFFF',
        fontFamily: '{$review_sticker_font|default:"Arial"|escape:'htmlall':'UTF-8'}',
        reviewMinLength: '10'
    };
    var scripts = document.getElementsByTagName('script'),
    me = scripts[scripts.length - 1];
    var _ts = document.createElement('script');
    _ts.type = 'text/javascript';
    _ts.async = true;
    _ts.src = '//widgets.trustedshops.com/reviews/tsSticker/tsSticker.js';
    me.parentNode.insertBefore(_ts, me);
    _tsRatingConfig.script = _ts;
})();
</script>
