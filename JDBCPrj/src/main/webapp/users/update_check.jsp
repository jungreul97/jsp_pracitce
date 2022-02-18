<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	// 1. form에서 보낸 비번, 이름, 이메일을 변수로 저장해주세요.
	String upw = request.getParameter("fpw");
	System.out.println(upw);
	String uname = request.getParameter("fname");	
	String uemail = request.getParameter("femail");	
	
	//2. session에 저장된 아이디를 변수로 저장해 주세요.
	String uid = (String)session.getAttribute("session_id");
	
	//3. DB접속정보 변수로 관리
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	
	try{
		//4. 연결
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl,dbId,dbPw);
		
		//5. pstmt생성 및 ?에 값 세팅
		// 쿼리문 : 
		String sql = "UPDATE userinfo SET upw = ?, uname = ?, uemail = ? WHERE uid = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,upw);
		pstmt.setString(2,uname);
		pstmt.setString(3,uemail);
		pstmt.setString(4,uid);
		
		//6. pstmt 실행 및 자원 회수
		pstmt.executeUpdate();
		con.close();
		pstmt.close();
		
		//7. body태그에 XXX회원의 정보가 수정되었습니다. 라고 안내해주고
		// 웰컴페이지로 돌아갈 수 있는 링크 넣어주기
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= uid %>회원의 정보가 수정되었습니다.
	<a href = "login_welcome.jsp">월컴페이지로 돌아가기</a>
</body>
</html>