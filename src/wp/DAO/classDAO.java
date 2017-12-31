package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.MODEL.classID;

public class classDAO {
	DataAccess dao=new DataAccess();
	public ArrayList<classID> getListClassID(){
		ArrayList<classID> list= new ArrayList<>();
		ResultSet rs= dao.getResultSet("select* from class");
		try {
			while(rs.next()) {
				classID ce= new classID(rs.getString(1));
				list.add(ce);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
