<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- get이면 정보 보호 안되고 post는 정보 보호됨 로그인할때 많이 사용한다. --%>
	<h1>로그인 창입니다.</h1>
	<form action = "req_login_result.jsp" method = "post">
		아이디 입력 : 
		<input type = "text" name = "id" size = "15px"><br/>
		비밀번호 입력 : 
		<input type = "password" name = "pw" size = "15px"><br/>
		<input type = "reset" value = "초기화">&nbsp;
		<input type = "submit" value = "로그인"><br/>
		<a href = "req_join_form.jsp">회원가입</a>
	</form>
</body>
</html>