{extends file="base/guide-base.tpl"}
{block name="content"}
    <div id="page-wrapper">

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Buttons</h1>
            </div>
            <!--End Page Header -->
        </div>


        <div class="row">
            <div class="col-md-12">

                {foreach from=$approve item=foo}
                    <li>{$foo.brand}</li>
                    hi
                {/foreach}
            </div>
        </div>
    </div>
    <!-- end page-wrapper -->
{/block}