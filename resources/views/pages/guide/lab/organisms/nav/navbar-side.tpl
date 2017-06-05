<!-- navbar side -->
<nav class="navbar-default navbar-static-side" role="navigation">
    <!-- sidebar-collapse -->
    <div class="sidebar-collapse">
        <!-- side-menu -->
        <ul class="nav" id="side-menu">
            <li>
                <!-- user image section-->
                <div class="user-section">
                    <div class="user-section-inner">
                        <img src="/src/img/user.jpg" alt="">
                    </div>
                    <div class="user-info">
                        <div> <strong>DEV</strong></div>
                        <div class="user-text-online">
                            <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                        </div>
                    </div>
                </div>
                <!--end user image section-->
            </li>
            <li class="sidebar-search">
                <!-- search section-->
                <div class="input-group custom-search-form">

                </div>
                <!--end search section-->
            </li>
            <li class="{if $section == 'startup'}active{/if}">
                <a href="#"><i class="fa fa-dashboard fa-fw"></i>Startup Guide<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="{if $section == 'startup' && $page == 'home'}selected{/if}">
                        <a href="/guide/startup/home">About this project</a>
                    </li>
                    <li class="{if $section == 'startup' && $page == 'templates'}selected{/if}">
                        <a href="/guide/startup/templates">Landing pages</a>
                    </li>

                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-circle-thin fr-fw" aria-hidden="true"></i> Atoms<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/guide/atoms/button">Buttons</a>
                    </li>

                </ul>
                <!-- second-level-items -->
            </li>
            <li>
                <a href="/guide/startup/home"><i class="fa fa-flask fa-fw"></i>Molecules</a>
            </li>
            <li class="{if $section == 'organisms'}active{/if}">
                <a href="/guide/organisms/navbar"><i class="fa fa-table fa-fw"></i>Organisms<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class="{if $section == 'organisms' && $page == 'navbar'}selected{/if}">
                        <a href="/guide/organisms/navbar">Nav Bar</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="/guide/startup/home"><i class="fa fa-edit fa-fw"></i>Templates</a>
            </li>
            <li>
                <a href=""><i class="fa fa-wrench fa-fw"></i>UI Elements<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/guide/startup/home">Panels and Wells</a>
                    </li>
                    <li>
                        <a href="/guide/startup/home">Buttons</a>
                    </li>
                    <li>
                        <a href="/guide/startup/home">Notifications</a>
                    </li>
                    <li>
                        <a href="/guide/startup/home">Typography</a>
                    </li>
                    <li>
                        <a href="/guide/startup/home">Grid</a>
                    </li>
                </ul>
                <!-- second-level-items -->
            </li>
            {*<li>*}
                {*<a href="#"><i class="fa fa-sitemap fa-fw"></i>Multi-Level Dropdown<span class="fa arrow"></span></a>*}
                {*<ul class="nav nav-second-level">*}
                    {*<li>*}
                        {*<a href="#">Second Level Item</a>*}
                    {*</li>*}
                    {*<li>*}
                        {*<a href="#">Second Level Item</a>*}
                    {*</li>*}
                    {*<li>*}
                        {*<a href="#">Third Level <span class="fa arrow"></span></a>*}
                        {*<ul class="nav nav-third-level">*}
                            {*<li>*}
                                {*<a href="#">Third Level Item</a>*}
                            {*</li>*}
                            {*<li>*}
                                {*<a href="#">Third Level Item</a>*}
                            {*</li>*}
                            {*<li>*}
                                {*<a href="#">Third Level Item</a>*}
                            {*</li>*}
                            {*<li>*}
                                {*<a href="#">Third Level Item</a>*}
                            {*</li>*}
                        {*</ul>*}
                        {*<!-- third-level-items -->*}
                    {*</li>*}
                {*</ul>*}
                {*<!-- second-level-items -->*}
            {*</li>*}
            <li>
                <a href="#"><i class="fa fa-files-o fa-fw"></i>Sample Pages<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/guide/startup/home">Blank Page</a>
                    </li>
                    <li>
                        <a href="/guide/startup/home">Login Page</a>
                    </li>
                </ul>
                <!-- second-level-items -->
            </li>
        </ul>
        <!-- end side-menu -->
    </div>
    <!-- end sidebar-collapse -->
</nav>
<!-- end navbar side -->