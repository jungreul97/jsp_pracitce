<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String coid = "jungreul97";
	String copw = "123456";
%>    
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(id.equals(coid) && copw.equals(pw)){
			out.println(coid+"님 환영합니다.");
		}else{
			out.println("로그인에 실패했습니다<br/>");%>
			<a href="req_login.form.jsp">로그인 창으로 돌아가기</a>
		<%}
	%>
</body>
</html>