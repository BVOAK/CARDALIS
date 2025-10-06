{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}


<div id="pageAboutUs">

    {block name='page_title'}
        <section id="sectionHead">
            <div class="row">
                <div class="wrapper">
                    <div class="blockTitle text-center">
                        <h1 class="h1 mainTitle">
                            {$blockAbout1->meta_title}
                        </h1>
                    </div>
                </div>
            </div>
        </section>
    {/block}

    <section class="container" id="sectionDescription">
        <div class="row">
            <div class="wrapper d-flex justify-content-between flex-wrap">
                <div class="col-lg-5 description">
                    {$blockAbout1->content nofilter}
                </div>
                <div class="img col-lg-6 text-right">
                    <img class="img-fluid" src="{$urls.img_url}about-head.jpg"
                        alt="{$blockAbout1->meta_title nofilter}" />
                </div>
            </div>
        </div>
    </section>

    <section class="container" id="sectionInfos">
        <div class="row">
            <div class="col-lg-6 img">
                <img class="img-fluid" src="{$urls.img_url}about-infos.jpg"
                alt="{$blockAbout2->meta_title nofilter}" />
            </div>
            <div class="col-lg-6 content">
                {$blockAbout2->content nofilter}
            </div>
        </div>
    </section>

    <section class="container" id="sectionTeam">
        <div class="row">
            <div class="wrapper">
                <div class="blockTitle text-center">
                    <h2 class="titleSec">
                        {$blockAbout3->meta_title nofilter}
                    </h2>
                </div>
                <div id="blockTeamList" class="d-flex flex-wrap">
                    {$blockAbout3->content nofilter}
                </div>
            </div>
        </div>
        <div class="row" id="blockContantTeam">
            <div class="wrapper">
                <div class="col-lg-6 content">
                    {$blockAbout4->content nofilter}
                </div>
                <div class="col-lg-6 button">
                    <a href="{$urls.pages.contact}">CONTACTEZ NOUS</a>
                </div>
            </div>
        </div>
    </section>

    <section class="container" id="sectionSolutionsAbout">
        <div class="row">
            <div class="wrapper">
                <div class="blockTitle text-center">
                    <h2 class="titleSec">
                        {$blockAbout5->meta_title nofilter}
                    </h2>
                </div>
                <div id="blockSolutionsAbout" class="d-flex flex-wrap">
                    {$blockAbout5->content nofilter}
                </div>
            </div>
        </div>
    </section>

</div>