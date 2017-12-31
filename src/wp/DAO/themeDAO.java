package wp.DAO;

import java.sql.ResultSet;

import wp.MODEL.questions;
import wp.MODEL.themes;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class themeDAO {
	DataAccess dao= new DataAccess();
	public String getThemeName(int themeID) {

		String sql="select distinct themeName from theme where themeID="+themeID+"";
		String themeName= null;
		try {
			
			ResultSet rs=dao.getResultSet(sql);
			rs.next();
			themeName=rs.getString("themeName");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return themeName;		
	}
	public Map<Integer,themes> getMapThemeFolowThemeID(){
		
		Map<Integer,themes> mapTheme= new HashMap<Integer,themes>();	
		String sql="select* from theme";
		try {
			
			ResultSet rs= dao.getResultSet(sql);
			while(rs.next()) {
				themes theme= new themes();
				theme.setThemeID(rs.getInt("themeID"));
				theme.setThemeName(rs.getString("themeName"));
				theme.setSubjectID(rs.getInt("subjectID"));
				mapTheme.put(theme.getThemeID(), theme);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return mapTheme;		
	}
	public ArrayList<themes> getListThemeFollowSubjectID(int subjectID){
		
		ArrayList<themes> listThemeFollowSubjectID =new ArrayList<>();		

		String sql="select* from theme where subjectID="+subjectID+"";
		//PreparedStatement ps;
		try {
			
			ResultSet rs = dao.getResultSet(sql);
			while(rs.next()) {
				themes theme=new themes();
				theme.setSubjectID(rs.getInt("subjectID"));
				theme.setThemeID(rs.getInt("themeID"));
				theme.setThemeName(rs.getString("themeName"));
				
				listThemeFollowSubjectID.add(theme);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listThemeFollowSubjectID;
	}
	public Map<Integer,themes> getMapThemeFolowSubjectID(){
		
		Map<Integer,themes> mapTheme= new HashMap<Integer,themes>();

		String sql="select* from theme";
		try {
			
			ResultSet rs= dao.getResultSet(sql);
			while(rs.next()) {
				themes theme= new themes();
				theme.setThemeID(rs.getInt("themeID"));
				theme.setThemeName(rs.getString("themeName"));
				theme.setSubjectID(rs.getInt("subjectID"));
				mapTheme.put(theme.getThemeID(), theme);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return mapTheme;		
	}
	public static void main(String[] args) {
		themeDAO t= new themeDAO();
		Map<Integer,themes> mapTheme= new HashMap<Integer,themes>();
		mapTheme= t.getMapThemeFolowSubjectID();
		System.out.println(mapTheme.get(1).getThemeName());
//		
//		ArrayList<themes> listQuestionFollowSubjectID =new ArrayList<>();
//		listQuestionFollowSubjectID=getListThemeFollowSubjectID(1);
//		System.out.println(listQuestionFollowSubjectID);
	}
}
