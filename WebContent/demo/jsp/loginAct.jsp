<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if (!"".equals(id) && !"".equals(pw) && id != null && pw != null) {
	session.setAttribute("userId", id);
	
	response.sendRedirect("../main.jsp");
} else {
	%>
	<script>
	alert("아이디와 패스워드를 확인하시기 바랍니다.");
	location.href = "../login.html";
	</script>
	<%
}
%> 