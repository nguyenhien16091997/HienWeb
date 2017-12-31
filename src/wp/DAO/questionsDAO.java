package wp.DAO;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;


import wp.MODEL.questions;


public class questionsDAO {
	DataAccess dao= new DataAccess();
	public ArrayList<questions> getListQuestion() throws SQLException{		
		
		String sql="select* from question";
		ResultSet rs=dao.getResultSet(sql);
		ArrayList<questions> list=new ArrayList<>();
		try {
		while(rs.next()) {
			questions question=new questions();
			question.setQuestionID(rs.getInt("questionID"));
			question.setSubjectID(rs.getInt("subjectID"));
			question.setThemeID(rs.getInt("themeID"));
			question.setLevelID(rs.getInt("levelID"));
			Timestamp ts= rs.getTimestamp("dateCreate");
			question.setDateCreate(new Date(ts.getTime()));
			question.setContent(rs.getString("content"));
			list.add(question);			
		}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	public Map<Integer,questions> getMapQuestions() throws SQLException{		
		
		String sql="select* from question";
		ResultSet rs=dao.getResultSet(sql);
		Map<Integer,questions> mapQuestion=new HashMap<Integer,questions>();
		while(rs.next()) {
			questions question=new questions();
			question.setQuestionID(rs.getInt("questionID"));
			question.setSubjectID(rs.getInt("subjectID"));
			question.setThemeID(rs.getInt("themeID"));
			question.setLevelID(rs.getInt("levelID"));
			question.setDateCreate(rs.getDate("dateCreate"));
			question.setContent(rs.getString("content"));
			mapQuestion.put(question.getQuestionID(), question);
		}
		return mapQuestion;
	}
	public boolean deleteQuestion (int questionID) {	
		boolean bl=false;
		String sql="delete from question where questionID="+questionID+"";		
		bl=dao.updateData(sql);
		return bl;
	}
	public int getIDMax() {		
	
		String sql="select max(questionID) as questionID from question";
	
		try {
			ResultSet rs= dao.getResultSet(sql);
			rs.next();
			int questionID=rs.getInt("questionID");
			return questionID;
		} catch (SQLException e) {
			return -1;
		}
	
	}
	public boolean insertQuestion(int subjectID, int themeID, int levelID,String content) {
		
		boolean bl=false;	
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		String sql="insert into question (SubjectID,ThemeID,levelID,dateCreate,content)values("+subjectID+","+themeID+","+levelID+",N'"+dtf.format(now)+"',N'"+content+"')";
		bl=dao.updateData(sql);
		return bl;
	}
	// random question
	public ArrayList<Integer> getGroupQuestionIDFollowThemeID(int subjectID, int themeID, int countQuestion ){
		ArrayList<Integer> groupQuestionID=new ArrayList<>();
		ArrayList<Integer> groupQuestionIDNew=new ArrayList<>();
		
		try {
			ArrayList<questions> listQuestion= getListQuestion();
			for(questions question: listQuestion) {
				if(question.getSubjectID()==subjectID && question.getThemeID()==themeID) {
					groupQuestionID.add(question.getQuestionID());
				}
			}	
			if(groupQuestionID.size()>countQuestion) {
				for(int i=0;i<countQuestion;i++) {
					int ID=getRandomItem(groupQuestionID);
					groupQuestionIDNew.add(groupQuestionID.get(ID));			
					groupQuestionID.remove(ID);
				}
				return groupQuestionIDNew;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return groupQuestionID;		
	}
	public int getRandomItem(ArrayList<Integer> groupQuestion) {
		int index=ThreadLocalRandom.current().nextInt(groupQuestion.size());
		return index;
	}
	public int getCountQuestionFollowThemeID(String themeID, String subjectID) throws SQLException {
		ArrayList<questions> list= new ArrayList<>();
		list= getListQuestion();
		int count=0;
		for(questions question: list) {
			int t= Integer.parseInt(themeID);
			int s=Integer.parseInt(subjectID);
			if(question.getThemeID()==t && question.getSubjectID()==s) {
				count++;
			}
		}
		return count;
	}
	public boolean updateQuestion(int questionID, int subjectID, int themeID, int levelID, String content) {
		boolean bl=false;
		bl=dao.updateData("update question set subjectID="+subjectID+", themeID="+themeID+", levelID="+levelID+", content=N'"+content+"' where questionID="+questionID+"");
		return bl;
	}
	public static void main(String[] args) {
		questionsDAO q=new questionsDAO();
		/*ArrayList<questions> list= new ArrayList<>();
		
		try {
			list = q.getListQuestion();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.print(list.get(0).getQuestionID());*/
		//q.deleteQuestion(60);
		//System.out.print(q.getIDMax());
		
		//System.out.print(q.insertQuestion(3, 2, 2, new Date(new java.util.Date().getTime()) , "hien"));
		
		/*Map<Integer,questions> mapQuestion=new HashMap<Integer,questions>();
		
		try {
			mapQuestion = q.getMapQuestions();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.print(mapQuestion.get(71).getDateCreate());*/
		ArrayList<Integer> groupQuestionID=new ArrayList<>();
		groupQuestionID= q.getGroupQuestionIDFollowThemeID(1, 1, 13);
		for(int i:groupQuestionID) {
			System.out.println(i);
		}
	}
}
