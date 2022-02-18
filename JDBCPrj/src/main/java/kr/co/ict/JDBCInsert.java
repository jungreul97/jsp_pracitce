package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCInsert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Scanner로 id,pw,name,email을 입력받아
		// INSERT INTO 구문을 이용해 DB에 데이터를 적재하도록 만들어보겠습니다.
		
		// SELECT Q1처럼 작성해 주시되(입력 받기, DB연결, 쿼리문 실행 등..)
		// SELECT 구문을 제외한 나머지 INSERT, DELETE, UPDATE구문은
		// 결과 데이터가 없기 때문에 실행 했을 때 에러가 나지 않는다면
		// 우선 실행되것으로 볼 수 있고, 실행이 된 다음 워크벤티에서
		// 데이터가 들어갔는지 확인해주시면 됩니다.
		
		// 쿼리문 실행시 SELECT 구문은 executeQuery(구문);을 호출했지만
		// SELECT이외 구문은 executeUpdate(구문);을 호출합니다.
		
		 Scanner sc = new Scanner(System.in);
		 System.out.println("id를 입력하세요 : ");
		 String id = sc.nextLine();
		 System.out.println("pw를 입력하세요 : ");
		 String pw = sc.nextLine();
		 System.out.println("name을 입력하세요 : ");
		 String name = sc.nextLine();
		 System.out.println("email을 입력하세요 : ");
		 String email = sc.nextLine();
		 
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 
			 Connection con = DriverManager.getConnection
						("jdbc:mysql://localhost:3306/jdbcprac1",
						"root",
						"mysql");
				
			 Statement stmt = con.createStatement();
			 
			 //디버깅을 위해 커리문 실행전 콘솔에서 조회
			 System.out.println("실행 예정 쿼리문");
			 System.out.println("INSERT INTO userinfo VALUES ('"
					 					+id+"','"+pw+"','"+name+"','"+email+"')");
			 stmt.executeUpdate("INSERT INTO userinfo VALUES ('"
					 					+id+"','"+pw+"','"+name+"','"+email+"')");
				
				
		 }catch(Exception e) {
			 e.getStackTrace();
		 }
		 
		 
	}

}
