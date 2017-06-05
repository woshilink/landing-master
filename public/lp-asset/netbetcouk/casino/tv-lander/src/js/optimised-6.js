// <![CDATA[
    $('.additional .title').click(function(ev){
        ev.stopPropagation()
    })

    var bet_bundle_title = $('.additional .title').text()
    var bet_bundle_copy = $('.additional .wrapper').text()
    $('.additional').css("background", "transparent")
    $('.additional .title').hide()

    if (bet_bundle_title.length > 2 && bet_bundle_copy.length < 2){
        $('.additional .title').show().addClass("no-arrow")
        $('.additional .more').hide()
        $('.additional').css("background", "#1e1e1e")

    } else if (bet_bundle_title.length > 2 && bet_bundle_copy.length > 2) {
        $('.additional .title').show()
        $('.additional .more').show()
        $('.additional').css("background", "#1e1e1e")
    }
    //yellow - default value #ffbe00;
var first_three_bars = '#baff00';
    //white - default value #fff
var fourth_bar = '#baff00';

//blue - default value #0061ec;
var fifth_bar = '#1E1E1E';


    //default color is '#fafafa'

var arrow_color = '#fafafa'
    new_arrow_color = "transparent transparent " + arrow_color + arrow_color

    $('.boom-lines-elements-top span.boom-lines-line-3, .boom-lines-elements-top span.boom-lines-line-4, .boom-lines-elements-top span.boom-lines-line-5').css("border-bottom-color", first_three_bars)
    $('.boom-lines-line-2').css("border-bottom-color", fourth_bar)
    $('.boom-lines-line-1').css("border-bottom-color", fifth_bar)
// ]]>

var vid=document.getElementById('advert');
var bar1=document.getElementById('offer-1');
var bar2=document.getElementById('offer-2');
vid.addEventListener("ended", resetVideo, false);

function resetVideo() {
    // resets the video element by resetting the source
    this.src = this.src;
    bar1.classList.add('animated');
    bar2.classList.add('offer-line');
}    
