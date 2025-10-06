{include file='_partials/form-errors.tpl' errors=$errors['']}

{* TODO StarterTheme: HOOKS!!! *}

<form id="login-form" action="{$action}" method="post">

  <section>
    {block name='form_fields'}
      {foreach from=$formFields item="field"}
        {block name='form_field'}
          {form_field field=$field}
        {/block}
      {/foreach}
    {/block}
    {hook h='displayPaCaptcha' posTo='login'}
    <div class="forgot-password">
      <a href="{$urls.pages.password}" rel="nofollow">
        {l s='Forgot your password?' d='Shop.Theme.Customeraccount'}
      </a>
    </div>
  </section>


  {*<div class="blockInfosCheckout">*}
    {*<div class="contentInfos">*}
      {*<p>Nous avons mis en ligne notre tout nouveau site avec une sécurité renforcée.    A cet effet, à partir du  7 novembre il vous sera demandé lors de votre 1ère connexion sur ce nouveau site de renouveler votre mot de passe en cliquant sur le lien « mot de passe oublié ? ».</p>*}
      {*<p>Ce nouveau mot de passe sera ensuite fonctionnel pour vos prochaines visites.</p>*}
      {*<p>En cas de difficulté n’hésitez pas à contacter notre équipe au 04 22 14 00 86.  Merci de votre compréhension.   </p>*}
    {*</div>*}
  {*</div>*}


  <footer class="form-footer text-xs-center clearfix">
    <input type="hidden" name="submitLogin" value="1">
    {block name='form_buttons'}
      <button class="btn btn-primary" data-link-action="sign-in" type="submit" class="form-control-submit">
        {l s='Sign in' d='Shop.Theme.Actions'}
      </button>
    {/block}
  </footer>
</form>
