<nav class="menuFooter col-md-2" role="navigation">
  {foreach $linkBlocks as $linkBlock}
    {assign var=_expand_id value=10|mt_rand:100000}
    <button class="title cBlue" data-toggle="collapse" data-target="#footer_sub_menu_{$_expand_id}" aria-expanded="true"
      type="button" aria-controls="footer_sub_menu_{$_expand_id}">{$linkBlock.title} <i
        class="fa fa-chevron-down d-md-none d-sm-block" aria-hidden="true"></i></button>
    <ul id="footer_sub_menu_{$_expand_id}" class="collapse show level01">
      {foreach $linkBlock.links as $link}
        <li>
          <a id="{$link.id}-{$linkBlock.id}" class="{$link.class}" href="{$link.url}" title="{$link.description}">
            {$link.title}
          </a>
        </li>
      {/foreach}
    </ul>
  {/foreach}
</nav>