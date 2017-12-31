package wp.MODEL;

public class doneTest {
	private String userName;
	private int testID;
	private int mark;
	public doneTest(String userName, int testID, int mark) {
		this.userName=userName;
		this.testID=testID;
		this.mark=mark;
	}
	public int getMark() {
		return mark;
	}
	public void setMark(int mark) {
		this.mark = mark;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getTestID() {
		return testID;
	}
	public void setTestID(int testID) {
		this.testID = testID;
	}
	
}
