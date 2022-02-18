package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Update구문도 처리해 보세요.
		// Update는 id는 변경하지 않습니다.
		// 어떤 아이디의 pw, name, email을 변경할지 조회하기 위해
		// 먼저 id를 받고, 그 다음
		// pw, name, email을 받아서
		// Update구문에서 조건절에 id를 넣어 타겟을 정하고
		// 나머지 항목만 수정되도록 처리해주세요.
		
		// 접속용 DB종류, 주소, id, pw는 변수로 관리해도 됩니다.
				String dbType = "com.mysql.cj.jdbc.Driver";
				String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
				String dbId = "root";
				String dbPw = "mysql";
				
				
				try {
					// 1.  DB종류 지정
					Class.forName(dbType);
					// 2.  DB서버와 자바간 연결
					Connection con = DriverManager.getConnection(dbUrl, dbId, dbPw);
					
					Scanner sc = new Scanner(System.in);
					System.out.println("아이디를 입력하세요.");
					String uid = sc.nextLine();
					
					System.out.println("변경할 비밀번호를 입력하세요.");
					String upw = sc.nextLine();
					System.out.println("변경할 이름을 입력하세요.");
					String uname = sc.nextLine();
					System.out.println("변경할 이메일를 입력하세요.");
					String uemail = sc.nextLine();
					
					
					// 3.  쿼리문 발송 준비
					Statement stmt = con.createStatement();
					System.out.println("실행할 쿼리문");
					
					// 4.  쿼리문 실행 전 콘솔에 찍어보기
					System.out.println("UPDATE userinfo SET upw = '"+upw+"', uname='"+uname+"', uemail='"
							+uemail+"'WHERE uid = '"+uid+"'");
					
					// 5. 쿼리문 발송 후 변경내역이 DB에 반영되었는지 체크
					stmt.executeUpdate("UPDATE userinfo SET upw = '"+upw+"', uname='"+uname+"', uemail='"
							+uemail+"'WHERE uid = '"+uid+"'");
					
					
				}catch(Exception e) {
					e.getStackTrace();
				}
	}

}
