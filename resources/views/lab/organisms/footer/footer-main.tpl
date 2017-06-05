
{if $domain == 'betfirstbe'}
    {include file="lab/organisms/footer/betfirstbe/footer.tpl"}
{elseif $domain == 'bet777be'}
    {include file="lab/organisms/footer/bet777be/footer.tpl"}
{else}
    {include file="pages/landing/{$domain}/partials/footer/footer.tpl"}
{/if}

