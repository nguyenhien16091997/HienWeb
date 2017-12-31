package wp.CONTROLLER;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.answerDAO;
import wp.DAO.questionsDAO;
import wp.DAO.testQuestionDAO;
import wp.MODEL.testQuestion;

@WebServlet("/examContent")
public class examContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public examContent() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			int testID= Integer.parseInt(request.getParameter("testID"));
			
			questionsDAO questionsDAO= new questionsDAO();		
			testQuestionDAO testQuestionDAO= new testQuestionDAO();
			try {
				if(testQuestionDAO.getListTestQuestionFollowTestID(testID)!=null) {
					request.setAttribute("getListTestQuestionFollowTestID",testQuestionDAO.getListTestQuestionFollowTestID(testID) );
					request.setAttribute("mapQuestion", questionsDAO.getMapQuestions());
					request.setAttribute("answerDAO", new answerDAO());
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			request.getRequestDispatcher("WEB-INF/ExamManager/ExamContent.jsp").forward(request, response);
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
