package wp.CONTROLLER;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.doneTestDAO;
import wp.DAO.examinationAndTestDAO;
import wp.DAO.examinationDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.testDAO;
import wp.DAO.usersDAO;
import wp.MODEL.doneTest;

@WebServlet("/markSevlet")
public class markSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public markSevlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			String cm= request.getParameter("command");
			switch(cm) {
			case "listExaminationMark":
				
				usersDAO userDao= new usersDAO();
				examinationAndTestDAO examinationAndTestDao= new examinationAndTestDAO();
				
				examinationDAO examinationDao= new examinationDAO();
				
				request.setAttribute("mapUser", userDao.getMapUser());
				request.setAttribute("examinationAndTestDao", examinationAndTestDao);
				request.setAttribute("mapExamination", examinationDao.getMapExamination());
				request.getRequestDispatcher("WEB-INF/Student/listExaminationMark.jsp").forward(request, response);
				break;
			case "listExamMark":
				examinationAndTestDAO eatd= new examinationAndTestDAO();
				String userName= (String) request.getSession().getAttribute("userNameSession");
				
				int examinationID= Integer.parseInt(request.getParameter("examinationID"));
				String classID= request.getParameter("classID");
				
				subjectsDAO sdao= new subjectsDAO();
				testDAO tdao= new testDAO();	
				doneTestDAO dtd= new doneTestDAO();
				
				Map<Integer,doneTest> mapdt= new HashMap<Integer,doneTest>();
				mapdt=dtd.getMapDoneTestFollowUserName(userName);
				
				request.setAttribute("ListExamOfClass", eatd.getListExamOfClass(classID, examinationID));
				request.setAttribute("mapSubject", sdao.getMapSubjects());
				request.setAttribute("mapTest", tdao.getMapTest());
				request.setAttribute("mapDoneTestFollowUserName", mapdt);
				
				request.getRequestDispatcher("WEB-INF/Student/listExamMark.jsp").forward(request, response);
				
				break;
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
