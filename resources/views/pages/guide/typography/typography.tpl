
{extends 'base/styleguide-base.tpl'}
{assign var="title" value='Typography'}
{assign "page" "typography"}

{block name=head}
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans+Condensed:300,700|Oswald:300,400,700|Poppins:400,700|Rajdhani:700" rel="stylesheet">
<style media="screen">


.montserrat {
  font-family: "Montserrat", sans-serif;
}

.rajdhani {
  font-family: "Rajdhani", sans-serif;
}

.poppins {
  font-family: "Poppins", sans-serif;
}

.oswald {
  font-family: "Oswald", sans-serif;
}

.openSans {
  font-family: "Open Sans Condensed", sans-serif;
}

</style>
{/block}
{block name=body}
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Typography</h1>
                            <h3 class="sub-header"><span></span></h3>
                              <div class="row">

                                <div class="col-xs-6 ">
                                  <h4> <span class="label label-info">Universal Use</span></h4>
                                  <pre class="line-numbers">
                                    <code class="language-html">
                                      //include in header
                                      &lt;link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"&gt;
                                    </code>
                                  </pre>
                                  <pre class="line-numbers">
                                    <code class="language-css" >
                                        font-family: 'Montserrat',sans-serif;
                                    </code>
                                  </pre>
                                  <hr class="top"/>
                                  <div class="montserrat">
                                    <h1><strong>Title H1</strong></h1>
                                    <h2>Title H2</h2>
                                    <h3>Title H3</h3>
                                    <h4>Title H4</h4>
                                    <h5>Title H5</h5>
                                    <h6>Title H6</h6>
                                    <p>text</p>
                                    <h2><strong>0123456789</strong></h2>
                                    <h3><strong>0123456789</strong></h3>
                                  </div>


                                </div>
                                <div class="col-xs-6 ">
                                  <h4><span class="label label-info">number Use</span></h4>
                                  <pre class="line-numbers">
                                    <code class="language-html">
                                      //include in header
                                      &lt;link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet"&gt;
                                    </code>
                                  </pre>
                                  <pre class="line-numbers">
                                    <code class="language-css" >
                                        font-family: 'Rajdhani',sans-serif;
                                    </code>
                                  </pre>

                                  <hr class="top"/>
                                  <div class="rajdhani">
                                    <h1><strong>Title H1</strong></h1>
                                    <h2>Title H2</h2>
                                    <h3>Title H3</h3>
                                    <h4>Title H4</h4>
                                    <h5>Title H5</h5>
                                    <h6>Title H6</h6>
                                    <p>text</p>
                                    <h2><strong>0123456789</strong></h2>
                                    <h3><strong>0123456789</strong></h3>
                                  </div>
                                </div>
                              </div>
                              <hr/>
                              <div class="row">
                                <div class="col-xs-6">
                                  <h4><span class="label label-info">Romanian support</span></h4>
                                  <pre class="line-numbers">
                                    <code class="language-html">
                                      //include in header
                                      &lt;link href="https://fonts.googleapis.com/css?family=Poppins:400,700" rel="stylesheet"&gt;
                                    </code>
                                  </pre>
                                  <pre class="line-numbers">
                                    <code class="language-css" >
                                        font-family: 'Poppins',sans-serif;
                                    </code>
                                  </pre>

                                  <hr class="top"/>
                                  <div class="poppins">
                                    <h1><strong>Title H1</strong></h1>
                                    <h2>Title H2</h2>
                                    <h3>Title H3</h3>
                                    <h4>Title H4</h4>
                                    <h5>Title H5</h5>
                                    <h6>Title H6</h6>
                                    <p>text</p>
                                    <h2><strong>0123456789</strong></h2>
                                    <h3><strong>0123456789</strong></h3>
                                  </div>
                                </div>



                                <div class="col-xs-6">
                                  <h4><span class="label label-info">bebas replace</span></h4>
                                  <pre class="line-numbers">
                                    <code class="language-html">
                                      //include in header
                                      &lt;link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet"&gt;
                                    </code>
                                  </pre>
                                  <pre class="line-numbers">
                                    <code class="language-css" >
                                        font-family: 'Oswald',sans-serif;
                                    </code>
                                  </pre>

                                  <hr class="top"/>
                                  <div class="oswald">
                                    <h1><strong>Title H1</strong></h1>
                                    <h2>Title H2</h2>
                                    <h3>Title H3</h3>
                                    <h4>Title H4</h4>
                                    <h5>Title H5</h5>
                                    <h6>Title H6</h6>
                                    <p>text</p>
                                    <h2><strong>0123456789</strong></h2>
                                    <h3><strong>0123456789</strong></h3>
                                  </div>
                                </div>
                                <div class="col-xs-6">
                                  <h4><span class="label label-info">Long words like DE</span></h4>
                                  <pre class="line-numbers">
                                    <code class="language-html">
                                      //include in header
                                      &lt;link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet"&gt;
                                    </code>
                                  </pre>
                                  <pre class="line-numbers">
                                    <code class="language-css" >
                                        font-family: 'Open Sans Condensed',sans-serif;
                                    </code>
                                  </pre>

                                  <hr class="top"/>
                                  <div class="openSans">
                                    <h1><strong>Title H1</strong></h1>
                                    <h2>Title H2</h2>
                                    <h3>Title H3</h3>
                                    <h4>Title H4</h4>
                                    <h5>Title H5</h5>
                                    <h6>Title H6</h6>
                                    <p>text</p>
                                    <h2><strong>0123456789</strong></h2>
                                    <h3><strong>0123456789</strong></h3>
                                  </div>
                                </div>
                              </div>
                    </div>
                </div>
            </div>
{/block}
