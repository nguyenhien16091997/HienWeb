package wp.CONTROLLER;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wp.DAO.rolesDAO;
import wp.DAO.usersDAO;
import wp.MODEL.roles;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public loginController() {
        super();
   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("utf-8");
			rolesDAO rolesDAO= new rolesDAO();
			
			try {
				
				ArrayList<roles> role= rolesDAO.getListRoles();
				request.setAttribute("INFO", role);
				if(request.getSession().getAttribute("userNameSession") == null)
				{
				RequestDispatcher rd= request.getRequestDispatcher("WEB-INF/Guest/Login.jsp");			
				rd.forward(request, response);
				} else {
					switch (Integer.parseInt(request.getSession().getAttribute("roleIDSession").toString()))
			    	{
			    	case 1:
			    		request.getRequestDispatcher("WEB-INF/Student/HomePage.jsp").forward(request, response);
			    		break;
			    	case 2:
			    		
			    		request.getRequestDispatcher("WEB-INF/QuestionBankManager/HomePage.jsp").forward(request, response);
			    		break;
			    	case 3:
			    		request.getRequestDispatcher("WEB-INF/ExamManager/HomePage.jsp").forward(request, response);
			    		
			    		break;
			    	case 4:
			    		request.getRequestDispatcher("WEB-INF/Admin/HomePage.jsp").forward(request, response);
			    		break;
			    	
			    	}
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
				
			}
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			usersDAO usersDAO= new usersDAO();
			
		    String userName=request.getParameter("userName");
		    String password=request.getParameter("password");
		    
		    if(request.getParameter("roleName")!=null) {	    	
		    int roleID=Integer.parseInt(request.getParameter("roleName"));
		    String error= usersDAO.CheckLogin(userName, password, roleID);
			    if(error.equals("true")) {
			    	String fullName= usersDAO.getMapUser().get(userName).getFullName();
			    	
			    	HttpSession session= request.getSession();
			    	session.setAttribute("userNameSession", userName);	    	
			    	session.setAttribute("roleIDSession", roleID);
			    	session.setAttribute("fullNameSession", fullName);
			    	
			    	switch (roleID){	    
			    	case 1:
			    		request.getRequestDispatcher("WEB-INF/Student/HomePage.jsp").forward(request, response);
			    		break;
			    	case 2:	    		
			    		request.getRequestDispatcher("WEB-INF/QuestionBankManager/HomePage.jsp").forward(request, response);
			    		break;
			    	case 3:
			    		request.getRequestDispatcher("WEB-INF/ExamManager/HomePage.jsp").forward(request, response);
			    		break;
			    	case 4:
			    		request.getRequestDispatcher("WEB-INF/Admin/HomePage.jsp").forward(request, response);
			    		break;
			    	}	   	   				    
			    }
			    else {
			    	response.sendRedirect("loginController?userName="+userName+"&password="+password+"&error="+error+"");
			    }
		    }
		    else {
		    	response.sendRedirect("loginController?userName="+userName+"&password="+password+"&error=role");
		    }   
		}	
}
