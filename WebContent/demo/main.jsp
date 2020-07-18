<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0044)https://www.vpay.co.kr/nvpshop/jsp/index.jsp -->
<html lang="ko-KR" class=" yamoo9-cssanimations yamoo9-appearance yamoo9-no-backdropfilter"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	
	<title>안전결제 기프트샵 - VP</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="./assets/css/main/style.css">
	<link rel="stylesheet" media="screen and (max-width:768px)" href="./assets/css/mypage/style.mobile.css">
	<link rel="stylesheet" href="./assets/css/main/layerpopup_style.css">
	<link rel="stylesheet" href="./assets/css/main/m.popupIndex.css">
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
	    <!-- <a class="setting" href="">회원가입</a> -->
	
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

<div class="top-notice" id="top-notice" style="display: none;">
  <div class="warningWrap">
    <h1>사용중인 Internet Explorer의 버전이 낮거나 호환성보기가 활성화 되어있습니다</h1>
    <span>
       안전결제 기프트샵은 Explorer 9.0 이상을 지원합니다.<br><br>
      ● 고객님의 브라우저가 Internet Explorer 9.0 이상인 경우(호환성 보기 해제)<br>
      - Internet Explorer 도구(Alt+X) 선택 -&gt; 호환성보기설정 선택 -&gt; Microsoft 호환성 목록 사용 체크해제 <br>
      ● 고객님의 브라우저가 Internet Explorer 9.0 미만인 경우<br>
      - 정상적인 사이트 접속을 위해 사용하시는 Internet Explorer를 업그레이드 해주세요.<br>
    </span>
    <div class="warningList">
      <span>&#8226;브라우저 업그레이드(최신 브라우저 업그레이드는 무료입니다)</span>
      <ul>
        <li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="blank"><img src="./assets/images/main/logo-ie.png" alt="Internet Explorer"></a></li>
      </ul>
    </div>
    <div class="btnClose">
      <a class="close">[닫기]</a>
    </div>
  </div>
</div>
<div class="warning_bg" id="warning_bg" style="display: none;"></div>
<%
if (session.getAttribute("userId") == null) {
	response.sendRedirect("/");
}
%>
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
		
		
		<li><a href="./mypage.jsp"><img src="./assets/images/main/txt_mypage.png" alt="MyGiftshop"></a></li>
        <li><a href="#">고객센터</a></li>
      </ul>
    </div>
</div>
  
<div class="logozone container">
    <div class="jumbotron">
      <div class="icon-menu"> <i class="fa fa-bars"></i>Mobile Menu</div>
    </div>
    <h1 class="logo"><a href="#"><img src="./assets/images/main/logo.png" alt="안전결제 기프트샵"></a></h1>
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
      <div style="position: relative; overflow: hidden; transition: all 500ms ease-out 0s; height: 90px;">
        <ul style="height: 100%; width: 100%; transition: all 500ms cubic-bezier(0.694, 0.0482, 0.335, 1) 0s; left: 0px; cursor: move; backface-visibility: hidden; perspective: 1000px; transform: translate3d(-310px, 0px, 0px);">
          <li class="" style="position: absolute; left: 0px;"><a href="#"><img src="./assets/images/main/bn01_megabox.png"></a></li>
          <li class="active" style="position: absolute; left: 310px;"><a href="#"><img src="./assets/images/main/bn02_tworld.png"></a></li>
        </ul>
      <div class=" jcider-nav"><span class=" jcider-nav-left"></span><span class=" jcider-nav-right"></span></div><div class=" jcider-pagination"><div class="jcider-pagination-point"></div><div class="jcider-pagination-point active"></div></div></div>
    </div>
</div>
  

  <div class="wrap-gnb">
    <div class="container">
      <div class="category">
        <span><img src="./assets/images/main/txt_category.png"></span>
        <ul>
          <li><a href="#">커피/음료</a></li>
          <li><a href="#">베이커리/도넛</a></li>
          <li><a href="#">아이스크림</a></li>
          <li><a href="#">외식</a></li>
          <li><a href="#">피자/버거/치킨</a></li>
          <li><a href="#">영화</a></li>
          <li><a href="#">편의점</a></li>
        </ul>
        <div class="opacity"></div>
      </div>
      <ul class="gnb">
        <li class="active"><a href="#">오늘추천</a></li>
        <li><a href="#">브랜드스토어</a></li>
        <li><a href="#">레저스토어</a></li>
        <li><a href="#">배송스토어</a></li>
        <li><a href="#">테마스토어</a></li>
        <li><a href="#">이벤트</a></li>
      </ul>
    </div>
  </div>
</header>
<!-- header // -->

<article>
<form name="goform" method="post" onsubmit="return false;">
  <section class="wrap-mainvisual">
    <h2 class="a11y-hidden">메인 비주얼 슬라이더</h2>
    <div class="flex jFlex jflex--5"><ul class="slides--titles slides--anim-css">
	
	<li data-title="0"><span class="title--t">시연용</span><span class="title--l"></span></li>
	<li data-title="1"><span class="title--t">배송스토어</span><span class="title--l"></span></li>
	<li data-title="2"><span class="title--t">케이크기획</span><span class="title--l"></span></li>
	<li data-title="3"><span class="title--t">T데이터쿠폰</span><span class="title--l"></span></li>
	<li data-title="4"><span class="title--t">레저스토어</span><span class="title--l"></span></li></ul>
      <div class="jflex--wrapper"><ul class="slides slides--anim" style="width: 10240px">

					<li data-title="배송스토어" onclick="#" style="width: 2048px;">
						<div class="item" style="background-image: url(&#39;./assets/images/mainvisual/delivery_store_main.png&#39;)"></div>
					</li>

					<li data-title="케이크기획" onclick="#" style="width: 2048px;">
						<div class="item" style="background-image: url(&#39;./assets/images/mainvisual/2018_cake_main.png&#39;)"></div>
					</li>

					<li data-title="T데이터쿠폰" onclick="#" style="width: 2048px;">
						<div class="item" style="background-image: url(&#39;./assets/images/mainvisual/bn_7.png&#39;)"></div>
					</li>

					<li data-title="레저스토어" onclick="#" style="width: 2048px;">
						<div class="item" style="background-image: url(&#39;./assets/images/mainvisual/vacation_bn.png&#39;)"></div>
					</li>


      </ul></div></div>
    </div>
  </section>

<!-- 추천상품 -->
<!-- 201809 배송서비스 추가 -->
<section class="container wrap-rcmd">
	<h2 class="rcmd-title">추천상품</h2>


	<div class="rcmd-container">
		<ul id="rcmdTab" class="rdmc-tab">
			<li class="current" data-tab="rcmdTab1"><button type="button" class="rcmbTab-btn">모바일쿠폰</button></li>
			<li data-tab="rcmdTab2"><button type="button" class="rcmbTab-btn">레저입장권</button></li>
			<li data-tab="rcmdTab3" class="onlymobile"><button type="button" class="rcmbTab-btn">배송상품</button></li>
		</ul>

		<div id="rcmdTab1" class="rcmd-tabcontent current">
			<h3 class="screen-out">모바일쿠폰</h3>
			<ul class="prd-list type-4 size-large ">

				<li>
					<a href="javascript:goDetail(&#39;G00000008066&#39;,&#39;P&#39;);">
						<dl class="wrap-prd ">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">1</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000008066_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">스타벅스</span>
								<span class="name">카페아메리카노 Tall</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>4,100</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;G00000183280&#39;,&#39;P&#39;);">
						<dl class="wrap-prd ">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">2</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000183280_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">배스킨라빈스 매장</span>
								<span class="name">파인트 아이스크림</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>7,200</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;G00000190534&#39;,&#39;P&#39;);">
						<dl class="wrap-prd ">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">3</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000190534_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">GS25 매장</span>
								<span class="name">농심)육개장사발면</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>850</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;G00000164899&#39;,&#39;P&#39;);">
						<dl class="wrap-prd ">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">4</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000164899_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">정관장 매장</span>
								<span class="name">정관장 홍삼정옥고 10gX30포</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>75,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;G00000280927&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">5</span>
								</div>
							
								<div class="tag">
									<span class="sale">9
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000280927_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">메가박스</span>
								<span class="name">메가박스 2인 패키지</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>26,000</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>28,500</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;G00000008060&#39;,&#39;P&#39;);">
						<dl class="wrap-prd ">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">6</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000008060_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">스타벅스</span>
								<span class="name">아이스 카페라떼 Tall</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>4,600</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;G00000230824&#39;,&#39;P&#39;);">
						<dl class="wrap-prd ">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">7</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/G00000230824_250.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">MMS 전송 </span>
								<span class="brand">파리바게뜨 매장</span>
								<span class="name">순수우유케이크</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>26,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

			</ul>
		</div>

		<div id="rcmdTab2" class="rcmd-tabcontent">
			<h3 class="screen-out">레저입장권</h3>
			<ul class="prd-list type-4 size-large ">

				<li>
					<a href="javascript:goDetail(&#39;ETBMA_000011&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">1</span>
								</div>
							
								<div class="tag">
									<span class="sale">58
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/seoulland.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">서울랜드</span>
								<span class="name">서울랜드 자유이용권</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>17,000</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>40,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;ETBMA_000001&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">2</span>
								</div>
							
								<div class="tag">
									<span class="sale">66
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/onemount_500.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">일산 원마운트</span>
								<span class="name">원마운트 워터파크 종일권</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>17,000</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>50,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;ETBMA_000008&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">3</span>
								</div>
							
								<div class="tag">
									<span class="sale">47
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/busanaquarium_500.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">부산 아쿠아리움</span>
								<span class="name">부산아쿠아리움 자유이용권 (대소공용)</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>15,500</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>29,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;ETBM_0005&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">4</span>
								</div>
							
								<div class="tag">
									<span class="sale">61
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/asanspavis_500.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">아산스파비스</span>
								<span class="name">아산스파비스 스파+온천 이용권</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>17,000</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>44,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;ETBMA_000004&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">5</span>
								</div>
							
								<div class="tag">
									<span class="sale">53
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/seorakwaterpia_500.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">한화 설악 워터피아</span>
								<span class="name">설악 워터피아 종일권 할인판매</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>35,500</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>75,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;ETBMA_111111&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">6</span>
								</div>
							
								<div class="tag">
									<span class="sale">54
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/ocean700.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">평창 알펜시아 오션700</span>
								<span class="name">평창 알펜시아 오션700 자유이용권</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>29,900</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>65,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;ETBMA_000029&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">7</span>
								</div>
							
								<div class="tag">
									<span class="sale">30
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/aquaplanetJeju_500.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">mms 전송</span>
								<span class="brand">제주 한화 아쿠아플라넷</span>
								<span class="name">제주 한화 아쿠아플라넷 입장권</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>27,900</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>39,800</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

			</ul>
		</div>

		<div id="rcmdTab3" class="rcmd-tabcontent">
			<h3 class="screen-out">배송상품(모바일 전용)</h3>
			<ul class="prd-list type-4 size-large ">

				<li>
					<a href="javascript:goDetail(&#39;EP_8970&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">1</span>
								</div>
							
								<div class="tag">
									<span class="sale">58
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/8970.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[쟈니마르켈] 스페인 방수형 3중날 충전식 전기면도기 PQR-5100S</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>29,200</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>69,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_8980&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">2</span>
								</div>
							
								<div class="tag">
									<span class="sale">24
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/8980.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[BOSSWIZ] 스마트 자동센서 고속 무선충전기 BSW-30</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>43,600</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>57,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_8534&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">3</span>
								</div>
							
								<div class="tag">
									<span class="sale">70
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/8534.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[이픽데코] 분위기up의 만남 프리미엄 헥사곤 거실러그(카페트)-150 x 200(대형)</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>37,100</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>125,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_2212&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">4</span>
								</div>
							
								<div class="tag">
									<span class="sale">29
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/2212.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[TS] TS패스트샴푸 500g</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>20,900</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>29,500</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_4958&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">5</span>
								</div>
							
								<div class="tag">
									<span class="sale">20
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/4958.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[TS] 착한치약(에코서트 인증 원료) 100g x 4개</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>31,200</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>39,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_7426&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">6</span>
								</div>
							
								<div class="tag">
									<span class="sale">86
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/7426.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[미켈란젤로] 독일 아카나 홈세트 14PCS ARC-HOM14P</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>16,600</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>115,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_2190&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">7</span>
								</div>
							
								<div class="tag">
									<span class="sale">41
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/2190.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[TS] 올뉴TS샴푸 300g x 2개</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>38,700</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>66,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

				<li>
					<a href="javascript:goDetail(&#39;EP_4847&#39;,&#39;P&#39;);">
						<dl class="wrap-prd discount">
							<dt class="thumb">
								<div class="count-area">
									<span class="count">8</span>
								</div>
							
								<div class="tag">
									<span class="sale">75
										<em>%</em>
									</span>
								</div>
							
								<span class="img">
									<img src="./assets/images/main/4847.jpg">
								</span>
							</dt>
							<dd class="desc">
								<span class="mms">배송상품</span>
								<span class="brand">배송상품</span>
								<span class="name">[종근당] 일품 6년근 홍삼 70ml x 30포</span>
								<ul class="wrap-price">
									<li class="price">
										<span>
											<strong>25,000</strong>
											<em>원</em>
										</span>
									</li>
								
									<li class="normalprice">
										<span>
											<strong>99,000</strong>
											<em>원</em>
										</span>
									</li>
								
								</ul>
							</dd>
						</dl>
					</a>
				</li>

			</ul>
		</div>
	</div>
</section>
<!-- //201809 배송서비스 추가 -->
<!-- // 추천상품 -->

<hr class="divider container">

<section class="container wrap-mainbrand">
	<ul>
		<li>
			<a href="#">
				<span>인기 브랜드 &gt;</span>
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;스타벅스&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/001.png">
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;배스킨라빈스&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/011.png">
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;파리바게뜨&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/005.png">
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;던킨도너츠&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/013.png">
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;메가박스&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/015.png">
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;도미노피자&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/014.png">
			</a>
		</li>
		<li>
			<a href="javascript:goDetail(&#39;KFC&#39;, &#39;B&#39;);">
				<img src="./assets/images/main/012.png">
			</a>
		</li>
	</ul>
</section>

<hr class="divider container">

  <section class="container wrap-mainetc">
    <ul class="etc-menu">
      <li><a href="#">MMS 재전송</a></li>
      <li><a href="#">구매취소/환불 안내</a></li>
      <li><a href="#">자주하는 질문</a></li>

<!-- 		<li><a href="javascript:alert('안드로이드 모바일 기기에서 지원 가능합니다.');">바로가기추가</a></li> -->
      
      <li>
        <span class="noticeTit">공지사항</span>
        <div id="list_rolling" style="overflow: hidden; position: relative; height: 60px;">
          <ul class="rolling" style="position: absolute; margin: 0px; padding: 0px; width: 100%; top: 0px;">
	
		
	
		
	
		
            
          <li style="margin: 0px; padding: 0px;"><a class="notice" href="javascript:goNotice(190201000157);"><span>개인정보처리방침 변경에 따른 사전 공지  ...</span><i></i></a></li><li style="margin: 0px; padding: 0px;"><a class="notice" href="javascript:goNotice(181203000156);"><span>[긴급공지] SKT 정기점검으로 인한 T데이터...</span><i></i></a></li><li style="margin: 0px; padding: 0px;"><a class="notice" href="javascript:goNotice(180927000155);"><span>개인정보 처리방침 및 이용약관 변경에 따 ...</span><i></i></a></li></ul>
        </div>
      </li>
    </ul>

  </section>
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
      <li class="bottom-logo"><img src="./assets/images/main/bottom-logo.png"></li>
      <li class="address">
         브이피(주) | 대표이사 김준 | 사업자등록번호 : 220-81-89229<br>
        서울 강남구 테헤란로 309(역삼동 702-2) 삼성제일빌딩 10층<br>
        고객센터:1577-3033 (09:00~18:00, 주말 및 공휴일 제외)<br>
        <p class="copy">Copyright (c) VP Inc. All right reserved.</p>
      </li>
      <li class="call"><img src="./assets/images/main/call.png"></li>
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
<script async="" src="./assets/js/main/analytics.js"></script><script type="text/javascript" src="./assets/js/main/analyticstracking.js"></script>
<script type="text/javascript" src="./assets/js/main/wcslog.js"></script>
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
<script src="./assets/js/main/jquery.min.js"></script>
<script src="./assets/js/main/modernizr.min.js"></script>
<script src="./assets/js/main/jcider.min.js"></script>	<!-- 공통 헤더, 메인사용(슬라이드) -->
<script src="./assets/js/main/jquery.vticker-min.js"></script>	<!-- 메인에서만 사용 20160527 추가 -->
<script src="./assets/js/main/jflex.js"></script>	<!-- index.jsp 메인에서만 사용됨..(상단 카테고리 슬라이드 영역) -->
<script src="./assets/js/main/jquery.sea.tabs.js"></script>	<!-- index.jsp 메인에서만 사용됨..(중앙 카테고리별 상품 영역) -->
<script src="./assets/js/main/common.js"></script>			<!-- 공통 jquery 스크립트 -->
<script src="./assets/js/main/nvpshop.js"></script>				<!-- 공통 스크립트 -->

<script type="text/javascript">


$(function(){
	
	// IE 버전체크
	checkVersion();
	
	// 강제업데이트 체크
	var isapp = (/(giftshop)/i).test(navigator.userAgent);		// 20161129 앱버전 체크
	if(isapp) {			// 기프트샵 앱버전인경우
		checkUpdate();
	}
	
	// 하단 공지사항 상하플립
    $('#list_rolling').vTicker({
        speed: 700, // 스크롤 속도(default: 700)
        pause: 3000, // 스크롤 사이의 대기시간(default: 4000)
        animation: 'fade', // 스크롤 애니메이션
        mousePause: true, // 마우스 over 일때 멈출 설정
        showItems: 1, // 한번에 보일 리스트수(default: 2)
        height: 60, // 스크롤 컨테이너 높이(default: 0)
        direction: 'up' // 아이템이 움직이는 방향, up/down (default: up)
    });
    
	// 익스 하위버전 알림창 닫기
    $('.btnClose > a').click(function() {
        $('.top-notice').fadeOut();
        $('.warning_bg').fadeOut();
    });
    
	
    $('#rcmdTab li').click(function () {
		var activeTab = $(this).attr('data-tab');
		$('#rcmdTab li').removeClass('current');
		$('.rcmd-tabcontent').removeClass('current');
		$(this).addClass('current');
		$('#' + activeTab).addClass('current');
	});

	var scrollOffset = $('.header').height();
	$(window).scroll(function () {
		if ($(document).scrollTop() > scrollOffset) {
			$('#rcmdTab').addClass('rdmc-tab-fixed');
		} else {
			$('#rcmdTab').removeClass('rdmc-tab-fixed');
		}
	});
});

function checkVersion() {
    var ver = detectIE();
    
    //console.log(window.navigator.userAgent);
    //console.log(ver);
    if (ver > -1 && ver < 9) {
    	 $('.top-notice').show();
         $('.warning_bg').show();
    }
}

function goMarket() {
//	alert("마켓으로이동");
	location.href = "http://bit.ly/2imb8Yi";
//	location.href = "https://market.android.com/details?id=kr.co.vp.giftshop";
//	location.href = "intent://ispshop.co.kr#Intent;scheme=giftshop;package=kr.co.vp.giftshop;end;";
}

<!-- ///  layer popup script  ///-->
function setCookieHours( name, value, expirehours ) {
    var todayDate = new Date();
    todayDate.setHours( todayDate.getHours() + expirehours );
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}
function setCookieDays( name, value, expiredays ) {
    var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";";
}
function closeWin(targetId) {
   	document.getElementById(targetId).style.display = "none";
}
function closeWinWithTerm(targetId, expiredays) {
  	setCookieDays( "ncookie_" + targetId, "done" , expiredays );
	document.getElementById(targetId).style.display = "none";
}
 <!-- ///  layer popup script  ///-->
 
function checkUpdate() {
	
	if ("N" == 'Y') {
		alert("새로운 업데이트가 있습니다. 마켓으로 이동합니다.");

		var mobileChk = navigator.userAgent;
		
		if(mobileChk.indexOf("iPhone") > 0 || mobileChk.indexOf("iPod") > 0 || mobileChk.indexOf("iPad") > 0) {
			//location.href = 'https://itunes.apple.com/kr/app/paycall/id1117243754?mt=8';
		}
		else {
		 	giftshop.requestMessage('market_update');
		 	giftshop.requestMessage('exit_no_confirm');
		}
	}
	
}
</script><style type="text/css">.slides--titles li.title--auto.title--active .title--l { transition: all linear 5s; }.slides--titles li .title--l {background: #fff;}.slides--titles .title--active .title--t, .jflex--dark .slides--titles .title--active .title--t {color: #fff;}</style>
<!-- Script - end -->

<!-- 
======================================================================== -->
<!-- 미니 mini layer popup html - start 2016.07.05 / modify 2017.06.26
======================================================================== -->

<!-- layer popup html - end
======================================================================== -->
<!-- 전면 full layer popup html - start 2017.06.26
======================================================================== -->

<!-- layer popup html - end
======================================================================== -->




</body></html>