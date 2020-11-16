package org.MySQL_code;

import java.sql.*;


public class DriverSQL {
	public static void main(String[] args) {
		Connection con = null; //DB 연결 객체 생성
		PreparedStatement pstmt = null;  //SQL 담을 객체 생성
		
		try {
			Class.forName("org.MySQL_code.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","1234");
			String sql = "delete from Product where Price < 1000";
			pstmt = con.prepareStatement(sql); //pstmt객체에 위 sql을 넣어주는 것
			pstmt.executeUpdate(); //SQL 실행을 위한 문장
			System.out.println("SQL 성공:" + con);
		}	catch(SQLException ex) {
			System.out.println("SQLException" + ex);
		}	catch(Exception ex) {
			System.out.println("Exception" + ex.getMessage());
		}
		
		
	}
}
