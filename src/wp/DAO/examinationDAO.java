package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import sun.java2d.pipe.SpanShapeRenderer.Simple;

import java.sql.Date;

import wp.MODEL.examinaion;

public class examinationDAO {
	DataAccess dao=new DataAccess();
	public ArrayList<examinaion> getListExamination() {
		ArrayList<examinaion> listExamination=new ArrayList<>();
		ResultSet rs= dao.getResultSet("SELECT * FROM examination");
		try {
			while(rs.next()) {
				Timestamp ts= rs.getTimestamp(3);
				Timestamp ts2= rs.getTimestamp(4);
				examinaion e= new examinaion(rs.getInt(1), rs.getString(2),new Date(ts.getTime()), new Date(ts2.getTime()));
				listExamination.add(e);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listExamination;
	}
	public Map<Integer,examinaion> getMapExamination(){
		Map<Integer,examinaion> mapExamination= new HashMap<Integer,examinaion>();
		ResultSet rs= dao.getResultSet("SELECT * FROM examination");
		try {
			while(rs.next()) {
				Timestamp ts= rs.getTimestamp(3);
				Timestamp ts2= rs.getTimestamp(4);
				examinaion e= new examinaion(rs.getInt(1), rs.getString(2),new Date(ts.getTime()), new Date(ts2.getTime()));
				mapExamination.put(e.getExaminationID(), e);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapExamination;
	}
	public boolean deleteExamination(int examinationID) {
		boolean bl=false;
		bl=dao.updateData("delete from examination where examinationID="+examinationID);
		return bl;
	}
	public boolean insertExamination(String examinationName, String dateTimeStart, String dateTimeFinish) {
		boolean bl=false;
		String sql="insert into examination(examinationName, dateTimeStart, dateTimeFinish) values(N'"+examinationName+"', '"+dateTimeStart+"','"+dateTimeFinish+"' )";
		bl=dao.updateData(sql);
		return bl;
	}
	public String convertDateTime1(Date date) {
		SimpleDateFormat sdfd=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdfdt= new SimpleDateFormat("HH:mm:ss");
		String rs=sdfd.format(date)+"T"+sdfdt.format(date);
		return rs;
	}
	public boolean updateExamination(int examinationID, String examinationName, String dateTimeStart, String dateTimeFinish) {
		boolean bl=false;
		bl=dao.updateData("update examination set examinationName=N'"+examinationName+"',dateTimeStart='"+dateTimeStart+"', dateTimeFinish='"+dateTimeFinish+"' where examinationID="+examinationID+"");
		return bl;
	}
	public String convertDateTime2(String date) {
		String a = null;
		String b= null;
		String array[]= date.split("T");
		for(String i:array) {
			if(a==null) {
				a=i;
			}
			else {
				b=i;
			}
		}
		String rs=a+" "+b;
		return rs;
	}
	public static void main(String[] args) {
		examinationDAO e= new examinationDAO();
		/*ArrayList<examinaion> listExamination=new ArrayList<>();		
		listExamination= e.getListExamination();
		for(examinaion i: listExamination) {
			System.out.println(i.getExaminationID());
		}*/
		//e.insertExamination("ý óc shit", "1997-12-15", "1997-12-15");
		Map<Integer,examinaion> mapExamination= new HashMap<Integer,examinaion>();
		mapExamination= e.getMapExamination();
		System.out.println(mapExamination.get(3).getExaminationName());
	}
}
