package org.MySQL_code;

import java.sql.*;


public class Driver_Test {

	public static void main(String[] args) {
		Connection con = null;
		try {
			Class.forName("org.MySQL_code.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","1234");
			System.out.println("성공 : " + con);
		}	catch(SQLException ex) {
			System.out.println("SQLException" + ex);
		}	catch(Exception ex) {
			System.out.println("Exception" + ex.getMessage());
		}
		
		
	}

}