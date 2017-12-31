package wp.CONTROLLER;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.MODEL.subjects;
import wp.MODEL.levels;
import wp.MODEL.questions;
import wp.MODEL.themes;
import wp.MODEL.answers;

import wp.DAO.questionsDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.themeDAO;
import wp.DAO.levelsDAO;
import wp.DAO.answerDAO;




@WebServlet("/questionManager")
public class questionManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public questionManager() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			String userName= request.getParameter("userName");
			request.setAttribute("userName", userName);
			
			answerDAO answerDAO= new answerDAO();
			themeDAO themeDAO= new themeDAO();
			questionsDAO questionsDAO= new questionsDAO();
			levelsDAO levelsDAO=new levelsDAO();
			subjectsDAO subjectsDAO= new subjectsDAO();
			
			try {
				// List 
				ArrayList<questions> listQuestion= questionsDAO.getListQuestion();
				Map<Integer,subjects> mapSubject= subjectsDAO.getMapSubjects();
				Map<Integer,themes> mapTheme = themeDAO.getMapThemeFolowSubjectID();
				Map<Integer,levels> mapLevel= levelsDAO.getMapLevel();
				
				
				ArrayList<answers> listAnswer =answerDAO.getListAnswer();
				
				//
				request.setAttribute("listQuestion", listQuestion);
				request.setAttribute("mapSubject", mapSubject);
				request.setAttribute("mapTheme", mapTheme);
				request.setAttribute("mapLevel", mapLevel);
				
				
				request.setAttribute("listAnswer", listAnswer);
				
				//
				request.getRequestDispatcher("WEB-INF/QuestionBankManager/QuestionManagement.jsp").forward(request, response);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	public void main(String[] args) {
		/*Map<Integer,contentQuestions> mapContentQuestion= contentQuestionDAO.getMapContentQuestion();
		Map<Integer,answers> mapAnswer = answerDAO.getMapAnswer();
		
		System.out.println(mapAnswer.get(1).getAnswerID());
		ArrayList<answers> listAnswer= new ArrayList<>();
		listAnswer = answerDAO.getListAnswer();
		for(answers answer: listAnswer) {
			System.out.println(answer.getQuestionID());
		}*/
	}
	

}
