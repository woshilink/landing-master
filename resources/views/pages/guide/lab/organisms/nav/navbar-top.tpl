<!-- navbar top -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
    <!-- navbar-header -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

    </div>
    <!-- end navbar-header -->
    <!-- navbar-top-links -->
    <ul class="nav navbar-top-links navbar-right">
        <!-- main dropdown -->
        <li {if $section == 'typography' && $page == 'home'}class="bg-primary"{/if}>
            <a href="/guide/typography/home" >
                <i class="fa fa-font fa-3x" aria-hidden="true"></i>
            </a>
            <!-- dropdown-messages -->
        </li>
        <li {if $section == 'color' && $page == 'home'}class="bg-primary"{/if}>
            <a href="/guide/color/home" >
                <i class="fa fa-paint-brush fa-3x" aria-hidden="true"></i>
            </a>
            <!-- dropdown-messages -->
        </li>
        {*<li class="dropdown">*}
            {*<a class="dropdown-toggle" data-toggle="dropdown" href="#">*}
                {*<span class="top-label label label-danger">3</span><i class="fa fa-envelope fa-3x"></i>*}
            {*</a>*}
            {*<!-- dropdown-messages -->*}
            {*<ul class="dropdown-menu dropdown-messages">*}
                {*<li>*}
                    {*<a href="#">*}
                        {*<div>*}
                            {*<strong><span class=" label label-danger">Andrew Smith</span></strong>*}
                            {*<span class="pull-right text-muted">*}
                                        {*<em>Yesterday</em>*}
                                    {*</span>*}
                        {*</div>*}
                        {*<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>*}
                    {*</a>*}
                {*</li>*}
                {*<li class="divider"></li>*}
                {*<li>*}
                    {*<a href="#">*}
                        {*<div>*}
                            {*<strong><span class=" label label-info">Jonney Depp</span></strong>*}
                            {*<span class="pull-right text-muted">*}
                                        {*<em>Yesterday</em>*}
                                    {*</span>*}
                        {*</div>*}
                        {*<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>*}
                    {*</a>*}
                {*</li>*}
                {*<li class="divider"></li>*}
                {*<li>*}
                    {*<a href="#">*}
                        {*<div>*}
                            {*<strong><span class=" label label-success">Jonney Depp</span></strong>*}
                            {*<span class="pull-right text-muted">*}
                                        {*<em>Yesterday</em>*}
                                    {*</span>*}
                        {*</div>*}
                        {*<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>*}
                    {*</a>*}
                {*</li>*}
                {*<li class="divider"></li>*}
                {*<li>*}
                    {*<a class="text-center" href="#">*}
                        {*<strong>Read All Messages</strong>*}
                        {*<i class="fa fa-angle-right"></i>*}
                    {*</a>*}
                {*</li>*}
            {*</ul>*}
            {*<!-- end dropdown-messages -->*}
        {*</li>*}



    </ul>
    <!-- end navbar-top-links -->

</nav>
<!-- end navbar top -->