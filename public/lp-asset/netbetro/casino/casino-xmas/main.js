// header active
$(document).ready(function(){
    var scroll_pos = 0;
    $(document).scroll(function() {
        scroll_pos = $(this).scrollTop();
        if(scroll_pos > 0) {
            $("header").css({
                'background-color': '#121212',
                'position': 'fixed',
                'transition': '0.3s'
            });
        } else {
            $("header").css({
                'background-color': 'rgba(0,0,0,0.65)',
                'position':'absolute'
            });
        }
    });
});

// animation trigger
new WOW({offset: 160 }).init()/**
 * Created by nathi.taengnim on 22/03/2017.
 */
