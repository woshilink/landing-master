{foreach from=$languages item=item key=key}
  {if $lang == $key}
    <button class="btn lang-btn dropdown-toggle" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
      <span><img src="src/img/flag/{$lang}.png" alt="{$item|upper}"></span> {$item|upper}
      <span class="caret"></span>
    </button>
    <!-- end of button -->
    {include file="lab/molecules/nav/lang-selector/lang-list.tpl" languages=$languages}
    <!-- ///////////////////////////////////////end of list /////////////////////////////////////// -->
  {/if}
{/foreach}
