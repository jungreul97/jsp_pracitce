package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;

import java.sql.*;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("유저의 id를 입력하세요 : ");
		Scanner sc = new Scanner(System.in);
		String uid = sc.nextLine();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/jdbcprac1",
					"root",
					"mysql");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo WHERE uid = '"+uid+"'");
			rs.next();
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
		}catch(Exception e) {;
			e.printStackTrace();
		}
	}

}
