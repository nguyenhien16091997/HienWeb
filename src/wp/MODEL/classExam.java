package wp.MODEL;

public class classExam {
	private String classID;
	private int id;
	public classExam(String classID, int id) {
		this.classID=classID;
		this.id=id;
	}
	public String getClassID() {
		return classID;
	}
	public void setClassID(String classID) {
		this.classID = classID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

}
