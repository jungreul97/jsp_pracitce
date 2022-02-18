package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class JDBCpstmtSelect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 접속용 DB종류, 주소, id, pw는 변수로 관리해도 됩니다.
		String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		
		try {
			
			Scanner sc = new Scanner(System.in);
			System.out.println("조회하고 싶은 아이디를 입력해주세요. ");
			String uid = sc.nextLine();
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(dbUrl,dbId,dbPw);
			
			// PreparedStatement구문은 먼저 SQL쿼리문을 만들어 놓고 적용합니다.
			// 중간에 사용자 입력정보를 받는 부분을 전부 ? 로만 치환해서 처리합니다.
			// ?는 두개 이상 사용할 수 있습니다.
			
			String sql = "SELECT * FROM userinfo WHERE uid = ?";
			
			// pstmt 변수를 만들어 세팅합니다.
			PreparedStatement pstmt = con.prepareStatement(sql);
			// ?에 들어갈 자료를 정의해줍니다.
			pstmt.setString(1, uid);//1번 자리에 uid를 넣어주겠다는 의미
			// 쿼리문 실행
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
	}

}
