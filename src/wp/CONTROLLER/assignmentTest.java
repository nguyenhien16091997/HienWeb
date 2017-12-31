package wp.CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.classDAO;
import wp.DAO.classExamDAO;
import wp.DAO.examinationAndTestDAO;
import wp.DAO.examinationDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.testDAO;
import wp.MODEL.subjects;

@WebServlet("/assignmentTest")
public class assignmentTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public assignmentTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {			
		
			testDAO t= new testDAO();
			subjectsDAO s= new subjectsDAO();
			examinationAndTestDAO et= new examinationAndTestDAO();
			examinationDAO ed= new examinationDAO();
			classExamDAO ced= new classExamDAO();
			classDAO cd= new classDAO();
			
			request.setAttribute("mapTest", t.getMapTest());
			request.setAttribute("mapSubject", s.getMapSubjects());
			request.setAttribute("listExaminationAndTest", et.getListExaminaitonAndTest());
			request.setAttribute("mapExamination", ed.getMapExamination());
			request.setAttribute("listClassExam", ced.getListClassExam());
			request.setAttribute("listClassID", cd.getListClassID());			
			request.getRequestDispatcher("WEB-INF/ExamManager/AssignmentTest.jsp").forward(request,response );
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
