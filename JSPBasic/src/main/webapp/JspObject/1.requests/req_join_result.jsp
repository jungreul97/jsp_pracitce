<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(id.equals("abcd")){
			out.println("중복된 아이디로 가입할 수 없습니다.");
		}else{
			out.println(id+"("+name+")"+"님 회원가입을 축하드립니다.");
		}
	%>
</body>
</html>