package wp.CONTROLLER;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import wp.DAO.usersDAO;


@WebServlet("/changePasswordController")
public class changePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public changePasswordController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			String cm=request.getParameter("command");
			switch(cm) {
			case "Admin":
				request.getRequestDispatcher("WEB-INF/Admin/ChangePassword.jsp").forward(request, response);
				break;	
			case "QuestionBankManager":
				request.getRequestDispatcher("WEB-INF/QuestionBankManager/ChangePassword.jsp").forward(request, response);
				break;
			
			case "examManager":
				request.getRequestDispatcher("WEB-INF/ExamManager/ChangePassword.jsp").forward(request, response);
				break;
			case "student":
				request.getRequestDispatcher("WEB-INF/Student/ChangePassword.jsp").forward(request, response);
				break;
			}		
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		if(request.getSession().getAttribute("userNameSession")!=null) {
			String cm= request.getParameter("command");
			String userNamedSession=(String) request.getSession().getAttribute("userNameSession");
			String passwordOld= request.getParameter("passwordOld");
			String result="false";
			usersDAO usersDAO= new usersDAO();
			switch(cm) {
			case "Admin":
				
				if(usersDAO.checkForChagePassword(userNamedSession, passwordOld)) {
					
					String passwordNew= request.getParameter("passwordNew");
					
					if(usersDAO.updatePasswordOfUser(userNamedSession, passwordNew)){
						result="true";	
						request.getSession().setAttribute("password", passwordNew);
						
					}					
					
				}
				request.setAttribute("result", result);
				request.getRequestDispatcher("WEB-INF/Admin/ChangePassword.jsp").forward(request, response);
				break;
			case "QuestionBankManager":
				
				if(usersDAO.checkForChagePassword(userNamedSession, passwordOld)) {
					
					String passwordNew= request.getParameter("passwordNew");
					
					if(usersDAO.updatePasswordOfUser(userNamedSession, passwordNew)){
						result="true";	
						request.getSession().setAttribute("password", passwordNew);
						
					}					
					
				}
				request.setAttribute("result", result);
				request.getRequestDispatcher("WEB-INF/QuestionBankManager/ChangePassword.jsp").forward(request, response);
				break;
			case "examManager":
					if(usersDAO.checkForChagePassword(userNamedSession, passwordOld)) {
					
					String passwordNew= request.getParameter("passwordNew");
					
					if(usersDAO.updatePasswordOfUser(userNamedSession, passwordNew)){
						result="true";	
						request.getSession().setAttribute("password", passwordNew);
						
					}					
					
					}
					request.setAttribute("result", result);
					request.getRequestDispatcher("WEB-INF/ExamManager/ChangePassword.jsp").forward(request, response);
					break;
			case "student":
				if(usersDAO.checkForChagePassword(userNamedSession, passwordOld)) {
				
				String passwordNew= request.getParameter("passwordNew");
				
				if(usersDAO.updatePasswordOfUser(userNamedSession, passwordNew)){
					result="true";	
					request.getSession().setAttribute("password", passwordNew);
					
				}					
				
				}
				request.setAttribute("result", result);
				request.getRequestDispatcher("WEB-INF/Student/ChangePassword.jsp").forward(request, response);
				break;
				}
			}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}		
		
				
		
	}

}
