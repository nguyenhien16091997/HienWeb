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


import wp.MODEL.tests;
public class testDAO {
	DataAccess dao= new DataAccess();	
	public ArrayList<tests> getListSubject(){
			
		ArrayList<tests> listTest= new ArrayList<>();
		try {
			String sql="select* from test";
			ResultSet rs=dao.getResultSet(sql);
			
			while(rs.next()) {
				
				Timestamp ts=rs.getTimestamp(4);
				tests test= new tests(rs.getInt(1),rs.getString(2),rs.getInt(3),new Date(ts.getTime()),rs.getString(5),rs.getString(6),rs.getInt(7));				
				listTest.add(test);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listTest;
	}
	public Map<Integer,tests> getMapTest(){
		
		Map<Integer,tests> mapTest= new HashMap<Integer,tests>();
		try {
			String sql="select* from test";
			ResultSet rs= dao.getResultSet(sql);
			
			while(rs.next()) {
			
				Timestamp ts=rs.getTimestamp(4);
				tests test= new tests(rs.getInt(1),rs.getString(2),rs.getInt(3),new Date(ts.getTime()),rs.getString(5),rs.getString(6),rs.getInt(7));

				mapTest.put(test.getTestID(), test);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapTest;
	}
	
	public int getIDMax() {	
	
		String sql="select max(testID) as testID from test";
		try {		
			ResultSet rs= dao.getResultSet(sql);
			rs.next();
			int testID=rs.getInt("testID");
			return testID;
		} catch (SQLException e) {
			return -1;
		}	
	}
	public boolean insertTest(String testName, String userName, String time, int subjectID) {
		
		boolean bl=false;	
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		
		String sql="insert into test (testName,dateCreate,userName, time, subjectID)values(N'"+testName+"',N'"+dtf.format(now)+"',N'"+userName+"',N'"+time+"',"+subjectID+")";
		bl= dao.updateData(sql);			
			
		return bl;
	}
	public boolean updateQuestionNumber(int testIDMax, int questionNumber) {
		boolean bl=false;
		bl=dao.updateData("update test set questionNumber="+questionNumber+" where testID="+testIDMax);
		return bl;
	}
	public boolean deleteExam (int testID) {
		
		boolean bl=false;	
		String sql="delete from test where testID="+testID+"";
		bl= dao.updateData(sql);
		return bl;
	}
	public boolean updateExam(int testID, String testName, int questionNumber,String userName, String time, int subjectID) {
		boolean bl=false;
		bl=dao.updateData("update test set testName=N'"+testName+"', QuestionNumber="+questionNumber+",userName=N'"+userName+"', time='"+time+"', subjectID="+subjectID+" where testID="+testID);
		return bl;
	}
	public static void main(String[] args) {
		testDAO testDAO= new testDAO();
		/*ArrayList<tests> listTest= new ArrayList<>();
		listTest=testDAO.getListSubject();
		for(tests test: listTest) {
			System.out.println(test.getDateCreate());
		}*/
		//System.out.print(getIDMax());
		//System.out.print(insertTest("đề 8", 25, new Date(new java.util.Date().getTime()), "hien","1:30:00" , 1));
		//deleteExam(9);
		//getHMT("10:45:00", null, null, null);
		/*Map<Integer,tests> mapTest= new HashMap<>();
		mapTest=testDAO.getMapTest();
		System.out.println(mapTest.get(24).getDateCreate());*/
		System.out.println(testDAO.updateExam(15, "ĐỀ 1", 2, "hien", "10", 1));
	}
}
