package wp.CONTROLLER;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wp.MODEL.users;
import wp.DAO.usersDAO;
import wp.DAO.classDAO;
import wp.DAO.rolesDAO;
import wp.MODEL.classID;
import wp.MODEL.roles;


@WebServlet("/userManagementSevlet")
public class userManagementSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public userManagementSevlet() {
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			usersDAO usersDAO= new usersDAO();
			rolesDAO rolesDAO= new rolesDAO();
			classDAO classDAO= new classDAO();
			
			ArrayList<users> userList= usersDAO.getListUsers();
			ArrayList<classID> listClass=classDAO.getListClassID();
			ArrayList<roles> roleList= new ArrayList<>();
			try {
				roleList = rolesDAO.getListRoles();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("userList", userList);
			request.setAttribute("roleList",roleList );
			request.setAttribute("listClass",listClass);			
			request.getRequestDispatcher("WEB-INF/Admin/UserManagement.jsp").forward(request, response);
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
}
