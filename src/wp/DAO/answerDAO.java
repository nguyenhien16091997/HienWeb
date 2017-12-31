package wp.DAO;

import wp.MODEL.answers;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.org.apache.regexp.internal.recompile;


public class answerDAO {
	DataAccess dao= new DataAccess();
	public Map<Integer,answers> getMapAnswer(){
		
		Map<Integer,answers> mapAnswer=new HashMap<Integer,answers>();
		
		try {
			
			ResultSet rs= dao.getResultSet("select* from answer");
			while(rs.next()) {
				answers answer=new answers();
				answer.setAnswerID(rs.getInt(1));
				answer.setAnswerName(rs.getString(2));
				answer.setAnswerContent(rs.getString("answerContent"));
				answer.setIsCorrect(rs.getString("isCorrect"));
				answer.setQuestionID(rs.getInt("questionID"));
				mapAnswer.put(answer.getAnswerID(), answer);
			}
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapAnswer;
		
	}
	public ArrayList<answers> getListAnswer(){
		
		ArrayList<answers> listAnswer= new ArrayList<>();
		
		try {
			
			ResultSet rs= dao.getResultSet("select* from answer");
			while(rs.next()) {
				answers answer=new answers();
				answer.setAnswerID(rs.getInt("answerID"));
				answer.setAnswerName(rs.getString("answerName"));
				answer.setAnswerContent(rs.getString("answerContent"));
				answer.setIsCorrect(rs.getString("isCorrect"));
				answer.setQuestionID(rs.getInt("questionID"));
				listAnswer.add(answer);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listAnswer;
	}
	public ArrayList<answers> getListAnswerFollowQuestionID(int questionID){
		ArrayList<answers> listAnswerFollowQuestionID= new ArrayList<>();
		ArrayList<answers> listAnswer= new ArrayList<>();
		listAnswer= getListAnswer();
		for(answers answer : listAnswer) {
			if(answer.getQuestionID()==questionID) {
				listAnswerFollowQuestionID.add(answer);
			}
		}
		return listAnswerFollowQuestionID;
	}
	public boolean insertAnswer(String answerName, String answerContent,String isConrrect, int questionID) {	
		boolean bl=false;
	
		String sql="insert into answer (answerName,answerContent,isCorrect,questionID)values(N'"+answerName+"',N'"+answerContent+"',N'"+isConrrect+"',"+questionID+")";	
		bl =dao.updateData(sql);		
		return bl;
	}
	public boolean deleteAnswerFollowQuestionID(int questionID) {
		boolean bl=false;
		bl=dao.updateData("delete from answer where questionID='"+questionID+"'");
		return bl;
	}
	public String getAnswerCorrect(int questionID) {
		ArrayList<answers> list=getListAnswerFollowQuestionID(questionID);
		for(answers answer: list) {
			if(answer.getIsCorrect().equals("true"))
			{
				return answer.getAnswerName();
			}
		}
		return "not found";
	}
	public static void main(String[] args) {
		answerDAO a= new answerDAO();
		/*ArrayList<answers> listAnswer= new ArrayList<>();
		listAnswer = a.getListAnswer();
		for(answers answer: listAnswer) {
			System.out.println(answer.getQuestionID());
		}*/
		
		//System.out.print(a.insertAnswer("1", "1", "1", 54));
		
		/*ArrayList<answers> listAnswerFollowQuestionID= new ArrayList<>();
		listAnswerFollowQuestionID = a.getListAnswerFollowQuestionID(54);
		for(answers answer: listAnswerFollowQuestionID) {
			System.out.println(answer.getAnswerName());
		}*/
		
		System.out.println(a.getAnswerCorrect(63));
	}
	
}
