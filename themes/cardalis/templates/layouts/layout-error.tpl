<!doctype html>
<html lang="">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    {block name='head_seo'}
      <title>{block name='head_seo_title'}{/block}</title>
      <meta name="description" content="{block name='head_seo_description'}{/block}">
      <meta name="keywords" content="{block name='head_seo_keywords'}{/block}">
    {/block}
    <meta name="viewport" content="width=device-width, initial-scale=1">

      <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
      <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
      <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
      <link href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    {* StarterTheme: favicon.ico and apple icons *}

    <style type="text/css">
      #maintenance { background: #eaebec; display: flex; align-items: center; justify-content: center; }
      #main { display: flex; align-items: center; justify-content: center; height: 90vh; max-width: 700px; width: 100%; }
      .container { padding: 30px; background-color: #FFF; }
      #blockLogo { width: 300px; margin: 0 auto 30px; }
      h1 { font-family: 'Roboto Condensed', sans-serif; color: white; letter-spacing: 5px; background: #0769A7; padding: 10px 15px; }
      header { text-align: center; margin-top: 20px; }
      #content { background: white; padding: 40px; margin-top: 20px; font-family: 'Roboto Condensed', sans-serif; text-align: center; border: 2px solid #eaebec; }
    </style>

  </head>

  <body id="maintenance">

    {block name='content'}
      <p>Hello world! This is HTML5 Boilerplate.</p>
    {/block}

    <!-- Load JS files here -->

  </body>

</html>
