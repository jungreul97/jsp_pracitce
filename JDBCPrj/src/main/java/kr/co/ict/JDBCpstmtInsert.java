package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class JDBCpstmtInsert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 접속용 DB종류, 주소, id, pw는 변수로 관리해도 됩니다.
		String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		
		
		try {
			//  0.  Scanner로 INSERT에 필요한 정보들 입력받기
			Scanner sc = new Scanner(System.in);
			System.out.println("추가할 id를 입력하세요");
			String uid = sc.nextLine();
			System.out.println("추가할 name를 입력하세요");
			String uname = sc.nextLine();
			System.out.println("추가할 pw를 입력하세요");
			String upw = sc.nextLine();
			System.out.println("추가할 email을 입력하세요");
			String uemail = sc.nextLine();
			
			//  1.  접속정보 정의 및 DB연결하기
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
			
			
			//  2.  쿼리문 생성
			String sql = "INSERT INTO userinfo VALUES (?,?,?,?)";
			//      INSERT INTO 구문의 경우는 VALUES (?,?,?,?) 와 같이 값이 들어갈 자리를
			//      , 로 구문하는 부분까지 문자열로 구현해주셔야 합니다.
			
			//  3.  pstmt 생성 및 ?에 변수 매칭
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1,uname);
			pstmt.setString(2,uid);
			pstmt.setString(3,upw);
			pstmt.setString(4,uemail);
			//  4.  실행
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.getStackTrace();
		}
	}

}
