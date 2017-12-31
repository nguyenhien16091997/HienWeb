package wp.MODEL;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

public class tests {
	private int testID;
	private String testName;
	private int questionNumber;
	private Date dateCreate;
	private String userName;
	private String testTime;
	private int subjectID;
	
	public tests(int testID, String testName, int questionNumber, Date dateCreate, String userName, String testTime, int subjectID ) {
		this.testID= testID;
		this.testName=testName;
		this.questionNumber=questionNumber;
		this.dateCreate= dateCreate;
		this.userName=userName;
		this.testTime=testTime;
		this.subjectID=subjectID;
	}
	
	public tests() {
		// TODO Auto-generated constructor stub
	}

	public int getTestID() {
		return testID;
	}
	public void setTestID(int testID) {
		this.testID = testID;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public int getQuestionNumber() {
		return questionNumber;
	}
	public void setQuestionNumber(int questionNumber) {
		this.questionNumber = questionNumber;
	}
	public String getDateCreate() {
		return new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(dateCreate);
	}
	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTestTime() {
		return testTime;
	}
	public void setTestTime(String testTime) {
		this.testTime = testTime;
	}
	public int getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}
	
}
