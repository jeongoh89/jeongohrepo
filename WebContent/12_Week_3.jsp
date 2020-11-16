<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
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
	ResultSet rs = null;
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","1234");
		Class.forName("com.mysql.jdbc.Driver");
		String sql = "select * from student";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
	<table width="100%" border="1" cellspacing="0">
		<tr>
			<td align="center" width=200px height=40px bgcolor="gray"><font
				color="white"> 이름 </font></td>
			<td align="center" width=200px height=40px bgcolor="gray"><font
				color="white"> 아이디 </font></td>
			<td align="center" width=200px height=40px bgcolor="gray"><font
				color="white"> 비밀번호 </font></td>
			<td align="center" width=200px height=40px bgcolor="gray"><font
				color="white"> 주소 </font></td>
		</tr>
		<%
		while(rs.next()){
%><tr>
			<td><%=rs.getString("student_name")%></td>
			<td><%=rs.getString("student_id")%></td>
			<td><%=rs.getString("student_pw")%></td>
			<td><%=rs.getString("student_address")%></td>
		</tr>
		<% 
		}
	}  catch(SQLException ex) {
		System.out.println("SQLException" + ex);
	}	catch(Exception ex) {
		System.out.println("Exception" + ex.getMessage());
	}
%>
	</table>
</body>
</html>