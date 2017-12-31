package wp.CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.MODEL.users;
import wp.DAO.usersDAO;

@WebServlet("/personInfomationController")
public class personInfomationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public personInfomationController() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			usersDAO usersDAO= new usersDAO();
			String cm = request.getParameter("command");
			Map<String, users> mapUser= usersDAO.getMapUser();
			switch(cm){
			case "questionManager":
				
				request.setAttribute("mapUser", mapUser);
				request.getRequestDispatcher("WEB-INF/QuestionBankManager/PersonInformation.jsp").forward(request, response);
				break;
			
			case "personAdmin":			
				
				request.setAttribute("mapUser", mapUser);
				request.getRequestDispatcher("WEB-INF/Admin/PersionInformation.jsp").forward(request, response);
				break;
			case "ExamManager":
				request.setAttribute("mapUser", mapUser);
				request.getRequestDispatcher("WEB-INF/ExamManager/PersionInformation.jsp").forward(request, response);
				break;
		
			case "Student":
				request.setAttribute("mapUser", mapUser);
				request.getRequestDispatcher("WEB-INF/Student/PersionInformation.jsp").forward(request, response);
				break;
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}
	public static void main(String[] args) {
		/*Map<String, users> mapUser= usersDAO.getMapUser();
		System.out.println(mapUser.get(" wqed").getAvatar());*/
	}

}
