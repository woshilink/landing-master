{extends file="base/guide-base.tpl"}
{block name="head"}

{/block}
{block name="content"}
    <div id="page-wrapper" >

        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12">
                <h1 class="page-header">Color</h1>
            </div>
            <!--End Page Header -->
        </div>


        <div class="container-fluid">
            <div class="col-md-10">
               <section class="" id="netbet">
                   <div class="panel panel-default">
                       <div class="panel-body">
                           <p data-height="876" data-theme-id="dark" data-slug-hash="KajEqQ" data-default-tab="result" data-user="thiwwy" data-embed-version="2" data-pen-title="NetBet_CTA_Guideline_copy_code" class="codepen">See the Pen <a href="https://codepen.io/thiwwy/pen/KajEqQ/">NetBet_CTA_Guideline_copy_code</a> by Silvia (<a href="http://codepen.io/thiwwy">@thiwwy</a>) on <a href="http://codepen.io">CodePen</a>.</p>
                           <script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
                       </div>


                   </div>
               </section>
                <section class="" id="others">
                    <div class="panel panel-default">


                        <div class="panel-body">
                            <p data-height="927" data-theme-id="dark" data-slug-hash="mRqmqL" data-default-tab="result" data-user="thiwwy" data-embed-version="2" data-pen-title="Color_Guide" class="codepen">See the Pen <a href="https://codepen.io/thiwwy/pen/mRqmqL/">Color_Guide</a> by Silvia (<a href="http://codepen.io/thiwwy">@thiwwy</a>) on <a href="http://codepen.io">CodePen</a>.</p>
                            <script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-2">
                <div class="panel" style="position: fixed;">
                    <div class="panel-body">
                        <div  id="sidenav-nav">
                            <div class="list-group ">
                                <a href="#netbet" class="list-group-item">Netbet</a>
                                <a href="#others" class="list-group-item">Others</a>

                            </div>
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
                topMenuHeight = 100,
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