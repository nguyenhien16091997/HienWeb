package wp.CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.questionsDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.testDAO;
import wp.DAO.themeDAO;
import wp.DAO.usersDAO;
import wp.MODEL.subjects;
import wp.MODEL.tests;
import wp.MODEL.users;

@WebServlet("/examManager")
public class examManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public examManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		if(request.getSession().getAttribute("userNameSession")!=null) {
			usersDAO usersDAO=new usersDAO();
			testDAO testDAO= new testDAO();
			subjectsDAO subjectsDAO= new subjectsDAO();
			themeDAO t=new themeDAO();
			questionsDAO q=new questionsDAO();
			
			ArrayList<tests> listTest= testDAO.getListSubject();
			ArrayList<subjects> listSubject= subjectsDAO.getListSubject();
			Map<Integer, subjects> mapSubject=subjectsDAO.getMapSubjects();
			Map<String, users> mapUser=usersDAO.getMapUser();		
		
			
			request.setAttribute("listTest",listTest);
			request.setAttribute("listSubject", listSubject);
			request.setAttribute("mapSubject", mapSubject);
			request.setAttribute("mapUser", mapUser);
			request.setAttribute("themeDAO", t);
			request.setAttribute("questionDAO", q);
			
			request.getRequestDispatcher("WEB-INF/ExamManager/ExamManagement.jsp").forward(request, response);
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
