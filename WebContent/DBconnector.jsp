<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con; //mysql 연결 기능
	Statement stmt; //sql문을 담을 객체
	ResultSet rs = null; //질의 결과를 담을 객체
	
	try {
		Class.forName("org.MySQL_code.Driver"); //MY SQL 드라이버 인터페이스 구현한 클래스 DRIVER는 매게체 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","1234");
		//위는 접속하는 역할 접속이 완료가 되면 CON 객체 안에 접속된 정보가 담김
		stmt = con.createStatement(); //쿼리 수행을 위한 statement객체 생성
		String sql = "select * from member";
		rs = stmt.executeQuery(sql); 
		
		//select 특성상 저장된 레코드를 가져오기 때문에 결과 수를 몰라서 if문에 rs.next함수를 사용해 레코드 하나씩 읽어옴
		//do while문은 일단 do문을 실행한 다음에 while조건식이 참이면 다시 반복함
		if(rs.next()){
			do{
				out.print("<br>");
				out.print(rs.getString("id") + " "); //id는 필드명: 필드의 값을 가져옴
				out.print(rs.getString("name") + " ");
				out.print(rs.getString("passwd"));
			}while(rs.next());
		} else{
			out.print("결과가 없습니다.");
		}
		con.close(); //자바 코드에서는 안쓰이지만 연결 설정을 닫아주는 것	
	} catch (SQLException e1){
		out.print(e1);
	} catch (Exception e) {
		out.print(e);
}
	
	
	%>

</body>
</html>