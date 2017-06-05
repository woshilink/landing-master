
{extends 'base/styleguide-base.tpl'}
{assign "title" 'Button Guide'}
{assign "section" "atoms"}
{assign "page" "button"}

{block name=head}

{/block}
{block name=body}
            <div class="container-fluid">
                <div class="row">
                  <h1 class="page-header">Guide Board</h1>
                  <h3 class="sub-header">Sport Buttons<span></span></h3>
                  <div class="row">
                      <div class="col-lg-6">
                        <div class="panel panel-default">
                          <div class="panel-body">
                            <button type="button" class="btn-green-shiny  btn-lg">
                              BET NOW
                            </button>
                          </div>
                          <div class="panel-footer">

                              <a class="btn btn-success center-block" role="button" data-toggle="collapse" href="#btn-green-shiny" aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa fa-code" aria-hidden="true"></i>  View Code
                              </a>

                              <div class="collapse" id="btn-green-shiny">
                                <pre class="line-numbers">
                                  <code class="language-html" >&lt;button type="button" class="btn btn-green-shiny  btn-lg"&gt;
                                    BET NOW
                                  &lt;/button&gt;
                                  </code>
                                </pre>

                              </div>
                            </div>
                          </div>
                        </div>
                        {* End of col-lg-6 *}
                        <div class="col-lg-6">
                          <div class="panel panel-default">
                            <div class="panel-body">
                              <button type="button" class=" btn-yellow-normal text-center">
                                BET NOW
                              </button>
                            </div>
                            <div class="panel-footer">

                                <a class="btn btn-success center-block" role="button" data-toggle="collapse" href="#btn-yellow-normal" aria-expanded="false" aria-controls="collapseExample">
                                  <i class="fa fa-code" aria-hidden="true"></i>  View Code
                                </a>

                                <div class="collapse" id="btn-yellow-normal">
                                  <pre class="line-numbers">
                                    <code class="language-html" >&lt;button type="button" class="btn-yellow-normal text-center"&gt;
                                      BET NOW
                                    &lt;/button&gt;
                                    </code>
                                  </pre>

                                </div>
                              </div>
                            </div>

                        </div>
                      </div>

                    </div>


                  </div>
                  <h3 class="sub-header">Boostrap Buttons<span></span></h3>
                            <div class="row">
                              <div class="col-lg-6">
                                <div class="panel panel-default">
                                  <div class="panel-body">
                                    <!-- Standard button -->
                                    <button type="button" class="btn btn-default">Default</button>

                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                    <button type="button" class="btn btn-primary">Primary</button>

                                    <!-- Indicates a successful or positive action -->
                                    <button type="button" class="btn btn-success">Success</button>

                                    <!-- Contextual button for informational alert messages -->
                                    <button type="button" class="btn btn-info">Info</button>

                                    <!-- Indicates caution should be taken with this action -->
                                    <button type="button" class="btn btn-warning">Warning</button>

                                    <!-- Indicates a dangerous or potentially negative action -->
                                    <button type="button" class="btn btn-danger">Danger</button>

                                    <!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
                                    <button type="button" class="btn btn-link">Link</button>
                                  </div>
                                  <div class="panel-footer">
                                    <a class="btn btn-success center-block" role="button" data-toggle="collapse" href="#btn-boostrap" aria-expanded="false">
                                      <i class="fa fa-code" aria-hidden="true"></i>  View Code
                                    </a>
                                    <div class="collapse" id="btn-boostrap">
                                      <pre class="line-numbers">
                                        <code class="language-html" >
                                          <!-- Standard button -->
                                          &lt;button type="button" class="btn btn-default"&gt;Default&lt;/button&gt;

                                          <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                          &lt;button type="button" class="btn btn-primary"&gt;Primary&lt;/button&gt;

                                          <!-- Indicates a successful or positive action -->
                                          &lt;button type="button" class="btn btn-success"&gt;Success&lt;/button&gt;

                                          <!-- Contextual button for informational alert messages -->
                                          &lt;button type="button" class="btn btn-info"&gt;Info&lt;/button&gt;

                                          <!-- Indicates caution should be taken with this action -->
                                          &lt;button type="button" class="btn btn-warning"&gt;Warning&lt;/button&gt;

                                          <!-- Indicates a dangerous or potentially negative action -->
                                          &lt;button type="button" class="btn btn-danger"&gt;Danger&lt;/button&gt;

                                          <!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
                                          &lt;button type="button" class="btn btn-link"&gt;Link&lt;/button&gt;
                                        </code>
                                      </pre>

                                    </div>
                                  </div>
                                </div>

                              </div>
                            </div>

                    </div>

{/block}
