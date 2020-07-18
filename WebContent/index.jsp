<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	session.invalidate();
    	session = request.getSession(true);
    	response.sendRedirect("/demo/index.html");	
     %>