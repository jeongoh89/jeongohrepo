<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("student_name");
		String number = request.getParameter("student_number");
		String id = request.getParameter("student_id");
		String pw = request.getParameter("student_pw");
		String pw_co = request.getParameter("student_pw_co");
		String Email = request.getParameter("student_Email");
		String Email2 = request.getParameter("student_Email2");
		String ph_num = request.getParameter("student_ph_num");
		String ph_num2 = request.getParameter("student_ph_num2");
		String ph_num3 = request.getParameter("student_ph_num3");
		String call_num = request.getParameter("student_call_num");
		String call_num2 = request.getParameter("student_call_num2");
		String call_num3 = request.getParameter("student_call_num3");
		String zip_code = request.getParameter("student_zip_code");
		String address = request.getParameter("student_address");
		String address2 = request.getParameter("student_address2");
		String[] infor = request.getParameterValues("student_infor");
	%>
	
	<jsp:setProperty property="*" name = "homepage"/>
	
	<form>
		<table>
			<tr>
				<td align="center" width=200px height=40px bgcolor="gray"><font
					color="white"> 이름 </font></td>
				<td><%=name%></td>
			</tr>
			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 학번 </font></td>
				<td><%=number%></td>
			</tr>
			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 아이디 </font></td>
				<td><%=id%></td>
			</tr>
			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 비밀번호 </font></td>
				<td><%=pw%></td>
			</tr>
			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 비밀번호확인 </font></td>
				<td><%=pw_co %></td>
			</tr>
			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 이메일 </font></td>
				<td><%=Email%> @ <%=Email2%></td>
			<tr>
				<td align="center" height=60px bgcolor="gray"><font
					color="white"> 연락처 </font></td>
				<td>휴대전화 <%=ph_num%> - <%=ph_num2 %> - <%=ph_num3%>
				<br>일반전화 <%=call_num%> - <%=call_num2 %> - <%=call_num3%></td>
			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 우편번호 </font></td>
				<td><%=zip_code%></td>
			</tr>

			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 주소 </font></td>
				<td><%=address%> <%=address2%></td>
			</tr>

			<tr>
				<td align="center" height=40px bgcolor="gray"><font
					color="white"> 정보수신여부 </font></td>
				<td>
					
			</tr>
		</table>
	</form>

</body>
</html1.
2.>