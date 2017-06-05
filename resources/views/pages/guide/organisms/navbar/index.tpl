{extends file="base/guide-base.tpl"}
        {block name="content"}
            <div id="page-wrapper" >

                <div class="row">
                    <!-- Page Header -->
                    <div class="col-lg-12">
                        <h1 class="page-header">Nav Bar</h1>
                    </div>
                    <!--End Page Header -->
                </div>


                <div class="container-fluid">
                    <div class="col-md-10">




                        <section id="normal-nav">
                            <div class="row">
                            <div class="col-xs-12">
                                <div class="well">
                                    <h3>Template Component</h3>
                                    <hr>
                                    <p>We have also template component that we commonly include for every template</p>
                                    <div class="panel">
                                        <div class="panel-body">
                                        <h4>Normal Nav Bar</h4>

                                               {literal}
                                                     <pre class=" line-numbers">
                                                        <code class="language-smarty">
                                                            &lt;section id="main-nav"&gt;
                                                                &lt;nav class="navbar black-transparent navbar-fixed-top"&gt;
                                                                    &lt;div class="container"&gt;
                                                                        {include file="lab/organisms/nav/nav-main.tpl" text=$text}
                                                                    &lt;/div&gt;
                                                                &lt;/nav&gt;
                                                            &lt;/section&gt;
                                                        </code>
                                                    </pre>
                                                {/literal}

                                                 <h5>result</h5>
                                                {$nav_logo_mid = true}
                                                <section id="main-nav">
                                                    <nav class="navbar navbar-inverse ">
                                                         <div class="container">
                                                              <div class="row">
                                                                  <div id="logo" class="col-xs-6 col-sm-4 ">
                                                                        <img src="{url('/')}/src/img/netbet/logo.png" alt="{$brand}" class="pull-left img-responsive" >
                                                                  </div>
                                                                  <div class="col-xs-6 col-sm-4">
                                                                         <h4 class=" text-center text-danger">Hello!</h4>
                                                                   </div>
                                                                  <div class="col-xs-6 col-sm-4 co-logo pull-right">
                                                                         <img src="{url('/')}/lp-asset/netbetcom/cologo/sport/top10.png" class="img-responsive center-block" alt="">
                                                                   </div>
                                                                        <!-- end of co logo -->

                                                                    </div>
                                                     </nav>
                                                 </section>


                                        </div>




                                    </div>
                                </div>
                            </div>
                            </div>
                        </section>

                        <section id="nav-logo-mid">
                               <div class="row">
                                    <div class="col-xs-12">
                                        <div class="well">
                                        <div class="panel">
                                        <div class="panel-body">
                                         <h4>Co brand logo appear in the middle of Nav Bar</h4>
                                          {literal}
                                                <pre class=" line-numbers">
                                                    <code class="language-smarty">
                                                         {* activate co brand logo in the middle of nav bar when when parameter logo=somelogo pass in the url*}

                                                          &lt;section id="main-nav"&gt;
                                                                &lt;nav class="navbar black-transparent navbar-fixed-top"&gt;
                                                                    &lt;div class="container"&gt;
                                                                        {include file="lab/organisms/nav/nav-main.tpl"
                                                                            text=$text
                                                                            nav_logo_mid = true
                                                                        }
                                                                    &lt;/div&gt;
                                                                &lt;/nav&gt;
                                                           &lt;/section&gt;
                                                    </code>
                                                </pre>
                                          {/literal}

                                                 <h5>result</h5>
                                                {$nav_logo_mid = true}
                                                <section id="main-nav">
                                                    <nav class="navbar navbar-inverse ">
                                                         <div class="container">
                                                              <div class="row">
                                                                  <div id="logo" class="col-xs-6 col-sm-4 ">
                                                                        <img src="{url('/')}/src/img/netbet/logo.png" alt="{$brand}" class="pull-left img-responsive" >
                                                                  </div>
                                                                  <div class="col-xs-6 col-sm-4 co-logo">
                                                                         <img src="{url('/')}/lp-asset/netbetcom/cologo/sport/top10.png" class="img-responsive center-block" alt="">
                                                                   </div>
                                                                        <!-- end of co logo -->

                                                                    </div>
                                                     </nav>
                                                 </section>
                                        </div>
                                        </div>
                                        </div>
                                    </div>
                               </div>

                        </section>

                        <section id="nav-lang-dropdown">
                               <div class="row">
                                    <div class="col-xs-12">
                                        <div class="well">
                                        <div class="panel">
                                        <div class="panel-body">
                                         <h4>Language Dropdown button</h4>
                                          {literal}
                                                <pre class=" line-numbers">
                                                    <code class="language-smarty">
                                                         {* activate co brand logo in the middle of nav bar when when parameter logo=somelogo pass in the url*}

                                                          {$languages = ['en' => 'EN','nl' => 'NL','fr' => 'FR']}
                                                          &lt;section id="main-nav"&gt;
                                                                &lt;nav class="navbar black-transparent navbar-fixed-top"&gt;
                                                                    &lt;div class="container"&gt;
                                                                        {include file="lab/organisms/nav/nav-main.tpl"
                                                                            languages=$languages
                                                                            lang_dropdown=true
                                                                        }
                                                                    &lt;/div&gt;
                                                                &lt;/nav&gt;
                                                           &lt;/section&gt;
                                                    </code>
                                                </pre>
                                          {/literal}

                                                 <h5>result</h5>
                                                {$lang_option == true}
                                                 {$languages = ['en' => 'EN','nl' => 'NL','fr' => 'FR']}
                                                <section id="main-nav">
                                                    <nav class="navbar navbar-inverse ">
                                                         <div class="container">
                                                              <div class="row">
                                                                  <div id="logo" class="col-xs-6 col-sm-4 ">
                                                                        <img src="{url('/')}/src/img/netbet/logo.png" alt="{$brand}" class="pull-left img-responsive" >
                                                                  </div>
                                                                  <div class="col-xs-6 col-sm-4 pull-right ">
                                                                    <div class="lang-selector pull-right " style=" text-transform: uppercase;">
                                                                        <div class="dropdown">
                                                                          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                            FR
                                                                            <span class="caret"></span>
                                                                          </button>
                                                                          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                                            <li><a href="#">NL</a></li>
                                                                            <li><a href="#">EN</a></li>

                                                                          </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                 <!-- end of co logo -->

                                                              </div>
                                                     </nav>
                                                 </section>
                                        </div>
                                        </div>
                                        </div>
                                    </div>
                               </div>

                        </section>

                        <section id="nav-lang-option">
                               <div class="row">
                                    <div class="col-xs-12">
                                        <div class="well">
                                        <div class="panel">
                                        <div class="panel-body">
                                         <h4>Language option button</h4>
                                          {literal}
                                                <pre class=" line-numbers">
                                                    <code class="language-smarty">
                                                         {* activate co brand logo in the middle of nav bar when when parameter logo=somelogo pass in the url*}

                                                          {$languages = ['en' => 'English','nl' => 'Nederlands','fr' => 'Français']}
                                                          &lt;section id="main-nav"&gt;
                                                                &lt;nav class="navbar black-transparent navbar-fixed-top"&gt;
                                                                    &lt;div class="container"&gt;
                                                                        {include file="lab/organisms/nav/nav-main.tpl"
                                                                            languages=$languages
                                                                            lang_option=true
                                                                         }
                                                                    &lt;/div&gt;
                                                                &lt;/nav&gt;
                                                           &lt;/section&gt;
                                                    </code>
                                                </pre>
                                          {/literal}

                                                 <h5>result</h5>
                                                {$lang_option == true}
                                                {$languages = ['en' => 'English','nl' => 'Nederlands','fr' => 'Français']}
                                                <section id="main-nav">
                                                    <nav class="navbar navbar-inverse ">
                                                         <div class="container">
                                                              <div class="row">
                                                                  <div id="logo" class="col-xs-6 col-sm-4 ">
                                                                        <img src="{url('/')}/src/img/netbet/logo.png" alt="{$brand}" class="pull-left img-responsive" >
                                                                  </div>
                                                                  <div class="col-xs-6 col-sm-4 pull-right ">
                                                                                {include file="lab/molecules/nav/lang-option/lang-option.tpl" languages=$languages }
                                                                  </div>
                                                                 <!-- end of co logo -->

                                                              </div>
                                                     </nav>
                                                 </section>
                                        </div>
                                        </div>
                                        </div>
                                    </div>
                               </div>

                        </section>

                    </div>
                    <div class="col-md-2">
                        <div class="panel" style="position: fixed;">
                            <div class="panel-body">
                                <div  id="sidenav-nav">
                                    <div class="list-group ">

                                        <a href="#normal-nav" class="list-group-item"> Normal</a>
                                        <a href="#nav-logo-mid" class="list-group-item">Logo appear mid</a>
                                        <a href="#nav-lang-dropdown" class="list-group-item">languages dropdown</a>
                                        <a href="#nav-lang-option" class="list-group-item">languages option</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        {/block}

{block name="js"}
       <script type="text/javascript">

            // Cache selectors
            var lastId,
                topMenu = $("#sidenav-nav"),
                topMenuHeight = 90,
                // All list items
                menuItems = topMenu.find("a"),
                // Anchors corresponding to menu items
                scrollItems = menuItems.map(function(){
                  var item = $($(this).attr("href"));
                  if (item.length) { return item; }
                });

            // Bind click handler to menu items
            // so we can get a fancy scroll animation
            menuItems.click(function(e){
              var href = $(this).attr("href"),
                  offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;
              $('html, body').stop().animate({
                  scrollTop: offsetTop
              }, 300);
              e.preventDefault();
            });

            // Bind to scroll
            $(window).scroll(function(){
               // Get container scroll position
               var fromTop = $(this).scrollTop()+topMenuHeight;

               // Get id of current scroll item
               var cur = scrollItems.map(function(){
                 if ($(this).offset().top < fromTop)
                   return this;
               });


               // Get the id of the current element
               cur = cur[cur.length-1];

               var id = cur && cur.length ? cur[0].id : "";

               if (lastId !== id) {
                   lastId = id;
                   // Set/remove active class
                   menuItems
                     .removeClass("active")
                     .end().find("[href='#"+id+"']").addClass("active");

               }
            });
        </script>
{/block}