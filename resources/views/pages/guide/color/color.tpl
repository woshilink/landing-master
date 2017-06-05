
{extends 'base/styleguide-base.tpl'}
{assign var="title" value='Color Guide'}
{assign "page" "color"}

{block name=head}
{/block}
{block name=body}
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Guide Board</h1>
                            <h3 class="sub-header">Brand Color<span></span></h3>
                            <div class="row">
                              <div class="col-md-2">
                                <div class="color-plate">
                                {include file="lab/molecules/plate/single-color-plate.tpl" name='Red' var='$netbet-red' color='#d91f27'  }
                              </div>
                              </div>
                              <div class="col-md-2">
                                <div class="color-plate">
                                {include file="lab/molecules/plate/single-color-plate.tpl" name='Black' var='$netbet-black' color='#090911'  }
                              </div>
                              </div>
                              <div class="col-md-2">
                                <div class="color-plate">
                                {include file="lab/molecules/plate/single-color-plate.tpl" name='White' var='$netbet-white' color='#f2f2f3'  }
                              </div>
                              </div>
                              <div class="col-md-2">
                                <div class="color-plate">
                                {include file="lab/molecules/plate/single-color-plate.tpl" name='Blue' var='$netbet-blue' color='#113458 '  }
                                </div>
                              </div>
                              <div class="col-md-2">
                                <div class="color-plate">
                                {include file="lab/molecules/plate/single-color-plate.tpl" name='Green' var='$netbet-green' color='#baff00'  }
                              </div>
                              </div>
                              <div class="col-md-2">
                                <div class="color-plate">
                                {include file="lab/molecules/plate/single-color-plate.tpl" name='Yellow' var='$netbet-yellow' color='#ffbe01'  }
                              </div>
                              </div>
                            </div>


                        <div class="color-example">
                          <h3 class="sub-header">Color Plate <span></span></h3>
                          <div class="row">
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='BLUE JEANS' color1='#5D9CEC' color2='#4A89DC' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='AQUA' color1='#4FC1E9' color2='#3BAFDA' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='MINT' color1='#48CFAD' color2='#37BC9B' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='GRASS' color1='#A0D468' color2='#8CC152' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='SUNFLOWER' color1='#FFCE54' color2='#F6BB42' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='BITTERSWEET' color1='#FC6E51' color2='#E9573F' }
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='GRAPEFRUIT' color1='#ED5565' color2='#DA4453' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='LAVENDER' color1='#AC92EC' color2='#967ADC' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='PINK ROSE' color1='#EC87C0' color2='#D770AD' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='LIGHT GRAY' color1='#F5F7FA' color2='#E6E9ED' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='MEDIUM GRAY' color1='#CCD1D9' color2='#AAB2BD' }
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="color-plate">
                                {include file="lab/molecules/plate/color-plate.tpl" name='DARK GRAY' color1='#656D78' color2='#434A54' }
                              </div>
                            </div>
                          </div>
                        </div>

                    </div>
                </div>
            </div>
{/block}
