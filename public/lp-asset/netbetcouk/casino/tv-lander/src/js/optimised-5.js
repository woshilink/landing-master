// <![CDATA[
 $('.step-wrapper .offer-wrapper, .str-button').click(function(ev){
ev.stopPropagation()
    var viewportHeight = $('.offer-wrapper').offset().top;
    $('html, body').animate({scrollTop : (viewportHeight)-47},600);
    return false;
})
// ]]>