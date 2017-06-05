<div class="sidebar content-box" style="display: block;">
    {*<ul class="nav">*}
        {*<!-- Main menu -->*}
        {*<li {if $page == 'dashboard'}class="current"{/if}><a href="{route('admin.dashboard',['use' => $user.api_token])}"><i class="glyphicon glyphicon-home"></i> Dashboard</a></li>*}
        {*<li {if $page == 'portforlio'}class="current"{/if}><a href="{route('admin.portforlio', ['use' => $user.api_token])}"><i class="glyphicon glyphicon-pencil"></i> Port forlio</a></li>*}
        {*<li class="{if $page == 'templates'}current{/if} submenu">*}
            {*<a href="#">*}
                {*<i class="glyphicon glyphicon-list"></i> Templates*}
                {*<span class="caret pull-right"></span>*}
            {*</a>*}
            {*<!-- Sub menu -->*}
            {*<ul>*}
                {*<li {if $section == 'landing'}class="current"{/if}><a href="{route('admin.templates.landing', ['use' => $user.api_token])}"><i class="glyphicon glyphicon-file"></i>Landing Pages</a></li>*}
                {*<li><a href="{route('admin.templates.html5', ['use' => $user.api_token])}"><i class="glyphicon glyphicon glyphicon-stop"></i> HTML5 Banner</a></li>*}
            {*</ul>*}
        {*</li>*}
    {*</ul>*}
    <ul class="nav">
        <router-link tag="li"to="/" exact>
            <a><i class="glyphicon glyphicon-home"></i>Dashboard</a>
        </router-link>
        <router-link tag="li"to="/portforlio">
            <a><i class="glyphicon glyphicon-pencil"></i>Portforlio</a>
        </router-link>
        <li class="submenu">
            <a>
                <i class="glyphicon glyphicon-list"></i> Templates
                <span class="caret pull-right"></span>
            </a>

            <ul>
                <router-link tag="li"to="/landing">
                    <a><i class="glyphicon glyphicon-file"></i> Landing Pages</a>
                </router-link>
                <router-link tag="li"to="/html5">
                    <a><i class="glyphicon glyphicon glyphicon-stop"></i> HTML5 Banner</a>
                </router-link>
                <router-link tag="li"to="/unused">
                    <a><i class="glyphicon glyphicon glyphicon-folder-open"></i>  Unused Templates</a>
                </router-link>
            </ul>
        </li>
    </ul>
</div>