package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import wp.MODEL.classExam;
import wp.MODEL.examinaion;
import wp.MODEL.examinationAndTest;

public class classExamDAO {
	DataAccess dao= new DataAccess();
	public ArrayList<classExam> getListClassExam(){
		ArrayList<classExam> list= new ArrayList<>();
		ResultSet rs= dao.getResultSet("select* from classexam");
		try {
			while(rs.next()) {
				classExam ce= new classExam(rs.getString(1), rs.getInt(2));
				list.add(ce);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<classExam> getListClassFollowID(int id){
		ArrayList<classExam> listclassExam= new ArrayList<>();
		ArrayList<classExam> listclassFollowExamID= new ArrayList<>();
		
		listclassExam= getListClassExam();
		for(classExam cl: listclassExam) {
			if(cl.getId()==id) {
				listclassFollowExamID.add(cl);
			}
		}
		return listclassFollowExamID;
	}
	public boolean insertClassExam(int id, String classID) {
		boolean bl=false;
		bl=dao.updateData("insert into classexam (classID,id)values('"+classID+"',"+id+")");
		return bl;
	}
	public boolean deleteClassExam(int id) {
		boolean bl=false;
		bl=dao.updateData("delete from classexam where id="+id);
		return bl;
	}
	public ArrayList<classExam> getListIDFollowClassID(String classID){		
		
		ArrayList<classExam> list= new ArrayList<>();
		ArrayList<classExam> listCE= new ArrayList<>();
		listCE= getListClassExam();
		for(classExam i: listCE) {
			if(i.getClassID().equals(classID)) {
				
				list.add(i);
			}
		}
		return list;
	}
	
	public static void main(String[] args) {
		ArrayList<classExam> list= new ArrayList<>();
		classExamDAO c= new classExamDAO();
		list=c.getListIDFollowClassID("151101a");
		for(classExam i: list) {
			System.out.println(i.getId());
		}
		
		/*ArrayList<Integer> examinationID= new ArrayList<>();
		examinationID= c.getListExaminationFollowID("151101b");
		for(Integer i: examinationID) {
			System.out.println(i);
		}*/
	}
}
