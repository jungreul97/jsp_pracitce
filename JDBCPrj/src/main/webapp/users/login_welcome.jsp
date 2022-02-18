<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 정보를 확인해
	//ID님 접속을 환영합니다. 라고 안내해주는 화면을 만들어 보겠습니다.
	//추후 여기에는 탈퇴하기, 가입하기, 정보수정하기 버튼이 추가될 예정입니다.
	String sid = (String)session.getAttribute("session_id");

	//로그인 안된 사용자가 여기로 접근하면 로그인페이지로 보내주세요.
	if(sid == null){
		response.sendRedirect("login_form.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=sid %>님 접속을 환영합니다.</h1>
	<a href = "login_update.jsp">정보수정하기</a>
	<a href = "logout.jsp">로그아웃하기</a>
	<a href = "member_out.jsp">회원탈퇴하기</a>
</body>
</html>