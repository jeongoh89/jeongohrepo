package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserRegisterCheckServlet")
//서블릿 같은 경우는 HttpServlet을 상속 받아야 함
public class UserRegisterCheckServlet extends HttpServlet {
	
	private static final long serialVersionUID =1L;
	//doPost: 사용자가 post한 것을 처리하는 방식
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID"); //사용자가 입력한 ID를 저장
		System.out.println(userID);
		response.getWriter().write(new userDAO().registerCheck(userID) + ""); //변수를 클라이언트에 출력해서 보여줌
		//registerCheck는 숫자로 반환되기 때문에 공백문자를 넣어서 문자열 형태가 wite문으로 출력되게 만들어줌
		//서블릿으로 어떠한 요청을 AJAX로 보내면 출력되는 형태임
		//클라이언트는 출력된 결과를 result에 담아서 1인경우 사용, 아닌경우 사용불가로 처리
		
		
	}
}
