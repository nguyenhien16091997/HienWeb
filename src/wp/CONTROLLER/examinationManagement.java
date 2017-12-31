package wp.CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.examinationDAO;

@WebServlet("/examinationManagement")
public class examinationManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public examinationManagement() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			examinationDAO e= new examinationDAO();
			request.setAttribute("listExamination", e.getListExamination());
			request.setAttribute("mapExamination", e.getMapExamination());
			request.setAttribute("examinationDAO", e);
			request.getRequestDispatcher("WEB-INF/ExamManager/ExaminationManagement.jsp").forward(request, response);
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
