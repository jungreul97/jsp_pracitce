<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글이 깨지지 않게 인코딩 설정 바꾸기
	request.setCharacterEncoding("utf-8");
	//form에서 보내준 데이터 받아오기
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String nickname = request.getParameter("nickname");
	
	String loginCheck = (String)session.getAttribute("session_id");
	if(loginCheck != null){
		response.sendRedirect("session_welcome.jsp");
	}
	
	//로그인 로직 작성
	if(id.equals("kkk1234") && password.equals("1111")){
		session.setAttribute("session_id",id);
		session.setAttribute("session_pw",password);
		session.setAttribute("session_nick",nickname);
		response.sendRedirect("session_welcome.jsp");
	}else{%>
		<a href = "#">로그인 창으로 돌아가기</a>
  <%}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>