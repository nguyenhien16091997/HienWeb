package wp.DAO;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import wp.MODEL.classExam;
import wp.MODEL.examinaion;
import wp.MODEL.examinationAndTest;

public class examinationAndTestDAO {
	DataAccess dao=new DataAccess();
	public ArrayList<examinationAndTest> getListExaminaitonAndTest(){
		ArrayList<examinationAndTest> list= new ArrayList<>();
		ResultSet rs= dao.getResultSet("select* from examinationandtest");
		try {
			while(rs.next()) {
				examinationAndTest e= new examinationAndTest(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4));
				list.add(e);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public Map<Integer,examinationAndTest> getMapExaminaitonAndTest(){
		Map<Integer,examinationAndTest> list= new HashMap<Integer,examinationAndTest>();
		ResultSet rs= dao.getResultSet("select* from examinationandtest");
		try {
			while(rs.next()) {
				examinationAndTest e= new examinationAndTest(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4));
				list.put(e.getId(), e);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public boolean delete(int id) {
		boolean bl=false;
		bl=dao.updateData("delete from examinationandtest where id="+id);
		return bl;
	}
	public boolean insert(int examinationID,int testID, int subjectID ) {
		boolean bl=false;
		bl=dao.updateData("insert into examinationandtest (examinationID,testID,subjectID)values("+examinationID+","+testID+","+subjectID+")");
		return bl;
	}
	public Set<Integer> getListExaminationFollowID(String classID) {
		Map<Integer,examinaion> mapExamination= new HashMap<Integer,examinaion>();
		examinationDAO edao= new examinationDAO();
		mapExamination= edao.getMapExamination();
		
		classExamDAO c= new classExamDAO();
		Map<Integer,examinationAndTest> map= new HashMap<Integer,examinationAndTest>();
		map=getMapExaminaitonAndTest();
		
		ArrayList<Integer> examinationID= new ArrayList<>();
		ArrayList<classExam> list= new ArrayList<>();
		list=c.getListIDFollowClassID(classID);
		
		Date timeStart = null;
		Date timeFinish = null;
		Date local= new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss");
		for(classExam i: list) {			
			try {
				timeStart = dateFormat.parse(mapExamination.get(map.get(i.getId()).getExaminationID()).getDateTimeStart());
				timeFinish = dateFormat.parse(mapExamination.get(map.get(i.getId()).getExaminationID()).getDateTimeFinish());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
			if(timeFinish.after(local)&&timeStart.before(local)) {	
				System.out.println(map.get(i.getId()).getExaminationID());
				examinationID.add(map.get(i.getId()).getExaminationID());
			}
		}		
		Set<Integer> examinationID1= new HashSet<Integer>(examinationID);
		return examinationID1;
	}
	public ArrayList<examinationAndTest> getListFollowExaminationID(int examinationID){
		ArrayList<examinationAndTest> list= new ArrayList<>();
		ArrayList<examinationAndTest> listReturn= new ArrayList<>();
		list=getListExaminaitonAndTest();
		for(examinationAndTest ex:list) {
			if(ex.getExaminationID()==examinationID) {
				
				listReturn.add(ex);
			}
		}
		return listReturn;
	}
	public ArrayList<examinationAndTest> getListExamOfClass(String classID, int examinationID){
		
		
		 ArrayList<examinationAndTest> l=new ArrayList<>();
		 
		 classExamDAO c= new classExamDAO();
		 ArrayList<classExam> listClass= new ArrayList<>();
		 listClass=c.getListIDFollowClassID(classID);
		 
		 Map<Integer,examinationAndTest> map= new HashMap<Integer,examinationAndTest>();
			map=getMapExaminaitonAndTest();
		 
		 for(classExam cE: listClass) {
			 if(map.get(cE.getId()).getExaminationID()==examinationID) {
				 examinationAndTest cle= new examinationAndTest(cE.getId(), examinationID, map.get(cE.getId()).getTestID(), map.get(cE.getId()).getSubjectID());
				 l.add(cle);
			 }
		 } 
		 return l;
	}
	public static void main(String[] args) {
		/*ArrayList<examinationAndTest> l=new ArrayList<>();
		examinationAndTestDAO e= new examinationAndTestDAO();
		l=e.getListExamOfClass("151101a", 3);
		for(examinationAndTest i: l) {
			System.out.println(i.getTestID());
		}*/
		examinationAndTestDAO e= new examinationAndTestDAO();
		ArrayList<Integer> examinationID= new ArrayList<>();
		examinationID=(ArrayList<Integer>) e.getListExaminationFollowID("151101a");
		for(int i: examinationID) {
			System.out.println(i);
		}
		
	}
}

