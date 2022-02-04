<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int age = Integer.parseInt(request.getParameter("age"));

	//.sendRedirect() 가 호출되면 거기 적힌 사이트로 강제로 이동시킵니다.
	//response.sendRedirect("https://www.naver.com");
	
	if(age>=20){
		response.sendRedirect("res_adult.jsp");
	}else{
		response.sendRedirect("res_child.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>