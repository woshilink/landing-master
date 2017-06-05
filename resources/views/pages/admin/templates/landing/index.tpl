{extends file="base/admin-base.tpl"}

{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}

{block name="head"}


{/block}
{block name=body}
    <div id="app">
        <div class="col-md-9">
            <div class="row">
                <div class="col-xs-12">
                    <Landing></Landing>
                </div>
            </div>
        </div>
    </div>
{/block}
{block name=footer}
    <script src="{url('/')}/src/js/app.js"></script>
{/block}

