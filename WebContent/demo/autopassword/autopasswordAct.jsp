<%@page import="com.auth0.jwt.interfaces.Claim"%>
<%@page import="java.util.Map"%>
<%@page import="com.auth0.jwt.interfaces.DecodedJWT"%>
<%@page import="com.auth0.jwt.JWT"%>
<%@page import="com.auth0.jwt.JWTVerifier"%>
<%@page import="java.util.Base64"%>
<%@page import="com.auth0.jwt.algorithms.Algorithm"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String USER_AGENT = "Mozilla/5.0";
private String sendGet(String url) throws Exception {     //HTTP GET 함수
	URL obj = new URL(url);
	HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	// optional default is GETcon.setRequestMethod("GET");
	//add request header
	con.setRequestProperty("User-Agent", USER_AGENT);
		int responseCode = con.getResponseCode();
	if (responseCode != 200) {
		System.out.println(responseCode);
		throw new Exception("responseCode::"+ responseCode);
	}
	BufferedReader in = new BufferedReader(
	        new InputStreamReader(con.getInputStream()));
	String inputLine;
	StringBuffer response = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
		response.append(inputLine);
	}
	in.close();
return response.toString();	
}
%>
<%@include file="./common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String accessToken = request.getParameter("accessToken");    //accessToken 추출
String infoToken = null;
try {
	String jsonStr = sendGet( "https://lifein-test.vpay.co.kr/lifein/web/simpleapi/getLogedInUser?accessToken="+ accessToken);
	JSONObject json  = new JSONObject(jsonStr);
	if (json.getBoolean("result")) {
		infoToken = json.getJSONObject("data").getString("infoToken");  //infoToken 추출
	} else {
		throw new Exception("invalid accessToken");
	}
} catch(Exception e) {
	//유효하지 않은 토큰 처리
	%>ERROR accessToken : <%=e.getMessage()%><%
	return;
}
%>
<%

Algorithm algorithmHS = Algorithm.HMAC256(Base64.getDecoder().decode(securityKey));
JWTVerifier verifier = JWT.require(algorithmHS)
		.acceptExpiresAt(60)				//유효기간 60초
		.build();
try {
	verifier.verify(infoToken);				//토큰 유효성 검증
	DecodedJWT jwt = JWT.decode(infoToken);		
	Map<String, Claim> claims = jwt.getClaims();
	String userId = claims.get("userId").asString();		//사용자 아이디
	String random = claims.get("random").asString();		//random
	String customData = claims.get("customData").asString();	//customData
	
	if (!random.equals(session.getAttribute("AutoPassword") + "")) {  	//random값 비교
		throw new Exception("random is invalid");
	} else {
		//인증성공, /로그인 처리하기
		%>성공 <%=userId%> :: <%=customData%>  :: <%=infoToken%>	<%
		session.setAttribute("userId", userId);
		response.sendRedirect("../main.jsp");
	}
} catch (Exception e) { 
	%>ERROR infoToken  : <%=e.getMessage()%><%	
}
%>
</body>
</html>
