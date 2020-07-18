// common.js
$(function() {

	// mobile side menu bar
	$(".jumbotron").click(function() {
		$(".navside").addClass("open");
		window.location.hash = "#open";
		$(".mobile_bg").fadeIn("open");
	});

	window.onhashchange = function() {
		if (location.hash != "#open") {
			$(".navside").removeClass("open");
		}
	};
	
	$(".icon-close").click(function(){
	      $(".mobile_bg").fadeOut("open");
	    });
	  $(".mobile_bg").click(function(){
	      $(".navside").removeClass("open");
	      $(".mobile_bg").fadeOut("open");
	    });
	
	// 슬라이더 공통. (메인, 헤더사용)
	// 공통 헤더(상단 광고배너)
	  /*
    $('.slider.topmainad').jcider({
      autoplay: true,
      slideDuration: 3000,
      transitionDuration: 500
    });
    
    // 메인 중앙 광고배너
    $('.slider.middleAd').jcider({
      autoplay: true,
      slideDuration: 5000,
      fading: true,
      transitionDuration: 500
    });
    
    // 메인 중앙 카테고리 베너 1
    $('.slider.bn-type1').jcider({
      autoplay: true,
      slideDuration: 2000,
      transitionDuration: 500
    });
    
    // 메인 중앙 카테고리 베너 2
    $('.slider.bn-type2').jcider({
      autoplay: true,
      slideDuration: 3500,
      transitionDuration: 500
    });
	*/
	

});