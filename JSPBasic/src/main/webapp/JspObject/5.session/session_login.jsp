<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인한 사용자가해당 페이지에 접근했는지 안했는지 세션 조회로 체크
	String id = (String)session.getAttribute("session_id");
	String pw = (String)session.getAttribute("session_pw");
	String nickName = (String)session.getAttribute("session_nick");
	
	//로그인된 상태라면 저장된 값이, 아니면 null이 콘솔에 찍힘
	//로그인한 적이 없으면 null이 나옴
	System.out.println(id);
	System.out.println(pw);
	System.out.println(nickName);
	
	// 위의 값(id,pw,nickName)이 null이 아닌경우는 로그인이 이미 된 상태입니다.
	// 세션은 login_check.jsp에서 로그인 로직을 통과한 경우에만 발급되기 때문입니다.
	// 이를 이용해 세션에 값이 발급된 경우에는 welcome페이지로 리다이렉트 되도록 아래에 로직을 짜 보세요.
	if(id != null)response.sendRedirect("session_welcome.jsp");
	
	//로그인 안 한 사용자가 오면 login페이지로 되돌려보내주세요.
	if(id == null)response.sendRedirect("session_login.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "session_login_check.jsp" method = "post">
		id : <input type = "text" name = "id" placeholder = "아이디"><br/>
		password : <input type = "number" name = "password" placeholder = "비밀번호" required><br/>
		nickname : <input type = "text" name = "nickname" placeholder = "닉네임" required><br/>
		<input type = "submit" value = "제출하기">	
	</form>
	
	
</body>
</html> 