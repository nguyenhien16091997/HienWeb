package wp.MODEL;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class examinaion {
	private int examinationID;
	private String examinationName;
	private Date dateTimeStart;
	private Date dateTimeFinish;
	public examinaion(int examinationID, String examinationName, Date dateTimeStart, Date dateTimeFinish) {
		this.examinationID=examinationID;
		this.examinationName=examinationName;
		this.dateTimeStart=dateTimeStart;
		this.dateTimeFinish=dateTimeFinish;
	}
	public int getExaminationID() {
		return examinationID;
	}
	public void setExaminationID(int examinationID) {
		this.examinationID = examinationID;
	}
	public String getExaminationName() {
		return examinationName;
	}
	public void setExaminationName(String examinationName) {
		this.examinationName = examinationName;
	}
	public String getDateTimeStart() {		
		return new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(dateTimeStart);
	}
	public Date getStart() {		
		return dateTimeStart;
	}
	public void setDateTimeStart(Date dateTimeStart) {
		this.dateTimeStart = dateTimeStart;
	}
	public String getDateTimeFinish() {
		return new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(dateTimeFinish);
	}
	public Date getFinish() {
		return dateTimeFinish;
	}
	public void setDateTimeFinish(Date dateTimeFinish) {
		this.dateTimeFinish = dateTimeFinish;
	}
}
