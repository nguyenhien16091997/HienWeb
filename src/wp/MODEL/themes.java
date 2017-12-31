package wp.MODEL;

public class themes {
	private  int themeID;
	private  String themeName;
	private  int subjectID;
	public themes(int themeID,String themeName,int subjectID ) {
		this.themeID=themeID;
		this.themeName=themeName;
		this.subjectID=subjectID;
	}
	public themes() {
		// TODO Auto-generated constructor stub
	}
	public int getThemeID() {
		return themeID;
	}
	public void setThemeID(int themeID) {
		this.themeID = themeID;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public int getSubjectID() {
		return subjectID;
	}
	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}

	
}
