package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import wp.MODEL.levels;
public class levelsDAO {
	DataAccess dao= new DataAccess();
	public String getLevelName(int levelID) {		
		
		String sql="select distinct levelName from level where levelID="+levelID+"";
		String levelName= null;
		try {			
			ResultSet rs=dao.getResultSet(sql);
			rs.next();
			levelName=rs.getString("levelName");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return levelName;
	}
	public Map<Integer,levels> getMapLevel(){
		
		Map<Integer,levels> mapLevel = new HashMap<Integer,levels>();
		try {
			
			ResultSet rs=dao.getResultSet("select* from level");
			while(rs.next()) {
				levels level=new levels();
				level.setLevelID(rs.getInt("levelID"));
				level.setLevelName(rs.getString("levelName"));
				mapLevel.put(level.getLevelID(), level);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapLevel;
	}
	public ArrayList<levels> getListLevel(){
		
		ArrayList<levels> listLevel =new ArrayList<>();
		try {
			String sql="select* from level";
			ResultSet rs=dao.getResultSet(sql);
			while(rs.next()) {
				levels level=new levels();
				level.setLevelID(rs.getInt("levelID"));
				level.setLevelName(rs.getString("levelName"));
				listLevel.add(level);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listLevel;
	}
	public static void main(String[] args) {
		levelsDAO l= new levelsDAO();
		//System.out.println(l.getLevelName(1));
		/*Map<Integer,levels> mapLevel = new HashMap<Integer,levels>();
		mapLevel=l.getMapLevel();
		System.out.println(mapLevel.get(1).getLevelName());*/
	}
}
