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
	/*
	// �����̴� ����. (����, ������)
	// ���� ���(��� ������)
    $('.slider.topmainad').jcider({
      autoplay: true,
      slideDuration: 3000,
      transitionDuration: 500
    });
    
    // ���� �߾� ������
    $('.slider.middleAd').jcider({
      autoplay: true,
      slideDuration: 5000,
      fading: true,
      transitionDuration: 500
    });
    
    // ���� �߾� ī�װ� ���� 1
    $('.slider.bn-type1').jcider({
      autoplay: true,
      slideDuration: 2000,
      transitionDuration: 500
    });
    
    // ���� �߾� ī�װ� ���� 2
    $('.slider.bn-type2').jcider({
      autoplay: true,
      slideDuration: 3500,
      transitionDuration: 500
    });
	
	*/

});

