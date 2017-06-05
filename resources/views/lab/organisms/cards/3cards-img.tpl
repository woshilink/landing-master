<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-4">
       <div class="card1">
           <div class="panel">
               <div class="panel-heading">
                   <h3 class="panel-title">{$card1heading}</h3>
               </div>
               <a href="{$card1url}">
                    <img src="{$card1img}" alt="Offer 1" class="img-responsive">
               </a>
               <div class="panel-body">
                   <p>{$card1text}</p>
               </div>
               <div class="panel-footer clearfix">

                   <a href="{$card1url}">{$button1text}</a>

               </div>
           </div>
       </div>
    </div>
    {* End of card 1 *}
    <div class="col-xs-12 col-sm-12 col-md-4">
        <div class="card2">
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">{$card2heading}</h3>
                </div>
                <a href="{$card2url}">
                    <img src="{$card2img}" alt="Offer 1" class="img-responsive">
                </a>
                <div class="panel-body">
                    <p>{$card2text}</p>
                </div>
                <div class="panel-footer clearfix">

                    <a href="{$card2url}">{$button2text}</a>

                </div>
            </div>
        </div>
    </div>
    {* End of card 2 *}
    <div class="col-xs-12 col-sm-12 col-md-4">
        <div class="card3">
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">{$card3heading}</h3>
                </div>
                <a href="{$card3url}">
                    <img src="{$card3img}" alt="Offer 1" class="img-responsive">
                </a>
                <div class="panel-body">
                    <p>{$card3text}</p>
                </div>
                <div class="panel-footer clearfix">

                    <a href="{$card3url}">{$button3text}</a>

                </div>
            </div>
        </div>
    </div>
    {* End of card 3 *}
</div>

{*
     {include file="lab/organisms/cards/3cards-img.tpl"
                card1heading = 'HORSE RACING'
                card2heading = 'GO MOBILE'
                card3heading = 'Daily Promotions'

                card1img = $asset|cat:'/img/horse.jpg'
                card2img = $asset|cat:'/img/mobilenew.jpg'
                card3img = $asset|cat:'/img/promotions.png'

                card1text = 'Free <span>€/$50</span> Bet'
                card2text = '<span>€/$10</span> mobile bet'
                card3text = 'For <span>Existing Customers</span>'

                card1url = $cta.sport
                card2url = $cta.sport
                card3url = $cta.sport

                button1text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;BET NOW'
                button2text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;BET NOW'
                button3text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;BET NOW'
    }
*}