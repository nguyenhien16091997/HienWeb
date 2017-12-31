package wp.MODEL;

public class examinationAndTest {
	private int id;
	private int examinationID;
	private int testID;
	private int subjectID;
	public examinationAndTest(int id, int examinationID, int testID, int subjectID) {
		this.id=id;
		this.examinationID=examinationID;
		this.subjectID=subjectID;
		this.testID=testID;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getExaminationID() {
		return examinationID;
	}
	public void setExaminationID(int examinationID) {
		this.examinationID = examinationID;
	}
	public int getTestID() {
		return testID;
	}
	public void setTestID(int testID) {
		this.testID = testID;
	}
	public int getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}
}
