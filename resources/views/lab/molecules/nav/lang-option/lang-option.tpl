

<ul class="nav nav-tabs pull-right">

    {foreach from=$languages item=item key=key}
        {$originalLang='lang='|cat:$lang}
        {$replaceLang='lang='|cat:$key}
        {if strpos($smarty.server.REQUEST_URI, 'lang=') == true }

            {$uri = $smarty.server.REQUEST_URI|replace:$originalLang:$replaceLang}

        {elseif strpos($smarty.server.REQUEST_URI, 'lang=') == false  && strpos($smarty.server.REQUEST_URI, '?') == false}

            {$uri = $smarty.server.REQUEST_URI|cat:'?lang='|cat:$key}
        {else}
            {$uri = $smarty.server.REQUEST_URI|cat:'&lang='|cat:$key}

        {/if}
        <li role="presentation" {if $lang == $key} class="active" {/if}>
            <a href="{$uri}">
                {if $flag == true}
                    <img class="media-object img-responsive" src="src/img/flag/{$key}.png" alt="{$key}">
                {/if}
                {$item}
            </a>
        </li>
    {/foreach}

</ul>