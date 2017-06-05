{extends file="base/guide-base.tpl"}
{block name="content"}
    <div id="page-wrapper" >

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Welcome</h1>
            </div>
            <!--End Page Header -->
        </div>


        <div class="container-fluid">
            <div class="col-md-10">
                <section id="intro">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="well">
                                <h3>
                                    Intoduction
                                </h3>
                                <hr>
                                <h4>
                                    Frontend Framework
                                </h4>
                                <p>
                                    <a href="https://getbootstrap.com/">Bootstrap</a> is the most popular HTML, CSS, and JS framework for developing responsive, mobile first projects on the web.
                                </p>
                                <h4>
                                    PHP Template Engine
                                </h4>
                                <p>
                                    we are using Smarty template engine to deal with our landing. You can find the reference here
                                    <a href="http://www.smarty.net/about_smarty">http://www.smarty.net/about_smarty</a><br>
                                    <div class="alert  alert-info"> <b>Information! </b>Nested Patterns and Nameing our template we use <a href="http://patternlab.io/">pattern lab</a> for our guide line</div>

                                </p>
                                <h4>
                                    Backend Application Framework.
                                </h4>
                                <p>
                                    Lumen is the perfect blazing fast APIs. In fact, it's one of the fastest micro-frameworks available. Document
                                    <a href="https://lumen.laravel.com/">Here</a>
                                </p>


                            </div>

                        </div>


                    </div>
                </section>
                <section id="project-directory">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="well">
                                <h3>Project Directory</h3>
                                <hr>

                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <ul>
                                            <li>
                                                app/ <span class="text-danger"><- we only focusing on models and controller</span>
                                                <ul>
                                                    <li>
                                                        Http/
                                                        <ul>
                                                            <li>Controller</li>
                                                            <li>Middlewere <span class="text-danger"><- this will take care of coding that will be excuted first but notthing to worry now</span></li>
                                                         </ul>

                                                    </li>
                                                    <li>Model/ <span class="text-danger"> <- landing page model is in here.</span></li>
                                                </ul>
                                            </li>

                                            <li>
                                                bootstrap/ <span class="text-danger"> <- project initialize  </span>
                                                <ul>
                                                    <li>app.php <span class="text-danger"> <- project initialization file</span></li>
                                                 </ul>
                                            </li>
                                            <li>
                                                config/ <span class="text-danger"> <- config files</span>
                                            </li>
                                            <li>
                                                database/ <span class="text-danger"> <- database file and its configuration </span>
                                            </li>
                                            <li>
                                                public/ <span class="text-danger"> <- Contain all web resource. CSS, JS, Fonts, Images </span>
                                            </li>
                                            <li>
                                                resources/ <span class="text-danger"> <- Contain all view component </span>
                                            </li>
                                            <li>
                                                routes/ <span class="text-danger"><- Contain all files to deal with routes</span>
                                            </li>
                                            <li>
                                                storage/
                                            </li>
                                            <li>
                                                tests/
                                            </li>


                                        </ul>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </section>

                <section id="view-directory">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="well">
                                <h3>View Component Directory</h3>
                                <hr>
                                <p>In <strong>resource/view</strong> directory we have</p>
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <ul>
                                            <li>
                                                base/ <span class="text-danger"><- This directory have all base instructor for all landing pages</span>
                                                <ul>
                                                    <li>include/ <span class="text-danger"> <- this for important things we haveto include for all landing pages</span></li>

                                                    <li>base.tpl <span class="text-danger"> <- all landing page have to extend this one.</span></li>
                                                    <li>example-template.tpl <span class="text-danger"> <- landing page example structure </span></li>

                                                </ul>

                                            </li>

                                            <li>
                                                lab/ <span class="text-danger"> <- Pattern Lab template system. Reference <a href="http://patternlab.io/">Pattern Lab</a> </span>
                                                <ul>
                                                    <li>atoms/</li>
                                                    <li>molecues/</li>
                                                    <li>organisms/</li>
                                                    <li>templates/</li>
                                                </ul>
                                            </li>
                                            <li>
                                                pages/
                                                <ul>
                                                    <li>errors</li>
                                                    <li>guide</li>
                                                    <li>landing <span class="text-danger"> <- all landig pages for each .tld will be in here.</span></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </section>

                <section id="lp-directory">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="well">
                                <h3>Landing Page Directory</h3>
                                <hr>
                                <p>We will mainly work on <strong>landing/</strong></p>

                                <div class="panel panel-default">

                                    <div class="panel-body">
                                        <ul>
                                            <li>
                                                landing/
                                                <ul>
                                                    <li>
                                                        brand.tld
                                                        <ul>
                                                            <li>all products <span class="text-danger"><- Inside this folder there will be landing pages folders which will refpresent to lp value</span></li>
                                                            <li>partials <span class="text-danger"><-  Thid folder will have something special for each .tld for example, licence text. footer logos</span></li>
                                                        </ul>
                                                    </li>

                                                </ul>
                                            </li>
                                        </ul>
                                        <hr>
                                        <p>example directory for <strong>netbet.co.uk</strong> we will have.</p>
                                        <ul>
                                            <li>
                                                landing/
                                                <ul>
                                                    <li>
                                                        netbetcouk
                                                        <ul>
                                                            <li>casino</li>
                                                            <li>live</li>
                                                            <li>partials</li>
                                                            <li>poker</li>
                                                            <li>sport</li>
                                                            <li>terms <span class="text-danger"> <- terms for each product</span></li>
                                                            <li>vegas</li>
                                                        </ul>
                                                    </li>

                                                </ul>
                                            </li>
                                        </ul>


                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- end page-wrapper -->
                </section>




            </div>
            <div class="col-md-2">
                <div class="panel" style="position: fixed;">
                    <div class="panel-body">
                        <div  id="sidenav-nav">
                            <div class="list-group ">

                                    <a href="#intro"  class="list-group-item">Introduction</a>

                                    <a href="#project-directory"  class="list-group-item">Project Directory </a>


                                    <a href="#view-directory" class="list-group-item">View Component Directory</a>



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
                topMenuHeight = topMenu.outerHeight()-20,
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