<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 폼에서 날라온 데이터들을 저장해주세요.
	
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String autoLogin = request.getParameter("auto");//"checked"
	
	
	// 만약 자동로그인설정이 되어 있다면 쿠키를 생성해주시고
	// cookie name값은 "auto_login" value 값은 전달받은 아이디로 해 주세요.
	// 쿠키 유효시간은 50초 입니다.
	// 쿠키가 생성되었건 말건 cookie_welcome.jsp로 리다이렉트 시켜줍니다.
	
	if(userId.equals("abcd1234") && userPw.equals("aaaa1111")){
		if(autoLogin != null){
			//쿠키생성
			Cookie auto = new Cookie("auto_login",userId);
			//쿠키 유효시간 세팅
			auto.setMaxAge(50);
			//쿠키는 생성했으면 발급까지 처리해야함.
			response.addCookie(auto);
		}
		response.sendRedirect("cookie_welcome.jsp");
	}
	
	
	// 만약 로그인에 실패했다면 body태그내에
	// "로그인에  실패했습니다."라는 문구와 함께
	// a태그를 이용해 로그인화면으로 돌아가는 로직을 대신 볼 수 있도록 처리해주세요.
	// 아이디는 abcd1234이고 비밀번호는 "aaa1111"인 경우 로그인을 허용합니다.
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인에 실패했습니다.</h2>
	<a href = "cookie_login.jsp">돌아가기</a>
</body>
</html>