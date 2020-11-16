<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("student_name");
	String userid = request.getParameter("student_id");
	String userpw = request.getParameter("student_pw");
	String useradd = request.getParameter("student_address");
	
	
	
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","1234");
		Class.forName("com.mysql.jdbc.Driver"); //Driver는 mysql에 접속할 수 있게 해주는 매게체
		
		String sql = "insert into student values ('"+ username +"', '"+ userid +"' , '"+ userpw +"' , '"+ useradd +"')";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.executeUpdate();
		System.out.println("SQL 성공: " + conn);
		
	}   catch(SQLException ex) {
		System.out.println("SQLException" + ex);
	}	catch(Exception ex) {
		System.out.println("Exception" + ex.getMessage());
	}
	%>


</body>
</html>