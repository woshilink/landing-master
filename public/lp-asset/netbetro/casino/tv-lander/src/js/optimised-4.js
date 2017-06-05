var logos = [63, 29178, 169, 35354, 12865]
	var searchForRfr = $(location).attr('search');

	var rfrString = "rfr=";
	var pidString = "pid=";

	if (searchForRfr.indexOf(rfrString) > -1 ) {

		
		var getWholeRfr = searchForRfr.substring(searchForRfr.indexOf(rfrString) + 4);

		function getNumCode(code) {
			var theNum = "";
			for (var letter = 0; letter < code.length; letter ++) {
				if (! isNaN(code[letter]) ) {
					theNum += code[letter]
					
				} else {
					break;
				}; 
                                
			} 
                        return theNum;
		}
		
		var checkFor = getNumCode(getWholeRfr)
                
		checkFor = parseInt(checkFor); 
                console.log("checkFor ", checkFor)
		if (checkFor == 12865) {
			var getPid = searchForRfr.substring(searchForRfr.indexOf(pidString) + 4);
			var pidNum = parseInt(getNumCode(getPid))
			if (pidNum == 7202 || pidNum == 1269947) {
				var theUrl
				if (pidNum == 7202) {
					theUrl = "https://promotions.cdnbf.net/media/english_uk/images/april_2015/may_june/remain/img/aff12865-1.png?0209"
				}
				else {
					theUrl = "https://promotions.cdnbf.net/media/english_uk/images/april_2015/may_june/remain/img/aff12865-2.png?0209"
				}
				$('.logo-games img').attr("src", theUrl)
                $('body').addClass("aff-present")
				$('.logo-games img').addClass('image-opacity')
				$('.logo-games img').show()
			}
		}
		else {
			for (var i = 0; i < logos.length; i ++) {
				if (logos[i] == checkFor ) {
	                console.log("success")
					var theUrl = "https://promotions.cdnbf.net/media/english_uk/images/april_2015/may_june/remain/img/aff"
					theUrl += checkFor
					var theUrlEnd = ".png?0209"
					theUrl += theUrlEnd

					$('.logo-games img').attr("src", theUrl)
	                $('body').addClass("aff-present")
					$('.logo-games img').addClass('image-opacity')
					$('.logo-games img').show()
				}
			}
		}
		

	}