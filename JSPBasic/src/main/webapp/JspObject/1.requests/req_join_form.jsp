<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 창입니다.</h1>
	<form action = "req_join_result.jsp" method = "post">
		아이디 입력 : <input type = "text" name = "id" size = "15px"><br/>
		비밀번호 입력 : <input type = "password" name = "pw" size = "15px"><br/>
		이름 입력 : <input type = "text" name = "name" size = "15px"><br/>
		나이 입력 : <input type = "number" name = "age" size = "15px"><br/>
		<input type = "reset" value = "초기화하기">&nbsp;
		<input type = "submit" value = "회원가입하기"><br/>
		<a href = "req_join_form.jsp">회원가입</a>
	</form>
</body>
</html>