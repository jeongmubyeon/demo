/**
 * 
 */
function actionLogin() {
	var frm = document.goform;
	
	//공백제거
	var uid = frm.uid.value.trim();
	
	// validation check
	if(uid == "") {
		alert("아이디를 확인해주세요.");
		frm.uid.focus();
		return;
	}else if(frm.pwd.value == ""){
		alert("비밀번호를 확인해주세요.");
		frm.pwd.focus();
		return;
	} 
	
	frm.uid.value = uid;
	frm.step.value ="VGS1000";
	frm.submit();
}

function actionLogout() {
	
	if(confirm("로그아웃 하시겠습니까?")) {
		location.href = "/nvpshop/member?step=VGS1100";
	}else {
		return;
	}
	
}

function goDetail(idx_num, gubun)
{
	var gform = document.goform;
	
	if(gubun == 'P'){
		gform.action = 'product_detail.jsp?goodsIdx=' + idx_num;	
	}else if(gubun == 'B'){
		//gform.action = 'brandshop_detail.jsp?brandCode=' + idx_num;
		gform.action = 'brandshop_detail.jsp?brandName=' + idx_num;
	}else if(gubun == 'C'){
		gform.action = 'category.jsp?cateCode=' + idx_num;	
	}else if(gubun == 'E'){
		gform.action = 'event_detail.jsp?eventSeqno=' + idx_num;	
	}else if(gubun == 'M'){
		gform.action = 'mycoupon_detail.jsp?orderNo=' + idx_num;	
	}else if(gubun == 'T'){
		gform.action = 'themeshop.jsp?themeCode=' + idx_num;	
	}

	gform.submit();
}

function goNotice(noticeSeqno)
{
	var gform = document.goform;
	gform.action = 'cs_notice_detail.jsp?seqNo=' + noticeSeqno;
	gform.submit();
}



function chkBrowser()
{
	var isie = (/msie|trident/i).test(navigator.userAgent);
	var isios = (/(ipod|iphone|ipad)/i).test(navigator.userAgent);
	var isandroid = (/(android)/i).test(navigator.userAgent);
	var issafari = (/(safari)/i).test(navigator.userAgent);
	var ischrome = (/(chrome)/i).test(navigator.userAgent);
	var isopera = (/(opera|opr)/i).test(navigator.userAgent);
	var isfirefox = (/(firefox)/i).test(navigator.userAgent);

	var br = "";
	var isMobile = false;

	if (isios) {
		br = "Mobile[ios]";
		isMobile = true;
	} else if (isandroid) {
		br = "Mobile[android]";
		isMobile = true;
	} else if (isie) {
		br = "PC[ie]";
	} else if (issafari) {

		if (isopera) {
			br = "PC[opera]";
		} else if (ischrome) {
			br = "PC[chrome]";
		} else {
			br = "PC[safari]";
		}

	} else if (isfirefox) {
		br = "PC[firefox]";
	} else {
		br = "unknown";
	}
	
	return isMobile;

}

// 배송스토어 - 새창열기로 변경 20160523
function goDelivery() {
	var noti = ' * 배송사 사정으로 "배송스토어" 서비스가 당분간 중단되오니,\r\n';
	noti += "이점 양해 부탁드립니다.\r\n";
	noti += "이용에 불편을 드려서 대단히 죄송합니다.\r\n";
	noti += "감사합니다. * ";
	alert(noti);
	return;
	
	  /*if ( chkBrowser() ) {
		  //var win_option	= 'width=420, height=600, resizable=1, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250';
		  var popup = window.open('https://vp.king-con.co.kr/m/', 'dlvrStore');
			
		  popup.focus();
			
		 // location.href = "deliveryshop.jsp";
	  }else {
		  alert("모바일 전용 메뉴입니다.");
		  return;
	  }*/
	  
}


// 배송조회 - 아이프레임
function viewDelivery() {
	
	if ( chkBrowser() ) {
		
		location.href = "/nvpshop/jsp/mydelivery.jsp";
		
	  }else {
		  alert("모바일 전용 메뉴입니다.");
		  return;
	  }
	
}

function search()
{
	var sform = document.searchform;
	var str = sform.searchKey.value;
	if(str == ""){
		alert("검색어를 입력하세요.");
		return;
	}else{
		//sform.action = 'search_result.jsp';
		sform.submit();		
	}
			
}

// ie 버전 체크
function detectIE() {
    var ua = window.navigator.userAgent;

    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        // IE 10 or older => return version number
        return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
    }

    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        // IE 11 => return version number
        var rv = ua.indexOf('rv:');
        return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
    }

    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
       // Edge (IE 12+) => return version number
       return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
    }

    // other browser
    return -1;
}

// ie 버전체크 - 정규식
function getInternetExplorerVersion() {
    var rv = -1;
    if (navigator.appName == 'Microsoft Internet Explorer') {
        var ua = navigator.userAgent;
        var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
        if (re.exec(ua) != null)
            rv = parseFloat(RegExp.$1);
    }
    return rv;
}

// 즐겨찾기 추가
function bookmarksite() {

	var ver = detectIE();
	var url;

	//console.log(window.location.origin);
	
	if(!window.location.origin) {
		url = window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':'+ window.location.port) : '');
		url += "/nvpshop/jsp/index.jsp";
	}else {
		url = window.location.origin +"/nvpshop/jsp/index.jsp";
	}
	
	//console.log(url);
	
	if(ver > -1) {
		window.external.AddFavorite(url, '안전결제 기프트샵');
	}else {
		alert("해당 브라우저의 즐겨찾기 기능을 이용해주세요.");
	}
}

//모바일 기종 체크
var isMobile = {
        Android: function () {
            return (/Android/i).test(navigator.userAgent);
        },
        IOS: function () {
        	return (/iPhone|iPad|iPod/i).test(navigator.userAgent);
        },
        Opera: function () {
            return (/Opera Mini/i).test(navigator.userAgent);
        },
        Windows: function () {
        	return (/IEMobile/i).test(navigator.userAgent);
        },
        BlackBerry: function () {
        	return (/BlackBerry/i).test(navigator.userAgent);
        },
        any: function () {
                 return (isMobile.Android() || isMobile.BlackBerry() || isMobile.IOS() || isMobile.Opera() || isMobile.Windows());
        }
}

//앱 설치 이동 처리
function goToInstallApp(){
	if(isMobile.Android()){ //안드로이드일때
		//setTimeout("location.href='http://bit.ly/2imb8Yi'", 1500);
		location.href='market://details?id=kr.co.vp.giftshop';
	}else if(isMobile.IOS()){ //IOS일때
		location.href='https://appsto.re/kr/jee9jb.i';
	}else{
	    alert("포샵 앱을 설치할 수 없는 환경입니다.\r\n모바일을 통해 이용해주세요.")
	}
}

//숫자 세자리 콤마 추가
function numberWithCommas(numStr){
	if(numStr != null) {
		return numStr.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	} else {
		return "";
	}
}