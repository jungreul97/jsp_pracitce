<%@page import="kr.co.ict.UserVO"%>
<%@page import="kr.co.ict.UserDAO"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 세션에서 아이디를 얻어옵니다. 세션결과값이 null 이면 login_form.jsp로 이동
	String sid = (String)session.getAttribute("session_id");
	if(sid == null)response.sendRedirect("login_form.jsp");
	
	/*
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	
	String uname = null;
	String uemail= null;
	
	try{
		//2. DB연결
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl,dbId,dbPw);
		
		//3. 로그인된 아이디의 전체 정보(SELECT * FROM...)을 얻어옵니다.
		String sql = "SELECT * FROM userinfo WHERE uid = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,uid);
		ResultSet rs = pstmt.executeQuery();
		
		//4. name, email을 변수에 저장합니다.
		//혹시나 데이터가 안들어왔을 상황을 대비해 rs.next()는 if문의 조건절에 넣어서
		//실행하는것이 좋습니다.
		if(rs.next()){
			uname = rs.getString("uname");
			uemail = rs.getString("uemail");
		}
		//접속 끊기
		con.close();
		pstmt.close();
		
		//5. 하단 form의 value에 해당 변수에 든 값이 들어가도록 설정합니다.
		
	}catch(Exception e){
		e.printStackTrace();
	} */
	
	//DAO를 활용한 로직으로 전환
	//1. DAO 생성
	UserDAO dao = new UserDAO();
	//2. DAO내부에서 회원 1명의 정보만 가져오는 getUserData호출
	UserVO user = dao.getUserData(sid);
	//3. 얻어온 user 내용물 확인
	out.println(user+"<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  update의 경우는  update_check.jsp로 자료를 보내야 하는데
	보통 정보 수정을 하는 경우는, 미리 회원정보가 form에 기입되어 있는 경우가 많습니다.
	먼저 폼 양식은, 아이디 없이 비밀번호는 비어있고, name, email은 DB에 있던 정보가
	채워진 상태로 창이 열리게 만들겠습니다. 폼만 완성시켜 보내주세요. -->
	<h1><%= sid %>의 정보를 수정합니다!</h1>
	<form action="update_check.jsp" method = "post">
		<input type = "password" name = "fpw" placeholder = "비밀번호"/><br/>
		<input type = "text" name = "fname" placeholder = "이름" value = <%= user.getUname() %>/><br/>
		<input type = "email" name = "femail" placeholder = "이메일" value = <%= user.getUemail() %> /><br/>
		<input type = "submit" value = "수정하기"/><br/>
		<input type = "reset" value = "초기화"/><br/>
	</form>
	

</body>
</html>