{extends file="base/base.tpl"}
{block name=title}Error 404{/block}
{block name=head}
<link href="{url('/')}/src/css/main.css" rel="stylesheet">
<link rel="stylesheet" href="{url('/')}/src/css/remodal.css">
<link rel="stylesheet" href="{url('/')}/src/css/remodal-default-theme.css">
<link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
<style media="screen">
  body{
    background-color: black;
  }
  .main-bg{
    height:560px;
    background-image: url('/src/img/404/DSK/BG_Casino_1920x675.jpg');
    background-position: center;
    background-size:cover;
  }
  #logo{
    width: 100%;
    margin-top: 10px;
  }
  #logo img{
    float: none!important;
    margin: 0 auto;
  }
  .custom-text{
    display:none;
  }
  .fof-message{
    background-color:#252525;
  }
  h1, h4{
    text-transform: uppercase;
    color:#c61c22;
  }
  h1{
    font-size: 10vh;
    font-family: 'Oswald';
    font-weight: 700;
    margin-top: 0;
  }
  h4{
    font-weight: bold;
    font-size: 16px;
    margin: 17px 0 7px;
    height: 33px;
    line-height: 20px;
  }
  a{
    color: #c61c22;
  }
  a:focus, a:hover {
    color: #c61c22;
    text-decoration: underline;
  }
  .steps{
    background-color: #333333;
  }
  .steps p{
    color: white;
  }
  .steps-content{
    max-width: 230px;
    margin: 0 auto;
    padding: 20px 0;
  }
  .icon div{
    width: 50px;
    height: 50px;
    border-radius: 50px;
    background-color: #c61c22;
    margin: 0 auto;
  }
  @media only screen and (max-width : 767px){
    .col-sm-4:nth-child(-n+2) .steps-content {
        border-bottom: 1px solid #c61c22;
    }
   }
</style>
{/block}

{block name=body}
<section id="main-nav">
    <nav class="navbar black-transparent">
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" text=$text}
        </div>
    </nav>
</section>

<section>
<div class="main-bg hidden-xs"></div>
<div class="fof-message hidden-xs">
  <div class="container">
    <div class="row text-center">
      <h1>casino404</h1>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class="col-xs-12 visible-xs">
      <img src="{url('/')}/src/img/404/MOB/MOB-BG_Casino_1920x675.jpg" alt="" class="img-responsive center-block">
    </div>
  </div>
</div>


<div class="steps">
  <div class="container">
    <div class="row">
      <div class="col-sm-4 text-center">
        <div class="steps-content">
          <div class="icon"><div></div></div>
          <h4>This is not the page you were looking for</h4>
          <p>This page is missing or is current unavailable.</p>
        </div>
      </div>
      <div class="col-sm-4 text-center">
        <div class="steps-content">
          <div class="icon"><div></div></div>
          <h4>no panic!</h4>
          <p>Nothing happened, you are just having a little break from your travel.</p>
        </div>
      </div>
      <div class="col-sm-4 text-center">
        <div class="steps-content">
          <div class="icon"><div></div></div>
          <h4>find your way</h4>
          <p>You can go back from your browser or click <a href="#">here</a> to visit our Home Page</p>
        </div>
      </div>

    </div>

  </div>

</div>


            {* <div class="row">
              <div class="col-xs-12 hidden-xs">
              <img src="{url('/')}/src/img/404/DSK/BG_Casino_1920x675.jpg" alt="" class="img-responsive center-block">
            </div>
            <div class="col-xs-12 visible-xs">
              <img src="{url('/')}/src/img/404/MOB/MOB-BG_Casino_1920x675.jpg" alt="" class="img-responsive center-block">
            </div>
            <div class="col-xs-12 hidden-xs">
            <img src="{url('/')}/src/img/404/DSK/BG_Casino_1920x675.jpg" alt="" class="img-responsive center-block">
          </div>
          <div class="col-xs-12 visible-xs">
            <img src="{url('/')}/src/img/404/MOB/MOB-BG_Casino_1920x675.jpg" alt="" class="img-responsive center-block">
          </div> *}

            </div>
        </div>
    </section>

    <div class="container">
        {include file="lab/organisms/footer/footer-main.tpl"}
    </div>

{/block}

{block name=footer}

{/block}
