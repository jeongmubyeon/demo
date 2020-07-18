<%@page import="com.auth0.jwt.JWT"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Base64"%>
<%@page import="com.auth0.jwt.algorithms.Algorithm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common.jsp" %>
<%
Algorithm algorithmHS = Algorithm.HMAC256(Base64.getDecoder().decode(securityKey));
com.auth0.jwt.JWTCreator.Builder b = JWT.create()
	.withIssuer("autopassword")
	.withExpiresAt(new Date())				//만료일설정
	.withClaim("corpId", corpId)				//회사 아이디
	.withClaim("random", "" + System.currentTimeMillis())	//random값
	.withClaim("userId", session.getAttribute("userId") + "");	//사용자 아이디
String token = b.sign(algorithmHS);
%>
<%=token%> 
