package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import wp.MODEL.subjects;


public class subjectsDAO {
	DataAccess dao= new DataAccess();
	public String getSubjectName(int subjectID) {	
		String sql="select distinct subjectName from subject where subjectID="+subjectID+"";
		String subjectName= null;
		try {			
			ResultSet rs=dao.getResultSet(sql);
			rs.next();
			subjectName=rs.getString("subjectName");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return subjectName;
		
	}
	public ArrayList<subjects> getListSubject(){

		ArrayList<subjects> listSubject= new ArrayList<>();
				
		try {
			String sql="select* from subject";
			ResultSet rs=dao.getResultSet(sql);
			
			while(rs.next()) {
				subjects subject= new subjects();
				subject.setSubjectID(rs.getInt("subjectID"));
				subject.setSubjectName(rs.getString("subjectName"));
				listSubject.add(subject);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listSubject;
	}
	public Map<Integer,subjects> getMapSubjects(){
		
		Map<Integer,subjects> mapSubjects= new HashMap<Integer,subjects>();

		String sql="select* from subject";
		try {
		
			ResultSet rs=dao.getResultSet(sql);
			while(rs.next()) {
				subjects subject=new subjects();
				int subjectID = rs.getInt("subjectID");
				String subjectName = rs.getString("subjectName");
				subject.setSubjectID(subjectID);
				subject.setSubjectName(subjectName);
				mapSubjects.put(subject.getSubjectID(),subject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapSubjects;
	}
		public void main(String[] args) throws SQLException {	
	
			
			Map<Integer, subjects> mapSubject = getMapSubjects();
			int key= 1;
			System.out.println(mapSubject.get(key).getSubjectName().toString());
		}
}
