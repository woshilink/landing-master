var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;
      function onYouTubeIframeAPIReady() {
        player = new YT.Player('ytplayer', {
          height: '60%',
          width: '100%',
          videoId: '9gYrFFwr4Qg',
		  playerVars: {
			autoplay: '1',
			playlist: '9gYrFFwr4Qg',
			modestbranding: '1',
			loop: '1',
			controls: '0',
			start: '2'
		  },
		  events: {
			'onReady': onPlayerReady,
			'onStateChange': onPlayerStateChange
		  }
        });
      }

	  function onPlayerReady(event) {
		event.target.playVideo();
		event.target.mute();
	  }

	  var done = false;
	  function onPlayerStateChange(event) {
		if (event.data == YT.PlayerState.PLAYING && !done) {
			setTimeout(stopVideo, 6000);
			done = true;
		}
	  }
