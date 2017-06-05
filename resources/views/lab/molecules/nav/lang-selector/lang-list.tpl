<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
  {foreach from=$languages item=item key=key}
    {if $lang !== $key}

        {if strpos($smarty.server.REQUEST_URI, 'lang') == true}
            {$uri = $smarty.server.REQUEST_URI|replace:$lang:$key}
        {elseif strpos($smarty.server.REQUEST_URI, 'lang') == false && strpos($smarty.server.REQUEST_URI, '?') == false}
            {$uri = $smarty.server.REQUEST_URI|cat:'?lang='|cat:$key}
        {else}
            {$uri = $smarty.server.REQUEST_URI|cat:'&lang='|cat:$key}
        {/if}
        <li>
            <a href="{$uri}" rel="nofollow">
              <span><img src="src/img/flag/{$key}.png" alt="{$item|upper}"></span> {$item}
            </a>
        </li>
    {/if}
  {/foreach}
</ul>
