package wp.MODEL;

public class subjects {
	private  int subjectID;
	private  String subjectName;
	public subjects(int subjectID, String subjectName) {
		this.subjectID=subjectID;
		this.subjectName=subjectName;
	}
	public subjects() {
		// TODO Auto-generated constructor stub
	}
	
	public int getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

}
