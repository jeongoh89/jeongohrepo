package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿 같은 경우는 HttpServlet을 상속 받아야 함
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID =1L;
	
	//doPost: 사용자가 post한 것을 처리하는 방식
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		request.setCharacterEncoding("UTF-8"); //사용자가 회원가입하는 것을 처리하는 기능
		response.setContentType("text/html;charset=UTF-8" );
		String userID = request.getParameter("userID");
		String userPassword1 = request.getParameter("userPassword1");
		String userPassword2 = request.getParameter("userPassword2");
		String userName = request.getParameter("userName");
		String userNumber = request.getParameter("userNumber");
		String userAge = request.getParameter("userAge");
		String userGender = request.getParameter("userGender");
		String userEmail = request.getParameter("userEmail");
		//회원가입 페이지에서 보내는 parameter값들을 받아오는 역할
		if( userID == null || userID.equals("") || userPassword1 == null || userPassword1.equals("") //입력값에 입력하지 않은 경우
				|| userPassword2 == null || userPassword2.equals("") || userName == null || userName.equals("") 
				|| userNumber == null || userNumber.equals("") || userAge == null || userAge.equals("") 
				|| userGender == null || userGender.equals("") || userEmail == null || userEmail.equals("")) {
			request.getSession().setAttribute("messageType", "오류메시지");
			request.getSession().setAttribute("messageType", "모든 내용을 입력하세요"); //알림메세지
			response.sendRedirect("index.jsp"); //다시 인덱스 페이지로 보내주는 기능
			return; //서블릿 함수 종료
		}
		
		if(userPassword1.equals(userPassword2)) { //사용자가 입력한 패스워드가 일치하지 않는 경우
			request.getSession().setAttribute("messageType", "오류메시지");
			request.getSession().setAttribute("messageType", "비밀번호가 서로 일치하지 않습니다."); //알림메세지
			response.sendRedirect("index.jsp"); //다시 인덱스 페이지로 보내주는 기능
			return; 
		}
		//여기까지 함수가 종료되지 않았다면 성공적으로 회원가입이 완료되어 회원 정보를 받은 것이기 때믄에 register함수 실행
		int result = new userDAO().register(userID, userPassword1, userName, userNumber, userAge, userGender, userEmail);
		if(result ==1) {
			request.getSession().setAttribute("messageType", "성공메세지");
			request.getSession().setAttribute("messageType", "회원가입에 성공했습니다."); //알림메세지
			response.sendRedirect("index.jsp");
			return;
		}
		else {
			
				request.getSession().setAttribute("messageType", "오류메세지");
				request.getSession().setAttribute("messageType", "이미 존재하는 회원입니다."); //알림메세지
				response.sendRedirect("index.jsp");
				return;
		}
	}
}
