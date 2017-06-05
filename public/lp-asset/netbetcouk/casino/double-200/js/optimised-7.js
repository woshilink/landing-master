// <![CDATA[
    $(".main-cta .justify, .main-cta .text-2, .main-cta .text-3, .main-cta .text-4, .main-cta .text-5, .logo-game-wrapper").click(function() {
      if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
          window.location = $(".register-cta.mobile-y").attr("href");
      }
      else {
          window.location = $(".register-cta").attr("href"); }
          return false;

      });
// ]]>
