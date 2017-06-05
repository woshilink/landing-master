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


                        <section id="lp-directory">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="well">
                                        <h3>Landing Page Directory</h3>
                                        <hr>
                                        <p>We will mainly work on <strong>landing/</strong> which will be placed in <strong>resources/view/pages/<u>landing/</u></strong></p>

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

                        <section id="lp-template">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="well">
                                        <h3>Landing Page Template inheritance</h3>
                                        <hr>
                                        <div class="bs-callout bs-callout-info">
                                            <div class="alert alert-danger" role="alert">
                                                <p><strong>Note!</strong> All landing page we must extend the master template which is in <strong>base/base.tpl</strong> which will include all element that all landing pages need.<span class="text-warning"> Etc, google tag manager, default css, default .js</span></p>

                                            </div>

                                        </div>

                                        <div class="panel panel-default">

                                            <div class="panel-body">
                                                <p>You can see <strong>base/example-template.tpl</strong> as a reference. For example:</p>
                                                {literal}
                                                    <pre class=" line-numbers">
                                        <code class="language-smarty">
                                                    {extends file="base/base.tpl"}
                                                    {block name=title}
                                                        {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
                                                    {/block}
                                                    {block name=head}
                                                        Extra css and other code for head
                                                    {/block}
                                                    {block name=body}
                                                        HTML Content goes here
                                                    {/block}
                                                    {block name=footer}
                                                        Mainly Javascript goes here
                                                    {/block}
                                        </code>
                                    </pre>
                                                {/literal}
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- end page-wrapper -->
                        </section>

                        <section id="url-variables">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="well">
                                        <h3>Landing Page Url Variables</h3>                                                                                                                                                                                                                                                          <p>On every landing page url we pass some variables to get some data from url to specify which landing page and cta target.</p>
                                        <div class="panel">
                                            <div class="panel-body">
                                                <p>For example</p>
                                                <p class="text-warning">https://go.netbet.com/casino/?lp=spin-now&lang=de&id=12345&ck=yes&t=register</p>
                                                <hr>

                                                <p>lp = landing page name </p>
                                                <p>id = id of affiliation</p>
                                                <p>lang = specify which language</p>
                                                <p>t = cta reditection target</p>
                                                <p>ck = activate cookies</p>

                                                <div class="alert alert-danger" role="alert">
                                                    <p><strong>Information!</strong> Another most important path is <mark>https://go.netbet.com/<u>casino</u>/</mark> which will specify which product of landing pages.</p>
                                                    <p><mark>https://go.netbet.com/<u>sport</u>/ This will specify product = <u>sport</u></mark> </p>
                                                </div>

                                                <div class="alert alert-info" role="alert">
                                                    <p><strong>More information!</strong> all of these variable will be saved in template variables</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section id="template-variables">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="well">
                                    <h3>Template Variables</h3>
                                       <hr>
                                       <p>Every template we have default template variables that we usually  put these variable inside our smarty template engine</p>
                                       <div class="panel">

                                           <div class="panel-body">

                                                <table class="table table-condensed">
                                                    <tr>
                                                       <th>Variable Name</th>
                                                       <th>Description</th>
                                                    </tr>
                                                    <tr>
                                                        {literal}<td>{$domain}</td>{/literal}
                                                        <td>Return host name and tld name. E.g. http://go.netbet.co.uk/ will return <mark>netbetcouk</mark> <br>
                                                       {literal} <div class="text-danger">this will not work for netbet.ch, netbet.ru, netbet.ie, netbet.de, netbet.ca because it will return <mark>"netbetcom" use {$realDomain} instead</mark></div></td>{/literal}
                                                    </tr>
                                                    <tr>
                                                        {literal}
                                                        <td>{$realDomain}</td>
                                                        <td>
                                                         <div class="text-danger">only  work for netbet.ch, netbet.ru, netbet.ie, netbet.de, netbet.ca</div>
                                                         Return host name and tld name. E.g. http://go.netbet.ca/ will return <mark>netbetca</mark> <br>

                                                        </td>{/literal}
                                                     </tr>
                                                    <tr>
                                                        {literal}<td>{$brand}</td>{/literal}
                                                        <td>Return brand name from url . E.g. http://go.netbet.com/casino will return <mark>netbet</mark></td>
                                                    </tr>
                                                    <tr>
                                                       {literal}<td>{$product}</td>{/literal}
                                                        <td>Return product name from url . E.g. http://go.netbet.com/casino will return <mark>casino</mark></td>
                                                    </tr>
                                                    <tr>
                                                        {literal}<td>{$lang}</td>{/literal}
                                                        <td>Return languages. E.g. http://go.netbet.com/casino?lang=de  will return <mark>de</mark></td>
                                                    </tr>
                                                    <tr>
                                                        {literal}<td>{$lp}</td>{/literal}
                                                        <td>Return landing pages name from &lp= in the url. E.g. http://go.netbet.com/casino?lp=best-casino  will return <mark>best-casino</mark></td>
                                                    </tr>

                                                    <tr>
                                                        {literal}<td>{$cta.(product)}</td>{/literal}
                                                        {literal} <td>Return cta redirection url for product you specify <mark>example used: {$cta.sport}, {$cta.casino}, {$cta.live}</mark><div class="text-danger">wiil return blank if the product is not a available</div></td>{/literal}
                                                    </tr>
                                                      <tr>
                                                        {literal}<td>{$text}</td>{/literal}
                                                        {literal} <td>Return text</mark><div class="text-danger">wiil return blank if the product is not a available</div></td>{/literal}
                                                    </tr>

                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section id="component">
                            <div class="row">
                            <div class="col-xs-12">
                                <div class="well">
                                    <h3>Template Component</h3>
                                    <hr>
                                    <p>We have also template component that we commonly include for every template</p>
                                    <div class="panel">
                                        <div class="panel-body">
                                        <h4>Nav Bar</h4>
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
                                        </div>
                                        <div class="panel-body">
                                        <h4>Footer </h4>
                                               {literal}

                                                     <pre class=" line-numbers">
                                                        <code class="language-smarty">
                                                             &lt;section id="footer" class="bg-darkgrey"&gt;
                                                                &lt;div class="container"&gt;
                                                                    {include file="lab/organisms/footer/footer-main.tpl"}
                                                                &lt;/div&gt;
                                                            &lt;/section&gt;
                                                        </code>
                                                    </pre>
                                                {/literal}
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
                                        <a href="#lp-directory" class="list-group-item"> Directory</a>
                                        <a href="#lp-template" class="list-group-item"> Page Template</a>
                                        <a href="#url-variables" class="list-group-item"> Url Variables</a>
                                        <a href="#template-variables" class="list-group-item"> Template Variables</a>
                                        <a href="#component" class="list-group-item"> Component</a>
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