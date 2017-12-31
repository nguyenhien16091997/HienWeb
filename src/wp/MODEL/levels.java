package wp.MODEL;

public class levels {
	private  int levelID;
	private  String levelName;
	public levels(int levelID, String levelName) {
		this.levelID=levelID;
		this.levelName=levelName;
	}
	public levels() {
		// TODO Auto-generated constructor stub
	}
	public int getLevelID() {
		return levelID;
	}
	public void setLevelID(int levelID) {
		this.levelID = levelID;
	}
	public String getLevelName() {
		return levelName;
	}
	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}
	
}
