package wp.CONTROLLER;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.batch.Main;

import wp.DAO.usersDAO;
import wp.DAO.answerDAO;
import wp.DAO.classDAO;
import wp.DAO.examinationDAO;
import wp.DAO.levelsDAO;
import wp.DAO.questionsDAO;
import wp.DAO.rolesDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.testDAO;
import wp.DAO.testQuestionDAO;
import wp.DAO.themeDAO;
import wp.MODEL.users;
import wp.MODEL.answers;
import wp.MODEL.classID;
import wp.MODEL.roles;
import wp.MODEL.subjects;
import wp.MODEL.tests;


@WebServlet("/updateController")
public class updateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			rolesDAO rolesDAO= new rolesDAO();
			usersDAO usersDAO= new usersDAO();
			questionsDAO questionsDAO= new questionsDAO();
			subjectsDAO subjectsDAO= new subjectsDAO();
			
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			String cm=request.getParameter("command");
			switch(cm) {
			case "updateUser":
				classDAO classDAO= new classDAO();
				ArrayList<classID> listClass=classDAO.getListClassID();
				String userName= request.getParameter("userName");
				Map<String, users> mapUser= usersDAO.getMapUser();
				Map<Integer,roles> mapRole= rolesDAO.getMapRole();
				
				try {
					ArrayList<roles> listRole= rolesDAO.getListRoles();
					request.setAttribute("listRole", listRole);
					request.setAttribute("mapUser", mapUser);
					request.setAttribute("mapRole", mapRole);
					request.setAttribute("userName", userName);
					request.setAttribute("listClass",listClass);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				request.getRequestDispatcher("WEB-INF/Admin/Edit_User.jsp").forward(request, response);
				break;
			case "updateQuestion":
				levelsDAO levelsDAO=new levelsDAO();
				themeDAO themeDAO= new themeDAO();
				answerDAO answerDAO= new answerDAO();
				
				int questionID= Integer.parseInt(request.getParameter("questionID"));
				
				try {
					request.setAttribute("mapQuestion", questionsDAO.getMapQuestions());
					request.setAttribute("listSubject", subjectsDAO.getListSubject());
					request.setAttribute("themeDAO", new themeDAO());
					request.setAttribute("mapSubject",subjectsDAO.getMapSubjects());
					request.setAttribute("mapTheme", themeDAO.getMapThemeFolowThemeID());
					request.setAttribute("questionID", questionID);
					request.setAttribute("mapLevel", levelsDAO.getMapLevel());
					request.setAttribute("listLevel", levelsDAO.getListLevel());
					request.setAttribute("listAnswerFollowQuestionID", answerDAO.getListAnswerFollowQuestionID(questionID));
					request.setAttribute("answerNameCorrect", answerDAO.getAnswerCorrect(questionID));
					request.getRequestDispatcher("WEB-INF/QuestionBankManager/EditQuestion.jsp").forward(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				break;
			case "updateExam":
	
				
				subjectsDAO subjectsDAO1= new subjectsDAO();
				themeDAO t=new themeDAO();
				questionsDAO q=new questionsDAO();			
				
				ArrayList<subjects> listSubject= subjectsDAO1.getListSubject();
				Map<Integer, subjects> mapSubject=subjectsDAO1.getMapSubjects();							
				
				request.setAttribute("listSubject", listSubject);
				request.setAttribute("mapSubject", mapSubject);			
				request.setAttribute("themeDAO", t);
				request.setAttribute("questionDAO", q);
				
				testDAO testDAO= new testDAO();
				Map<Integer, tests> maptest=new HashMap<Integer,tests>();
				maptest= testDAO.getMapTest();
				request.setAttribute("mapTest", maptest);
				int testID= Integer.parseInt(request.getParameter("testID"));
				userName= maptest.get(testID).getUserName();
				String userNameSession= (String) request.getSession().getAttribute("userNameSession");
				if(userNameSession.equals(userName)==false) {
					response.sendRedirect("examManager?statusUser=false");
				}
				else {				
					String time=maptest.get(testID).getTestTime();
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
													
					request.setAttribute("listSubject", subjectsDAO.getListSubject());
					request.setAttribute("mapSubject", subjectsDAO.getMapSubjects());
					request.setAttribute("mapUser", usersDAO.getMapUser());
					request.setAttribute("themeDAO", new themeDAO());
					request.setAttribute("testID", testID);
					
					
					request.getRequestDispatcher("WEB-INF/ExamManager/edit_ExamManagement.jsp").forward(request, response);
					break;
				}
			}	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			String cm=request.getParameter("command");
			switch(cm) {
			case "updateUser":	
				usersDAO usersDAO= new usersDAO();
				String userName= request.getParameter("userName");
				String password = request.getParameter("password");
				int roleID=Integer.parseInt(request.getParameter("roleID"));
				String fullName =request.getParameter("fullName");
				String gener= request.getParameter("gener");
				String phone= request.getParameter("phone");
				String avatar= request.getParameter("avatar");		
				
				usersDAO.UpdateUser(userName, password, roleID, fullName, gener, phone, avatar);
				if(roleID==1) {
					String classID= request.getParameter("classID");
					usersDAO.updateClass(userName, classID);
				}
				
				response.sendRedirect("updateController?statusUpdate=true&command=updateUser&userName="+userName+"");
				//request.setAttribute("statusUpdate", "updated");
				//request.getRequestDispatcher("userManagementSevlet").forward(request, response);
				break;
			case "updateQuestion":
				questionsDAO questionDAO= new questionsDAO();
				answerDAO answerDAO= new answerDAO();
				
				int questionID= Integer.parseInt(request.getParameter("questionID"));
				int subjectID=Integer.parseInt(request.getParameter("subjectID"));
				int themeID=Integer.parseInt(request.getParameter("themeID"));
				int levelID= Integer.parseInt(request.getParameter("levelID"));
				String content=request.getParameter("content");
				String isCorrect=request.getParameter("isCorrect");
				
				if(questionDAO.updateQuestion(questionID,subjectID,themeID,levelID,content)){
					ArrayList<answers> listAnswerFollowQuestionID= answerDAO.getListAnswerFollowQuestionID(questionID);
					answerDAO.deleteAnswerFollowQuestionID(questionID);
					for(answers answer: listAnswerFollowQuestionID) {
						if(request.getParameter("answerName"+answer.getAnswerID())!=null) {
							String answerName=request.getParameter("answerName"+answer.getAnswerID());
							String answerContent= request.getParameter("answerContent"+answer.getAnswerID());						
							if(isCorrect.equals(answerName)==true) {
								response.getWriter().print(answerName);
								answerDAO.insertAnswer(answerName, answerContent, "true", questionID);	
							}
							else
								answerDAO.insertAnswer(answerName, answerContent,"false", questionID);	
							
						}
					}
				}
				int count= Integer.parseInt(request.getParameter("count").trim());	
					
					for(int i=0;i<count;i++) {
						String answerName=request.getParameter("answerName"+i+"");
						String answerContent=request.getParameter("answerContent"+i+"");
						if(answerContent!=null) {	
							answerDAO.insertAnswer(answerName, answerContent, isCorrect, questionID);
						}
					}
				
				response.sendRedirect("updateController?command=updateQuestion&questionID="+questionID+"&statusUpdate=true");
				break;
			case"updateExam":			
				
				testDAO testDAO= new testDAO();
				testQuestionDAO testQuestionDAO= new testQuestionDAO();
				
				questionsDAO questionsDAO= new questionsDAO();		
				String testName=request.getParameter("testName");
				String userName1= (String) request.getSession().getAttribute("userNameSession");
				String hour=request.getParameter("hour");
				String minute=request.getParameter("minute");
				String ticking=request.getParameter("ticking");
				String time=""+hour+":"+minute+":"+ticking+"";
				int subjectID1= Integer.parseInt(request.getParameter("subjectID"));
				int countLast= Integer.parseInt(request.getParameter("countLast"));
				int countLast1= Integer.parseInt(request.getParameter("countLast1"));
				int testID= Integer.parseInt(request.getParameter("testID"));	
				
				int sumQuestion=0;
				ArrayList<Integer> listQuestionID= new ArrayList<>();
				testQuestionDAO.deleteFollowTestID(testID);
				if(countLast1!=0) {
					for(int i=0;i<countLast;i++) {					
						if(request.getParameter("countQuestionInSubject"+i)!=null) {
							int a=Integer.parseInt(request.getParameter("themeIDIS"+i));
							int b=Integer.parseInt(request.getParameter("countQuestionInSubject"+i));
							listQuestionID=questionsDAO.getGroupQuestionIDFollowThemeID(subjectID1, a, b);	
							for(int qt : listQuestionID) {
								testQuestionDAO.insertTestQuestion(testID, qt);
								sumQuestion++;
								
							}
						}
					}
					testDAO.updateExam(testID, testName, sumQuestion, userName1, time, subjectID1);
					response.sendRedirect("updateController?command=updateExam&testID="+testID+"&statusUpdate=true");
				}
				else {
					response.sendRedirect("updateController?command=updateExam&testID="+testID+"&statusUpdate=false");
				}
				break;
			case "updateExamination":
				examinationDAO examinationDAO= new examinationDAO();
				int examinationID= Integer.parseInt(request.getParameter("examinationIDUD"));
				String examinationName= request.getParameter("examinationNameUD");
				String dateTimeStart= request.getParameter("dateTimeStartUD");
				String dateTimeFinish= request.getParameter("dateTimeFinishUD");
				String dateTimeStart1= examinationDAO.convertDateTime2(dateTimeStart);
				String dateTimeFinish1=examinationDAO.convertDateTime2(dateTimeFinish);
				if(examinationDAO.updateExamination(examinationID,examinationName, dateTimeStart1, dateTimeFinish1)) {
					response.sendRedirect("examinationManagement?statusUpdate=true");
				}
				else {
					response.sendRedirect("examinationManagement?statusUpdate=false");
				}
				
			}
		}

}
