{extends file="base/admin-base.tpl"}

{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}

{block name="head"}

    <style>
        div.dataTables_wrapper div.dataTables_filter {
            text-align: right;
        }
        div.dataTables_wrapper div.dataTables_paginate {
            margin: 0;
            white-space: nowrap;
            text-align: right;
        }
    </style>
{/block}
{block name=body}

    <div class="col-md-10">
        <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    <h2>Landing Pages List</h2>
                    <table id="landing-table" class="table table-striped display" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Domain</th>
                            <th>Product</th>
                            <th>Host</th>
                            <th>lp value</th>
                            <th>Language</th>
                            <th>Url</th>
                            <th>Start</th>
                            <th>End</th>
                            <th class="text-center">Avaliable</th>

                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>Domain</th>
                            <th>Product</th>
                            <th>Host</th>
                            <th>lp value</th>
                            <th>Language</th>
                            <th>Url</th>
                            <th>Start</th>
                            <th>End</th>
                            <th class="text-center">Avaliable</th>

                        </tr>
                        </tfoot>
                        <tbody>
                        {foreach from=$pages key=$key item=$list}
                            <tr>
                                <td>{$list.brand}</td>
                                <td>{$list.product}</td>
                                <td>
                                    {if $list.only_host == true}
                                        <p class="text-success">Yes</p>
                                    {else}
                                        <p class="text-danger">No</p>
                                    {/if}
                                </td>
                                <td>{$list.lp}</td>
                                <td>{$list.language}</td>
                                <td><a href="{$list.url}" target="_blank">{$list.url}</a></td>
                                <td>{$list.begin}</td>
                                <td>
                                    {if $list.end == '0000-00-00 00:00:00'}
                                        No end date
                                    {else}
                                        {$list.end}
                                    {/if}
                                </td>
                                <td class="text-center">
                                    {if $list.avaliable}
                                        <span class="label label-success">Avaliable</span>
                                    {else}
                                        <span class="label label-warning">No Template</span>
                                    {/if}

                                </td>

                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-2">
        {if $notApproveTemplates}
            <div class="row">
                <div class="col-xs-12">

                    {foreach from=$notApproveTemplates key=k item=lp}
                        <div class="alert alert-warning alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>{$lp.brand} : {$lp.lp}</strong> not approve yet! <a href="{$lp.link}&mode=dev" target="_blank" class="alert-link">Link</a>
                        </div>
                    {/foreach}

                </div>
            </div>
        {/if}
    </div>
{/block}
{block name=footer}
    <script src="{url('/')}/src/js/jquery.dataTables.min.js"></script>
    <script src="{url('/')}/src/js/dataTables.bootstrap.min.js"></script>
    <script src="{url('/')}/src/js/"></script>
    <script type="text/javascript">

            $('#landing-table').DataTable();

    </script>
{/block}