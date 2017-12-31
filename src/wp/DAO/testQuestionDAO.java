package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import wp.MODEL.questions;
import wp.MODEL.testQuestion;
import wp.MODEL.tests;

public class testQuestionDAO {
	DataAccess dao= new DataAccess();
	public boolean insertTestQuestion(int testID, int questionID) {
		
		boolean bl=false;		
		
		String sql="insert into testquestion (testID,questionID)values("+testID+","+questionID+")";
		bl=dao.updateData(sql);
		return bl;	
	}
	public ArrayList<testQuestion> getListTestQuestionFollowTestID(int testID){
		
		ArrayList<testQuestion> list= new ArrayList<>();	
		
		try {
			String sql="select* from testquestion where testID="+testID+"";
			ResultSet rs=dao.getResultSet(sql);
			
			while(rs.next()) {
				testQuestion tq=new testQuestion();
				tq.setTestID(rs.getInt("testID"));
				tq.setQuestionID(rs.getInt("questionID"));
				list.add(tq);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public boolean deleteFollowTestID(int testID) {
		boolean bl=false;
		bl=dao.updateData("delete from testQuestion where testID="+testID+"");
		return bl;
	}
	public static void main(String[] args) {
		/*ArrayList<testQuestion> list= new ArrayList<>();
		list=getListTestQuestionFollowTestID(4);
		for(testQuestion t: list) {
			System.out.println(t.getQuestionID());
		}*/
		
	}
}
