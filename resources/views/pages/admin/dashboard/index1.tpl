{extends file="base/admin-base.tpl"}

{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}

{block name="head"}


{/block}
{block name=body}
    <div id="app">
        <router-link to="/">Go to home</router-link>
        <router-link to="/bar">Go to Bar</router-link>
        <router-view></router-view>
    </div>
{/block}
{block name=footer}
    <script src="src/js/app.js"></script>

{/block}