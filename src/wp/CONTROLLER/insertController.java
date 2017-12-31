package wp.CONTROLLER;

import java.io.IOException;
import java.sql.Date;


import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wp.DAO.answerDAO;
import wp.DAO.classExamDAO;
import wp.DAO.examinationAndTestDAO;
import wp.DAO.examinationDAO;
import wp.DAO.levelsDAO;
import wp.DAO.questionsDAO;
import wp.DAO.rolesDAO;
import wp.DAO.subjectsDAO;
import wp.DAO.testDAO;
import wp.DAO.testQuestionDAO;
import wp.DAO.themeDAO;
import wp.DAO.usersDAO;


import wp.MODEL.users;
import wp.MODEL.answers;
import wp.MODEL.classExam;
import wp.MODEL.examinationAndTest;
import wp.MODEL.levels;
import wp.MODEL.questions;
import wp.MODEL.subjects;
import wp.MODEL.themes;
@WebServlet("/insertController")
public class insertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<subjects> listSubject= new ArrayList<>();  
	
   
    public insertController() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");			
			String cm=request.getParameter("command");
			
			switch(cm) {
			case "insertQuestion":
				levelsDAO levelsDAO=new levelsDAO();
				subjectsDAO subjectsDAO= new subjectsDAO();
				
				String questionIDOfInsert= request.getParameter("questionIDOfInsert");
				
				// load listSubject
				
				ArrayList<levels> listLevel= new ArrayList<>();
				listSubject = subjectsDAO.getListSubject();	
				listLevel =levelsDAO.getListLevel();
				
				// check parameter for load theme
				if(questionIDOfInsert == null) {		
							
					request.setAttribute("listSubject", listSubject);
					request.setAttribute("themeDAO", new themeDAO());
					request.setAttribute("listLevel", listLevel);
					
					
					request.getRequestDispatcher("WEB-INF/QuestionBankManager/CreationQuestion.jsp").forward(request, response);
				}
				else {
					
				}
				
				// 			
				break;
			
			case "insertTestForExamination":
				subjectsDAO sd= new subjectsDAO();
				testDAO t= new testDAO();			
				
				listSubject= sd.getListSubject();
				request.setAttribute("listSubject", listSubject);
				request.setAttribute("listTest", t.getListSubject());
				
				request.getRequestDispatcher("WEB-INF/ExamManager/AddTestForExamination.jsp").forward(request, response);
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userNameSession")!=null) {
			request.setCharacterEncoding("utf-8");
			String cm=request.getParameter("command");
			
			questionsDAO questionsDAO= new questionsDAO();
			switch(cm) {
			case "insertUser":
				usersDAO usersDAO=new usersDAO();
				String userNameIS = request.getParameter("userNameIS");
	 			String passwordIS = request.getParameter("passwordIS");
	 			int roleIDIS = Integer.parseInt(request.getParameter("roleIDIS"));
	 			String fullNameIS = request.getParameter("fullNameIS");
	 			String generIS =  request.getParameter("generIS");
	 			String phoneIS = request.getParameter("phoneIS");
	 			String avatarIS = request.getParameter("avatarIS");
	 			
	 			//check same userAccount
	 			boolean bl=true;
	 			ArrayList<users> listUser =new ArrayList<>();
	 			listUser= usersDAO.getListUsers();
	 			if(bl) {
	 				for(users user: listUser) {
	 					if(user.getUserName().equals(userNameIS)) {					
	 						response.sendRedirect("userManagementSevlet?statusInsert=userWrong&passwordIS="+passwordIS+"&fullNameIS="+fullNameIS+"&phoneIS="+phoneIS+"&avatarIS="+avatarIS+"");
	 						
	 					}
	 					bl=false;
	 				}
	 			}
	 			if(bl==false) {
	 				usersDAO.InsertUser(userNameIS, passwordIS, roleIDIS, fullNameIS, generIS, phoneIS, avatarIS);
	 				if(roleIDIS==1) {
	 					String classIDIS= request.getParameter("classIDIS");
	 					usersDAO.updateClass(userNameIS, classIDIS);
	 				}
	 				response.sendRedirect("userManagementSevlet?statusInsert=userCorrect");
	 				
	 			}
	 			break;
				
				
			case"insertQuestion":
				answerDAO answerDAO= new answerDAO();
				
				int count= Integer.parseInt(request.getParameter("count"));
				
				String isCorrect= request.getParameter("isCorrect").trim();
				
				int subjectID= Integer.parseInt(request.getParameter("subjectID"));
				int themeID= Integer.parseInt(request.getParameter("themeID"));
				int levelID= Integer.parseInt(request.getParameter("levelID"));
				String content= request.getParameter("content");
				
				if(questionsDAO.insertQuestion(subjectID, themeID, levelID, content)) {
					int questionIDMax=questionsDAO.getIDMax();
					for(int i=0;i<count;i++) {											
						if(request.getParameter("answerName"+i+"")!=null) {	
							String answerName=request.getParameter("answerName"+i+"").trim();
							String answerContent=request.getParameter("answerContent"+i+"");
							if(isCorrect.equals(answerName)) {								
								answerDAO.insertAnswer(answerName, answerContent, "true", questionIDMax);	
							}
							else
								answerDAO.insertAnswer(answerName, answerContent,"false", questionIDMax);	
						}
					}
					response.sendRedirect("insertController?command=insertQuestion&statusInsert=true");
				}
				else {
					response.sendRedirect("insertController?command=insertQuestion&statusInsert=false");
				}
				break;
				//ArrayList<answers> listAnswer= new ArrayList<>();
			case "insertTest":
				testDAO testDAO= new testDAO();
				testQuestionDAO testQuestionDAO= new testQuestionDAO();
				
						
				String testName=request.getParameter("testNameIS");
				String userName= (String) request.getSession().getAttribute("userNameSession");
				String hour=request.getParameter("hour");
				String minute=request.getParameter("minute");
				String ticking=request.getParameter("ticking");
				String time=""+hour+":"+minute+":"+ticking+"";
				int subjectID1= Integer.parseInt(request.getParameter("subjectIDIS"));
				int countLast= Integer.parseInt(request.getParameter("countLast"));
				int countLast1= Integer.parseInt(request.getParameter("countLast1"));
				testDAO.insertTest(testName, userName, time, subjectID1);
				int testMax=testDAO.getIDMax();			
				
				int sumQuestion=0;
				ArrayList<Integer> listQuestionID= new ArrayList<>();
				
				if(countLast1!=0) {
					for(int i=0;i<countLast;i++) {					
						if(request.getParameter("countQuestionInSubject"+i)!=null) {
							int a=Integer.parseInt(request.getParameter("themeIDIS"+i));
							int b=Integer.parseInt(request.getParameter("countQuestionInSubject"+i));
							listQuestionID=questionsDAO.getGroupQuestionIDFollowThemeID(subjectID1, a, b);	
							for(int qt : listQuestionID) {
								testQuestionDAO.insertTestQuestion(testMax, qt);
								sumQuestion++;
							}
						}
					}
					testDAO.updateQuestionNumber(testMax, sumQuestion);
					response.sendRedirect("examManager?statusInsert=true");
				}
				else {
					response.sendRedirect("examManager?statusInsert=false&testName="+testName+"&hour="+hour+"&minute="+minute+"&ticking="+ticking+"");
				}	
				break;
			case "insertExamination":			
				String examinationName= request.getParameter("examinationNameIS");
				String dateTimeStart= request.getParameter("dateTimeStartIS");
				String dateTimeFinish= request.getParameter("dateTimeFinishIS");		
			
				examinationDAO e= new examinationDAO();
			
				if(e.insertExamination(examinationName, dateTimeStart, dateTimeFinish)) {
					response.sendRedirect("examinationManagement?statusInsert=true");
				}
				else {
					response.sendRedirect("examinationManagement?statusInsert=false");
				}
				break;
			case "insertClassFollowTest":
				classExamDAO classExam=new classExamDAO();
				
				int id=Integer.parseInt(request.getParameter("TestIDIS"));
			 
			    ArrayList<classExam> listClassExam= new ArrayList<>();
			    
			    String[] classID= request.getParameterValues("classID");
			    
			    listClassExam= classExam.getListClassFollowID(id);
			    if(listClassExam.size()==0) {		    	
				    for(String s: classID) {				    						    		
					   classExam.insertClassExam(id, s);				    							    	
						
				    }
			    }
			    else {
			    	
			    	classExam.deleteClassExam(id);
				    for(classExam cl: listClassExam) {
				    	if(request.getParameter(""+cl.getClassID()+"")!=null) {
				    		classExam.insertClassExam(id, cl.getClassID());		    		
				    	}
				    }
				    
				    
				    if(classID!=null) {
				    	 for(String s: classID) {
						    	for(classExam ce: classExam.getListClassFollowID(id)) {
						    		if(s.equals(ce.getClassID())==false) {
						    			classExam.insertClassExam(id, s);
						    		}
						    	}
						    }
				    }
				    
			    }
			    int examinationID= Integer.parseInt(request.getParameter("examinationID"));
			    response.sendRedirect("assignmentTest?statusInsert=true&examinationID="+examinationID+"");
			    break;
			case "insertTestExamination":
				examinationAndTestDAO eat=new examinationAndTestDAO();
				
				int count1=Integer.parseInt(request.getParameter("count"));
				int examinationID1=Integer.parseInt(request.getParameter("examinationID"));	
				
				boolean b=false;
				ArrayList<examinationAndTest> listFollowExaminationID= eat.getListFollowExaminationID(examinationID1);
				for(int i=0;i<count1;i++) {				
					if(request.getParameter("check"+i)!=null) {
						int subjectID2=Integer.parseInt(request.getParameter("check"+i));
						for(examinationAndTest exat:listFollowExaminationID) {
							if(exat.getTestID()==subjectID2) {
								b=true;
							}						
						}
						if(b==false) {
							eat.insert(examinationID1,subjectID2 , Integer.parseInt(request.getParameter("subjectID"+i)));
						}
					}
					
				}
				response.sendRedirect("insertController?command=insertTestForExamination&statusInsert=true&examinationID="+examinationID1+"");
				break;
				
			}
		}
		else{
			response.sendRedirect("loginController?statusSession=true");
		}
		
	}
	public static void main(String[] args) {
		classExamDAO classExam=new classExamDAO();
		
	    //int id=Integer.parseInt(request.getParameter("TestIDIS"));
	    int id=17;
	    ArrayList<classExam> listClassExam= new ArrayList<>();
	    
	   // listClassExam= classExam.getListClassFollowID(id);
	    //System.out.println( classExam.deleteClassExam(id));
	   
	  //  for(classExam cl: listClassExam) {
	    	/*if(request.getParameter(""+cl.getClassID()+"")!=null) {
	    		classExam.insertClassExam(id, cl.getClassID());
	    	}*/
	    	System.out.println(listClassExam= classExam.getListClassFollowID(id));
	   // }
	}

}
