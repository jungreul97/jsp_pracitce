<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션이 있으면 welcome 페이지로 보내버림
	String sid = (String)session.getAttribute("session_id");
	if(sid != null){
		response.sendRedirect("login_welcome.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 아이디와 비밀번호를 적어넣을 수 있는 폼을 만들어주세요.
	목적지는 login_check.jsp입니다. -->
	<form action = "login_check.jsp" method = "post">
		<input type = "text" name = "fid" placeholder = "아이디"/><br/>
		<input type = "password" name = "fpw" placeholder = "비밀번호"/><br/>
		<input type = "submit" placeholder = "로그인"/><br/>
		<input type = "reset" placeholder = "초기화"/><br/>
	</form>
	<a href = "join_form.jsp">회원가입하기</a>
</body>
</html>