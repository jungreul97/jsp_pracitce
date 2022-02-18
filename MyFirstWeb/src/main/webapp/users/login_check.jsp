<%@page import="kr.co.ict.UserVO"%>
<%@page import="kr.co.ict.UserDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	//폼에서 날려준 데이터를 받아서 변수에 저장해주세요.
	String fid = request.getParameter("fid");
	String fpw = request.getParameter("fpw");
	//DB연결을 위한 변수 선언
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	
	try{
		/* // 1. DB종류 선택 및 연결
		Class.forName(dbType);
		Connection con = DriverManager.getConnection(dbUrl,dbId,dbPw);
		
		// 2. 쿼리문(사용자가 입력해준 fId 조회하기) 선언 및 PreparedStatement 객체 생성
		String sql = "SELECT * FROM userinfo WHERE uid = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,fid);
		
		// 3. 쿼리문 실행 결과 ResultSet에 받기
	   	ResultSet rs = pstmt.executeQuery(); */
	   	
	   	// 1~3 번 로직을 DAO의 getUserData를 사용해 수행하도록 변경해주세요.
	   	// (login_update.jsp)에서 UserVO를 받아오는 부분을 참고하세요.
	   	//DAO를 활용한 로직으로 전환
		//1. DAO 생성
		UserDAO dao = new UserDAO();
		//2. DAO내부에서 회원 1명의 정보만 가져오는 getUserData호출
		UserVO user = dao.getUserData(fid);
		
		// 4. 사용자 입력 id를 기준으로 들어온 데이터가 있다면,(fid.equals(DB내에 저장된 ID))로 검사 가능)
		//    DB에 적재되어 있던 비밀번호를 마저 사용자 입력 비밀번호와 비교해 둘 다 일치하면 세션 발급
		//    그렇지 않다면 로그인에 실패했습니다. 메세지가 뜨도록 처리
		if(user.getuId()!=null){
			/* String uid = rs.getString("uid");
			String upw = rs.getString("upw"); */
			String uid = user.getuId();
			String upw = user.getuPw();
			out.println(user.getuId());
			out.println(user.getuPw());
			if(fid.equals(uid) && fpw.equals(upw)){
				out.println("<h1>"+fid+"님 로그인에 성공하셨씁니다.</h1>");
				session.setAttribute("session_id",uid);
				session.setAttribute("session_pw",upw);
				response.sendRedirect("login_welcome.jsp");
			}else{
				out.println("비밀전호가 틀렸습니다 다시 확인해주세요.");
			}
		}else{
			out.println("로그인에 실패했습니다.");
		}
	}catch(Exception e){
		e.printStackTrace();
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