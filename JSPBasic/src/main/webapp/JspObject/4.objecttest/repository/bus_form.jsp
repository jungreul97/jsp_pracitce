<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>당신은 버스를 타려고 합니다.</h1>
<img src = "./repository/bus.jpg" width = "700px" height = "500px"/>

<form action = "bus_check.jsp" method = "post">
	나이 입력 : <input type = "number" name = "age">
		<input type = "submit" value = "제출하기">
</form>
</body>
</html>