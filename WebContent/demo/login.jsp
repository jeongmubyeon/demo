<!DOCTYPE html>
<!-- saved from url=(0068)https://www.vpay.co.kr/nvpshop/jsp/login.jsp?returnUrl=jsp/index.jsp -->
<%@include file="./autopassword/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko-KR" class=" yamoo9-cssanimations yamoo9-appearance yamoo9-no-backdropfilter"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<title>안전결제 기프트샵 - VP</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0, user-scalable=no, viewport-fit=cover"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<link rel="stylesheet" href="./assets/css/login/style.css">
	<link rel="stylesheet" media="screen and (max-width:768px)" href="./assets/css/mypage/style.mobile.css">
	<link rel="stylesheet" href="./assets/css/login/layerpopup_style.css">
	<link rel="stylesheet" href="./assets/css/login/m.popupIndex.css">
  <style type="text/css">
  .wrap_login .login_btn input[type="checkbox"] + label {
	  display: inline-block;
	  position: relative;
	  padding-left: 28px;  /* 글자와 체크박스 사이의 간격을 변경 */
	  cursor: pointer;
	  -webkit-user-select: none;
	  -moz-user-select: none;
	  -ms-user-select: none;
	  font-size: .9em;
	  margin-top: 10px;
  }
  .login_bottom a.btnPayMember, .login_bottom a.btnPayGuest {
	  display: block;
	  width: 48.9%;
	  text-align: center;
	  padding: 10px 0;
	  margin-right: 10px;
	  border: 1px solid #ccc;
	  color: #fff;
	  background: #8e94a2;
	  cursor: pointer;
	}
	.login_bottom a.btnPayGuest {
	  margin-right: -10px;
	  background: #ff6165;
	}
	.login_not {
	  margin-top: -20px;
	  border-top: 1px solid #dedede;
	  border-bottom: 1px solid #dedede;
	  padding: 15px 0;
	}
	.login_not span {
	  display: inline-block;
	  width: 100%;
	  color: #666;
	}
  </style>
</head>
<%
String random = System.currentTimeMillis() + "";   //random값 생성
session.setAttribute("AutoPassword", random); //random값을 세션 혹은 쿠키에 저장한다.
%>
<body>
<!-- Wrapper - start
======================================================================== -->
<div id="wrapper" class="main">

<!-- // sidemenu nav bar -->

<div class="navside">
  <div class="icon-close" onclick="history.back();"> <i class="fa fa-close"></i><a>CLOSE</a></div>
  <div class="top log-out">
  	
		<h1>로그인 해주세요</h1>
	    <a class="logoin" href="./login.html">로그인</a>
	    <a class="setting" href="#">회원가입</a>
	
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
      
      	
			<li><a class="loginBTN" href="./login.html">로그인</a></li>
			<li><a href="#">회원가입</a></li>
		
		
		<li><a href="#"><img src="./assets/images/login/txt_mypage.png" alt="MyGiftshop"></a></li>
        <li><a href="#">고객센터</a></li>
      </ul>
    </div>
</div>
  
<div class="logozone container">
    <div class="jumbotron">
      <div class="icon-menu"> <i class="fa fa-bars"></i>Mobile Menu</div>
    </div>
    <h1 class="logo"><a href="#"><img src="./assets/images/login/logo.png" alt="안전결제 기프트샵"></a></h1>
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
          <li class="active" style="position: absolute; left: 0px;"><a href="#"><img src="./assets/images/login/bn01_megabox.png"></a></li>
          <li class="" style="position: absolute; left: 310px;"><a href="#"><img src="./assets/images/login/bn02_tworld.png"></a></li>
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
<script async="" src="./assets/js/login/analytics.js"></script><script>
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
      홈 &gt; 로그인
    </div>
  </div>
  
</header>
<!-- header // -->

<article>
<form name="goform" method="post" action="./jsp/loginAct.jsp" id="goform">
  <div class="mainWrap">
    <div class="wrap_login">
      <ul>
        <li><input type="text" name="id" placeholder="아이디" value=""></li>
        <li><input type="password" name="pw" placeholder="비밀번호" onkeydown="javascript:if(event.keyCode==9 || event.keyCode==13) actionLogin();" autocomplete="off"></li>
      </ul>

	  <div class="login_btn">
		<input type="checkbox" id="login" name="agree" value="1"><label for="login">아이디 저장</label>
		<a onclick="javascript:actionLogin();">로그인</a>      
      </div>

	  <div class="login_btn">
		<a id="btn_autopassword"style="background:#ffffff; color:#000000; border:1px solid #000000">Lifein AutoPassword 로그인</a>      
      </div>
      
      <div class="login_bottom">
        <a href="#">비밀번호 재설정</a>
        <a href="#" class="btnJoin">회원가입</a>
      </div>
    </div>
  </div>
  
<input type="hidden" name="step" id="step" value="VGS1000">
<input type="hidden" id="returnUrl" name="returnUrl" value="jsp/index.jsp">
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
      <li class="bottom-logo"><img src="./assets/images/login/bottom-logo.png"></li>
      <li class="address">
         브이피(주) | 대표이사 김준 | 사업자등록번호 : 220-81-89229<br>
        서울 강남구 테헤란로 309(역삼동 702-2) 삼성제일빌딩 10층<br>
        고객센터:1577-3033 (09:00~18:00, 주말 및 공휴일 제외)<br>
        <p class="copy">Copyright (c) VP Inc. All right reserved.</p>
      </li>
      <li class="call"><img src="./assets/images/login/call.png"></li>
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
<script type="text/javascript" src="./assets/js/login/analyticstracking.js"></script>
<script type="text/javascript" src="./assets/js/login/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "412c6fa16cac4";
wcs_do();
</script>  
<!-- footer // -->

</div>
<div id="advDiv">
	여기에 광고 삽입
</div>
<!-- Wrapper - end
======================================================================== -->



<!-- Script - begin
======================================================================== -->
<script src="./assets/js/login/jquery.min.js"></script>
<script src="./assets/js/login/modernizr.min.js"></script>
<script src="./assets/js/login/jcider.min.js"></script>
<script src="./assets/js/login/common.js"></script>
<script src="./assets/js/login/nvpshop.js"></script>
<script src="./assets/js/login/placeholders.min.js"></script>
<script type="text/javascript">
function goPayStepNojoin() {
	
	var isapp = (/(GiftShop)/i).test(navigator.userAgent);		// 20161221 앱버전 체크
	
	var url = "";
	if( chkBrowser()) {
		
		var goodsidx = getParameterByName("goodsIdx", this.location);
		
		if(isapp){
			url = "paystep_app.jsp?goodsIdx="+ goodsidx;	
			location.href = url;
		}else {
			url = "paystep_m.jsp?goodsIdx="+ goodsidx;	
			location.href = url;
		}
	}
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function actionLogin(){
	$("#goform").submit();
}
</script>
<script type="text/javascript" src="https://lifein-test.vpay.co.kr/vpay/lifein/simpleapi/asset/js/jquery.js"></script>
<script type="text/javascript" src="https://lifein-test.vpay.co.kr/vpay/lifein/simpleapi/asset/js/autoPassword.js"></script> 
<script>
$(function($){
	var autoPop = new AutoPop({
		afterLoginUrl:"/demo/autopassword/autopasswordAct.jsp",	//로그인 결과 전송URL
	});	
	$("#btn_autopassword").click(function(e) {	//버튼의 ID	
		autoPop.login("<%=corpId%>", "<%=random%>", "customData");     //customData는 인증 후 전달되는 문자열이다.
	});
	autoPop.adv("advDiv", "<%=corpId%>");
})
</script>
<!-- Script - end
======================================================================== -->

</body></html>