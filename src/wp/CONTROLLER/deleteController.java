package wp.CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.examinationAndTestDAO;
import wp.DAO.examinationDAO;
import wp.DAO.questionsDAO;
import wp.DAO.testDAO;
import wp.DAO.usersDAO;
import wp.MODEL.users;

@WebServlet("/deleteController")
public class deleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public deleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			request.setCharacterEncoding("utf-8");
			String cm=request.getParameter("command");
			switch(cm) {
			case "deleteUser":
				usersDAO usersDAO= new usersDAO();
				String userName= request.getParameter("userName");
				
				//check same userSession
				String userNameSession= (String) request.getSession().getAttribute("userNameSession");
				//response.getWriter().println(userNameSession);
				
				//bị mất userSession
				if(userNameSession.equals(userName)) {
					response.sendRedirect("userManagementSevlet?statusDelete=isUserName");
				}
				else {
					if(usersDAO.DeleteUser(userName)) {
						response.sendRedirect("userManagementSevlet?statusDelete=true");
					}
					else {
						response.sendRedirect("userManagementSevlet?statusDelete=false");
					}
				}	
				break;
			case "deleteQuestion":	
				questionsDAO questionsDAO= new questionsDAO();
				int questionID= Integer.parseInt(request.getParameter("questionIDForDelete"));
				if(questionsDAO.deleteQuestion(questionID)) {
					
					response.sendRedirect("questionManager?statusDelete=true");
				}
				else {
					response.sendRedirect("questionManager?statusDelete=false");
				}
				break;
			case "deleteExam":
				testDAO testDAO= new testDAO();
				 int testID=Integer.parseInt(request.getParameter("testID"));
				 if(testDAO.deleteExam(testID)) {
					 response.sendRedirect("examManager?statusDelete=true");
				 }
				 else {
					 response.sendRedirect("examManager?statusDelete=false");
				 }
				 break;
			case "deleteExamination":
				examinationDAO e= new examinationDAO();
				int examinationID=Integer.parseInt(request.getParameter("examinationIDForDelete"));
				if(e.deleteExamination(examinationID)) {
					response.sendRedirect("examinationManagement?statusDelete=true");
				}
				else {
					response.sendRedirect("examinationManagement?statusDelete=false");
				}
				break;
			case "deleteExaminationAndTest" :
				examinationAndTestDAO et= new examinationAndTestDAO();
				int id= Integer.parseInt(request.getParameter("id"));
				if(et.delete(id)) {
					int examinationID1= Integer.parseInt(request.getParameter("examinationID"));
					response.sendRedirect("assignmentTest?statusDelete=true&examinationID="+examinationID1+"");
				}
				
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
