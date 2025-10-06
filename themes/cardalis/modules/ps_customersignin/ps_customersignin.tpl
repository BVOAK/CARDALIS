<div id="blockAccountSignIn">
  <div class="user-info">
      {if $logged}
          <div class="hidden-md-down">
              <a href="{$urls.base_url}authentification?back=my-account" title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow">
                  <img src="{$urls.img_url}iconCustomer.svg" class="hidden-sm-down" alt="Icône Utilisateur" />
                  <span class="hidden-md-down">{l s='Mon compte' d='Shop.Theme.Actions'}</span>
              </a>
              <a class="logout hidden-sm-down" href="{$logout_url}" rel="nofollow" >
                  {*<i class="material-icons">&#xE14C;</i>*}
                  <span class="hidden-md-down">{l s='Deconnexion' d='Shop.Theme.Actions'}</span>
              </a>
          </div>
          <a href="{$urls.base_url}authentification?back=my-account" title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow" class="logout hidden-lg-up">
              <img src="{$urls.img_url}iconCustomer.svg" class="hidden-md-down iconCustomer" alt="Icône Utilisateur" />
              {*<i class="material-icons iconClose">&#xE14C;</i>*}
              <i class="material-icons hidden-lg-up">&#xE7FF;</i>
          </a>
      {else}
          <a href="{$urls.base_url}authentification?back=my-account" title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}" rel="nofollow" class="login">
              <div class="hidden-lg-down d-flex">
                  <i class="material-icons hidden-lg-down">&#xE7FF;</i>
                  <div class="content">
                      <span class="">{l s='Mon compte' d='Shop.Theme.Actions'}</span><br />
                      <small class="hidden-lg-down link">{l s='Se connecter' d='Shop.Theme.Actions'}</small>
                  </div>
              </div>
              <i class="material-icons hidden-xl-up">&#xE7FF;</i>
          </a>
      {/if}
  </div>
</div>