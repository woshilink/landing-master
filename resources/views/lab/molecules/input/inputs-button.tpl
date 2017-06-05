
  {assign var=val value=0}
  <div class="form-group">
  {foreach from=$from item=item key=key}
      <input type="text" class="form-control input-{$val+1}" name="{$key}" placeholder="{$item}" aria-describedby="basic">
      {assign var=val value=$val+1}

  {/foreach}
  </div>


{* {include file="lab/molecules/input/input-button.tpl" from=''} *}
