<%@page import="kr.co.ict.UserDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.ict.UserVO"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 아까 발생했던 rs.close() 실행 문제로 인해
	// DB에 있는 자료를 꺼냈을 때, 곧바로 java데이터로 받아오는 작업을 수행한 다음
	// rs.close()를 하면 문제가 없습니다.
	// 따라서 SELECT 구문의 결과 (SQL데이터)를 자바 형식으로 담을 클래스가 필요하고
	// 이를 VO(Value Object)라고 부릅니다.
	// VO는 클래스이기 때문에 src/main/java에 클래스를 선언 및 정의합니다.
	// UserVO.class를 만들어 보겠습니다.
	
	/*
	//1. DB접속 변수 생성
	String dbType = "com.mysql.cj.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
	String dbId = "root";
	String dbPw = "mysql";
	
	//java.sql 관련 변수들도 앞으로 위에서 미리 선언해둡니다.
	ResultSet rs = null;
	Connection con = null;
	PreparedStatement pstmt = null;
	
	//ArrayList<UserVO> 자룔형을 이용해 한줄 한줄 단위로 여러 row를 저장합니다.
	List<UserVO> userList = new ArrayList<>();
	
	//2. 연결
	try{
		Class.forName(dbType);
		con = DriverManager.getConnection(dbUrl,dbId,dbPw);
		
		//3. SELECT * FROM userinfo 실행 및 resultSet에 저장
		String sql = "SELECT * FROM userinfo";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		// 테이블에 저장된 데이터를 자바로 옮기기 위해서 UserVO를 선언했습니다.
		// UserVO 하나 생성으로 몇 row에 해당하는 데이터를 받아올 수 있을까요?
		while(rs.next()){
			// 1. ResultSet에서 데이터 가져오기
			String uname = rs.getString("uname");
			String uid = rs.getString("uid");
			String upw = rs.getString("upw");
			String uemail = rs.getString("uemail");
			
			UserVO userData = new UserVO(uname,uid,upw,uemail);
			userList.add(userData);
		}
		System.out.println(userList);
		out.println(userList+"<br/>");
		
	}catch(Exception e){
		e.printStackTrace();
		
	}finally{
		//finally는 try와 블럭(지역)이 다르기 때문에
		//try 진입 전에 미리 선언해둬야 아래와 같이 .close() 구문을 적어둘 수 있습니다.
		
		//문제는 현재 이 구문에서는 rs.next()가 rs.close()를 한 이후에 배치되어 있어서
		//에러가 발생합니다.
		//rs의 데이터를 다뺏기 때문에 이제 안쓴다
		con.close();
		pstmt.close();
		rs.close();
	}
	*/
	
	//모든 접속 정보는 UserDAO 클래스 내에 있습니다.
	//따라서 UserDAO를 생성하는 것으로 접속정보 설정이 끝납니다.
	UserDAO dao = new UserDAO(); //DB종류 지정까지 완료
	//dao 내부에 userinfo 테이블 전체의 데이터를 가져오는
	//getAllUserList()를 호출하는 것으로 필요 데이터 적재가 끝납니다.
	List<UserVO> userList = dao.getAllUserList();
	//DB내 전체 데이터를 우측에 배달받아 좌변에 저장(대입);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  향상된 for문을 통해서 userList내부의 데이터를 Table형태로
	user_list1과 동일한 양식으로 화면에 출력해주세요. -->
	<table border = "1">
		<thead>
			<tr>
				<th>유저이름</th>
				<th>유저아이디</th>
				<th>유저비번</th>
				<th>유저이메일</th>
			</tr>
		</thead>
		<tbody>
			<% for( UserVO user : userList){ %>
				<tr>
					<td><%= user.getUname() %></td>
					<td><%= user.getUid() %></td>
					<td><%= user.getUpw() %></td>
					<td><%= user.getUemail() %></td>
				</tr>
			<% }  %>
		</tbody>
	</table>
</body>
</html>