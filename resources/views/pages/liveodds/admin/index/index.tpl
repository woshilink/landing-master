{extends file="base/base.tpl"}

{block name="title"}
    Live odds Landing Page Admin
{/block}

{block name="head"}

{/block}
{block name="body"}
    <div class="container">

        <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Live Odds</h3>
                    </div>
                    <div class="panel-body">
                        <form>
                            <fieldset>
                                <div class="form-group">
                                    <label class="control-label col-md-2">Sport</label>
                                    <div class="col-md-10">
                                        <select class="form-control">
                                            <option>Football</option>
                                            <option>Tennis</option>
                                        </select>
                                    </div>
                                </div>

                            </fieldset>
                        </form>
                    </div>
                </div>
            </div><!--/.col-xs-12.col-sm-9-->
        </div><!--/row-->

        <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Live Odds</h3>
                    </div>
                    <div class="panel-body">
                        Panel content
                    </div>
                </div>
            </div><!--/.col-xs-12.col-sm-9-->
        </div><!--/row-->

    </div>
{/block}

{block name="footer"}
    <script src="{url('/')}/src/js/vue/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/vue.resource/1.3.1/vue-resource.min.js"></script>
    <script src="{url('/')}/src/js/jquery.dataTables.min.js"></script>
    <script src="{url('/')}/src/js/dataTables.bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {

            var messages = [];
            $.getJSON('/api/odds/soccer/fractional', function (data) {


            });
        });
    </script>
{/block}