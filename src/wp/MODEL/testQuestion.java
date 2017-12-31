package wp.MODEL;

public class testQuestion {
	private int testID;
	private int questionID;
	public testQuestion() {
		
	}
	public testQuestion(int testID, int questionID) {
		this.testID=testID;
		this.questionID=questionID;
	}
	public int getTestID() {
		return testID;
	}
	public void setTestID(int testID) {
		this.testID = testID;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
	
}
