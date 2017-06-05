<!-- Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">You Are Existing Customer!</h4>
            </div>
            <form class="form-horizontal">
            <div class="modal-body">

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="username">{$txtusername|default:'User Name'}</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="username" placeholder="{$txtusername|default:'User Name'}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"  for="password">{$txtpassword|default:'Password'}</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" placeholder="{$txtpassword|default:'Password'}">
                        </div>
                    </div>



            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"> {$txtclose|default:'Close'}</button>
                <button type="submit" class="btn btn-login"> {$txtlogin|default:'Log In'}</button>
            </div>
            </form>
        </div>
    </div>
</div>