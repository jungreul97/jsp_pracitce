<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 테스트</title>
</head>
<body>
	<!--  post이면 url에 넘어가지 않고 get이면 url주소에 표시된다. -->
	<form action = "#" method = "post">
		<input type = "text" name = "id" placeholder = "아이디"/><br/>
		<input type = "password" name  = "pw" placeholder  = "비밀번호"><br/>
		<input type = "submit" value = "제출"/>
	</form>
		
</body>
</html>