<%
if (session.getAttribute("userId") == null) {
	response.sendRedirect("/");
}
%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0045)https://www.vpay.co.kr/nvpshop/jsp/mypage.jsp -->
<html lang="ko-KR" class=" yamoo9-cssanimations yamoo9-appearance yamoo9-no-backdropfilter"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	
	<title>안전결제 기프트샵 - VP</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0, user-scalable=no, viewport-fit=cover"/>
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="./assets/css/mypage/style.css">
	<link rel="stylesheet" media="screen and (max-width:768px)" href="./assets/css/mypage/style.mobile.css">
	<link rel="stylesheet" href="./assets/css/mypage/layerpopup_style.css">
	<link rel="stylesheet" href="./assets/css/mypage/m.popupIndex.css">
</head>
<body>
<!-- Wrapper - start
======================================================================== -->
<div id="wrapper" class="main">

<!-- // sidemenu nav bar -->

<div class="navside">
  <div class="icon-close" onclick="history.back();"> <i class="fa fa-close"></i><a>CLOSE</a></div>
  <div class="top log-out">
  	
	  	<h1><%=session.getAttribute("userId")%> 회원님</h1>
	    <a class="logout" href="/">로그아웃</a>
	    <a class="setting" href="#">정보수정</a>
	
  </div>

  <ul class="horizontal">
    <li><a class="mypage" href="#"><i></i>마이기프트샵</a></li>
    <li><a class="buylist" href="#"><i></i>주문내역</a></li>
    <li><a class="delivery" href="javascript:viewDelivery();"><i></i>배송조회</a></li>
  </ul>

  <section class="cnt-box">
    <h2>모바일쿠폰 <a class="more" href="#">전체보기 &gt;</a></h2>
    <ul class="vertical">
      <li> <a href="#">커피/음료</a></li>
      <li> <a href="#">빵</a></li>
      <li> <a href="#">아이스크림</a></li>
      <li> <a href="#">외식</a></li>
      <li> <a href="#">피자/버거/치킨</a></li>
      <li> <a href="#">영화</a></li>
      <li> <a href="#">편의점</a></li>
    </ul>
    <h2>레저스토어 <a class="more" href="#">전체보기 &gt;</a></h2>
    <ul class="vertical">
      <li> <a href="#">숙박</a></li>
      <li> <a href="#">테마/워터파크</a></li>
      <li> <a href="#">전시/공연</a></li>
      <li> <a href="#">국내여행</a></li>
      <li> <a href="#">체험</a></li>
    </ul>
    <h2>배송스토어 <a class="more" href="#">전체보기 &gt;</a></h2>
    <ul class="vertical">
      <li> <a href="#">가전/디지털</a></li>
      <li> <a href="#">생활용품</a></li>
      <li> <a href="#">패션/잡화</a></li>
      <li> <a href="#">뷰티/건강</a></li>
      <li> <a href="#">스포츠/레저</a></li>
    </ul>
  </section>

  <section class="cnt-box">
    <h2>고객센터</h2>
    <ul class="vertical">
      <li> <a href="#">안전결제 기프트샵 G# 이란?</a></li>
      <li> <a href="#">이용안내</a></li>
      <li> <a href="#">공지사항</a></li>
      <li> <a href="#">FAQ</a></li>
      <li> <a href="#">개인정보처리방침</a></li>
      <li> <a href="#">제휴문의</a></li>
    </ul>
  </section>
</div>
<div class="mobile_bg"></div>  
<!-- sidemenu nav bar // -->

<!-- // header -->
<header class="header">


<div class="wrap-topbar">
    <div class="container">
       <ul class="inner-nav fav left">
        <li><a href="javascript:bookmarksite();"><i></i>즐겨찾기</a></li>
      </ul>
      <ul class="inner-nav login right">
      
      	
			<li><%=session.getAttribute("userId")%> 회원님</li>
			<li><a class="logoutbtn" href="/">로그아웃</a></li>
		
		
		<li><a href="#"><img src="./assets/images/mypage/txt_mypage.png" alt="MyGiftshop"></a></li>
        <li><a href="#">고객센터</a></li>
      </ul>
    </div>
</div>
  
<div class="logozone container">
    <div class="jumbotron">
      <div class="icon-menu"> <i class="fa fa-bars"></i>Mobile Menu</div>
    </div>
    <h1 class="logo"><a href="#"><img src="./assets/images/mypage/logo.png" alt="안전결제 기프트샵"></a></h1>
    <div class="warp-search">
       <form name="searchform" method="post" action="https://www.vpay.co.kr/nvpshop/jsp/search_result.jsp" onsubmit="javascript:search();">
        <fieldset>
        <legend class="hide">검색하기</legend>
          <div class="top_search">
            <div class="search_inner">
              <label for="searchKeyword" class="hide">검색어 입력창</label>
              <div class="ui-input-search">
              <input type="text" name="searchKey" autocomplete="off" class="ui-input-text" size="5" title="검색어 입력" maxlength="50">
              <input type="hidden" name="searchGubun" autocomplete="off">
              </div>
              <span id="" class="btn_search"><button type="button" onclick="javascript:search();">검색</button></span>
            </div>
          </div>
        </fieldset>
      </form>
    </div>
    <div class="wrap-mainTopAd">
      <div class="slider topmainad" style="position: relative; overflow: hidden; transition: all 500ms ease-out 0s; height: 90px;">
        <ul style="height: 100%; width: 100%; transition: all 500ms cubic-bezier(0.694, 0.0482, 0.335, 1) 0s; left: 0px; cursor: move; backface-visibility: hidden; perspective: 1000px; transform: translate3d(0px, 0px, 0px);">
          <li class="active" style="position: absolute; left: 0px;"><a href="#"><img src="./assets/images/mypage/bn01_megabox.png"></a></li>
          <li class="" style="position: absolute; left: 310px;"><a href="#"><img src="./assets/images/mypage/bn02_tworld.png"></a></li>
        </ul>
      <div class=" jcider-nav"><span class=" jcider-nav-left"></span><span class=" jcider-nav-right"></span></div><div class=" jcider-pagination"><div class="jcider-pagination-point active"></div><div class="jcider-pagination-point"></div></div></div>
    </div>
</div>
  


<div class="wrap-gnb">
    <div class="container">
      <ul class="gnb menu">
      	<li>
      		<a href="#">오늘추천</a>
      	</li>
        <li>
        	<a href="#">브랜드스토어</a>
        </li>
        <li>
        	<a href="#">레저스토어</a>
        </li>
        <li>
        	<a href="#">배송스토어</a>
        </li>
        <li>
        	<a href="#">테마스토어</a>
        </li>
        <li>
        	<a href="#">이벤트</a>
        </li>
      </ul>
    </div>
</div>
<script async="" src="./assets/js/mypage/analytics.js"></script><script>
try {
	var gnbMenu = document.getElementsByClassName('gnb menu')[0];
	if(gnbMenu != null){
		var li = gnbMenu.getElementsByClassName('active')[0];
		if(li != null) li.scrollIntoView();
	}
} catch (e) {
// 	console.log(e);
}
</script>
	
  <div class="top_nav">
    <div class="navi">
      홈 &gt; 마이기프트샵
    </div>
  </div>
  
</header>
<!-- header // -->

<article>
<form name="goform" method="post" onsubmit="return false;">
  <div class="mainWrap mypage">
    <div class="mypage_top">
      <div class="topWrap">
        <div class="topInfo">
          	<span class="topLogo">My GiftShop</span>
			<span class="topUser"><%=session.getAttribute("userId")%> 님, 반갑습니다</span>
        </div>
      </div>
    </div>
    <div class="wrap_mypage">
      <div class="mypageMenu">
        <div class="menu_box">
          <span class="menu_title">나의 쇼핑정보</span>
          <ul>
            <li><a href="">선물 구매 내역</a></li>
            <li><a href="">배송조회</a></li>
            <li><a href="">정보변경</a></li>
            <li><a href="">회원탈퇴</a></li>
          </ul>
        </div>
		<div class="menu_box" style="border:0px;margin-top:15px; text-align:center;background:#ff683c;">
          <ul>
            <li><a href="#" style="color:#ffffff;" id="btn_opapassword">Lifein AutoPassword 설정</a></li>
        </div>
      </div>
      <div class="mypageCon mobile">
        <div class="listTop">
          <span class="titleLate">최근 선물구매 내역</span>
          <span class="month">최근 주문 0건</span>
        </div>
        <div class="listCon">
          <!-- 구매내역 리스트 : 시작 -->
          <div class="giftList">
            <!-- 구매내역 리스트 : thead -->
            <div class="listHead">
              <div class="listTH t01">주문일자</div>
              <div class="listTH t02">상품정보</div>
              <div class="listTH t03">수량(개)</div>
              <div class="listTH t04" style="width: 90px;">주문금액</div>
              <div class="listTH t05" style="width: 90px;">상태</div>
            </div>
            
            
          </div>
	<div class="searchNon">구매하신 내역이 없습니다.</div> 
          <!-- 구매내역 리스트 : 테이블 끝 -->
        </div>
      </div>
      <!-- 모바일 마이페이지 메인 -->
      <div class="mypageCon mIndex">
        <ul class="mobileMenu">
          <li><a href="#" class="list01">구매내역</a></li>
          <li><a href="javascript:viewDelivery();" class="list02">배송조회</a></li>
          <li><a href="#" class="list03">정보변경</a></li>
        </ul>
        <div class="mobileBottom">
          <a href="#">회원탈퇴</a>
        </div>
      </div>
    </div>
  </div>
</form>
</article>

<!-- // footer -->




<footer class="footer">
  <section class="container">
  <div class="wrap-support">
    <ul class="service_support">
      <li><a href="#">안전결제 기프트샵이란?</a></li>
      <li><a href="#">이용약관</a></li>
      <li><a href="#" style="font-weight: bold;">개인정보처리방침</a></li>
      <li><a href="#">제휴문의</a></li>
    </ul>
    </div>
    <div class="wrap-copyright">
    <ul class="copyright-zone">
      <li class="bottom-logo"><img src="./assets/images/mypage/bottom-logo.png"></li>
      <li class="address">
         브이피(주) | 대표이사 김준 | 사업자등록번호 : 220-81-89229<br>
        서울 강남구 테헤란로 309(역삼동 702-2) 삼성제일빌딩 10층<br>
        고객센터:1577-3033 (09:00~18:00, 주말 및 공휴일 제외)<br>
        <p class="copy">Copyright (c) VP Inc. All right reserved.</p>
      </li>
      <li class="call"><img src="./assets/images/mypage/call.png"></li>
    </ul>
    </div>
  </section>

  <!-- Bottom Fixed Quick Menu -->
  <nav class="mobile_menu">
    <ul>
    	<li class="mypage"><a href="#"><i></i>마이기프트샵</a></li>
      	<li class="home active"><a href="#"><i></i>Home</a></li>
      	<li class="point"><a href="javascript:;" onclick="window.open(&#39;/nvpshop/jsp/search_point.jsp&#39;)"><i></i>포인트 통합조회</a></li>
    </ul>
  </nav>
</footer>
<script type="text/javascript" src="./assets/js/mypage/analyticstracking.js"></script>
<script type="text/javascript" src="./assets/js/mypage/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "412c6fa16cac4";
wcs_do();
</script>  
<!-- footer // -->

</div>
<!-- Wrapper - end
======================================================================== -->



<!-- Script - begin
======================================================================== -->
<script src="./assets/js/mypage/jquery.min.js"></script>
<script src="./assets/js/mypage/modernizr.min.js"></script>
<script src="./assets/js/mypage/jcider.min.js"></script>
<script src="./assets/js/mypage/common.js"></script>
<script src="./assets/js/mypage/nvpshop.js"></script>

<!-- Script - end
======================================================================== -->

<!-- <script type="text/javascript" src="/autopassword/assets/js/jquery.min.js"></script> -->
	<script type="text/javascript" src="https://lifein-test.vpay.co.kr/vpay/lifein/assets/js/AutoPassword.config.js"></script>
	<!-- <script type="text/javascript" src="/autopassword/assets/js/AutoPassword-1.1.0.js"></script> -->
	<script type="text/javascript" src="https://lifein-test.vpay.co.kr/vpay/lifein/assets/js/AutoPassword.error.kr-1.1.0.js"></script>
    
    <script>
    $(document).ready(function() {
    	console.log("myPage");
        $(".notice").click(function() {
            alert("이 사이트는 VPassword 데모사이트입니다.")
        })
    })
    </script>

<script type="text/javascript" src="https://lifein-test.vpay.co.kr/vpay/lifein/simpleapi/asset/js/jquery.js"></script>
<script type="text/javascript" src="https://lifein-test.vpay.co.kr/vpay/lifein/simpleapi/asset/js/autoPassword.js"></script> 
<script>
$(function($){
var autoPop = new AutoPop();	
$("#btn_opapassword").click(function(e) {	//버튼의 ID	
	console.log("call regToken");
		$.ajax({
			url : "/demo/autopassword/regToken.jsp",  //regtoken 생성 URL
		cache: false,
			success : function(data) {
				var regToken = $.trim(data);	
				autoPop.manage(regToken);
		}, 
		fail: function(e) {s
				alert("에러:"+ e.message); 
		}
		})		
	});	
})
</script>

</body></html>