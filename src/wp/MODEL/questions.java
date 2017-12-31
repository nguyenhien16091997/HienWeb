package wp.MODEL;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class questions {
	private int questionID;
	private int subjectID;
	private int themeID;
	private int levelID;
	private Date dateCreate;
	private String content;
	public questions(int questionID, int subjectID, int themeID, int levelID, Date dateCreate, String content) {
		this.questionID=questionID;
		this.subjectID=subjectID;
		this.themeID=themeID;
		this.levelID=levelID;
		this.dateCreate=dateCreate;
		this.content=content;
	}

	public int getQuestionID() {
		return questionID;
	}

	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}

	public int getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}

	public int getThemeID() {
		return themeID;
	}

	public void setThemeID(int themeID) {
		this.themeID = themeID;
	}

	public int getLevelID() {
		return levelID;
	}

	public void setLevelID(int levelID) {
		this.levelID = levelID;
	}

	public String getDateCreate() {
		return new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(dateCreate);
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public questions() {
		// TODO Auto-generated constructor stub
	}

	
}