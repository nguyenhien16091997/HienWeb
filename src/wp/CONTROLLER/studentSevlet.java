package wp.CONTROLLER;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.answerDAO;
import wp.DAO.classDAO;
import wp.DAO.classExamDAO;
import wp.DAO.doneTestDAO;
import wp.DAO.examinationAndTestDAO;
import wp.DAO.examinationDAO;
import wp.DAO.questionsDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.testDAO;
import wp.DAO.testQuestionDAO;
import wp.DAO.usersDAO;
import wp.MODEL.answers;
import wp.MODEL.doneTest;
import wp.MODEL.tests;

@WebServlet("/studentSevlet")
public class studentSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public studentSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			String cm= request.getParameter("command");
			switch(cm) {
			case "listExamination":
				
				usersDAO userDao= new usersDAO();
				examinationAndTestDAO examinationAndTestDao= new examinationAndTestDAO();
				
				examinationDAO examinationDao= new examinationDAO();
				
				request.setAttribute("mapUser", userDao.getMapUser());
				request.setAttribute("examinationAndTestDao", examinationAndTestDao);
				request.setAttribute("mapExamination", examinationDao.getMapExamination());
				request.getRequestDispatcher("WEB-INF/Student/ListExamination.jsp").forward(request, response);
				break;
			case "listExam":
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
				
				request.getRequestDispatcher("WEB-INF/Student/listExam.jsp").forward(request, response);
				
				break;
			case "startDoTest":
				int testID=Integer.parseInt(request.getParameter("testID"));
				request.setAttribute("testID", testID);
				
				testDAO tdao1= new testDAO();
				questionsDAO questionsDAO= new questionsDAO();		
				testQuestionDAO testQuestionDAO= new testQuestionDAO();
				
				Map<Integer, tests> map= new HashMap<Integer,tests>();
				map=tdao1.getMapTest();
				String time=map.get(testID).getTestTime();
				
				String hour=null;
				String minute=null;
				String ticking=null;
				String array[]=time.split(":");
				for(String i: array) {
					if(hour==null) {
						hour=i;
					}
					else if(minute==null) {
						minute=i;
					}
					else {
						ticking=i;
					}							
				}				
				
				request.setAttribute("hour", hour);
				request.setAttribute("minute", minute);
				request.setAttribute("ticking", ticking);
				
				request.setAttribute("mapTest", tdao1.getMapTest());
				if(testQuestionDAO.getListTestQuestionFollowTestID(testID)!=null) {
					request.setAttribute("getListTestQuestionFollowTestID",testQuestionDAO.getListTestQuestionFollowTestID(testID) );
					try {
						request.setAttribute("mapQuestion", questionsDAO.getMapQuestions());
					} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
					}
						request.setAttribute("answerDAO", new answerDAO());
				}
				
				request.getRequestDispatcher("WEB-INF/Student/doTest.jsp").forward(request, response);
				break;
			
				
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			int mark=0;
			
			String userName=(String) request.getSession().getAttribute("userNameSession");
			int testID=Integer.parseInt(request.getParameter("testID"));
			
			doneTestDAO dtd= new doneTestDAO();
			
			testDAO tdao= new testDAO();
			Map<Integer, tests> mapTest= new HashMap<Integer, tests>();
			mapTest= tdao.getMapTest();
			
			ArrayList<Integer> listAnswerID= new ArrayList<>();
			int questionNumber= mapTest.get(testID).getQuestionNumber();
			for(int i=1;i<=questionNumber;i++) {
				if(request.getParameter("checked"+i)!=null) {
					int answerID=Integer.parseInt(request.getParameter("checked"+i));
					listAnswerID.add(answerID);
				}
			}
			
			Map<Integer,answers> mapAnswer=new HashMap<Integer,answers>();
			answerDAO ad= new answerDAO();
			mapAnswer= ad.getMapAnswer();
			
			for(int i:listAnswerID) {
				if(mapAnswer.get(i).getIsCorrect().equals("true")) {
					mark++;
				}
			}
			dtd.insertRow(userName, testID, mark*10/questionNumber);
			response.sendRedirect("studentSevlet?command=listExamination&mark="+mark+"");
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}
}
