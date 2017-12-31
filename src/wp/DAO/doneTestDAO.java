package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import wp.MODEL.doneTest;

public class doneTestDAO {
	DataAccess dao= new DataAccess();
	public ArrayList<doneTest> getListDoneTest() {
		ArrayList<doneTest> list= new ArrayList<>();
		ResultSet rs= dao.getResultSet("select* from doneTest");
		try {
			while(rs.next()) {
				doneTest dt= new doneTest(rs.getString("userName"),rs.getInt("testID"), rs.getInt("mark"));
				list.add(dt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public Map<Integer,doneTest> getMapDoneTestFollowUserName(String userName) {
		Map<Integer,doneTest> map= new HashMap<Integer,doneTest>();
		ResultSet rs= dao.getResultSet("select* from donetest where userName='"+userName+"'");
		try {
			while(rs.next()) {
				doneTest dt= new doneTest(rs.getString("userName"),rs.getInt("testID"), rs.getInt("mark"));
				map.put(dt.getTestID(), dt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
	public ArrayList<Integer> getTestIDFollowUserName(String userName){
		ArrayList<Integer> ltID= new ArrayList<>();
		
		ArrayList<doneTest> list= new ArrayList<>();
		list= getListDoneTest();
		for(doneTest i:list) {
			if(i.getUserName().equals(userName)) {
				ltID.add(i.getTestID());
			}
		}
		return ltID;
	}
	public boolean insertRow(String userName, int testID, int mark) {
		boolean bl=false;
		bl=dao.updateData("insert into donetest (userName,testID,mark)values('"+userName+"',"+testID+","+mark+")");
		return bl;
	}
}
