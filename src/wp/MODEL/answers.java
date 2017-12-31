package wp.MODEL;

public class answers {
	private  int answerID;
	private  String answerName;
	private  String answerContent;
	private  String isCorrect;
	private  int questionID;
	public answers(int answerID, String answerName, String answerContent, String iscorrect, int questionID) {
		this.answerID=answerID;
		this.answerName=answerName;
		this.answerContent=answerContent;
		this.isCorrect=iscorrect;
		this.questionID=questionID;
	}
	public answers() {
		// TODO Auto-generated constructor stub
	}
	public int getAnswerID() {
		return answerID;
	}
	public void setAnswerID(int answerID) {
		this.answerID = answerID;
	}
	public String getAnswerName() {
		return answerName;
	}
	public void setAnswerName(String answerName) {
		this.answerName = answerName;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public String getIsCorrect() {
		return isCorrect;
	}
	public void setIsCorrect(String isCorrect) {
		this.isCorrect = isCorrect;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
}