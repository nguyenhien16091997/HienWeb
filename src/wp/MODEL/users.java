package wp.MODEL;

public class users {
	
	 private String userName;
	 private String password;
	 private int roleID;
	 private String classID;
	 private String fullName;
	 private String gener;
	 private String phone;
	 private String avatar;
	
	public users(String userName, String password, int roleID,String classID, String fullName,String gener, String phone, String avatar) {
		
		this.userName=userName;
		this.password=password;
		this.roleID=roleID;
		this.classID=classID;
		this.fullName=fullName;
		this.phone=phone;
		this.avatar=avatar;
	}

	public String getClassID() {
		return classID;
	}

	public void setClassID(String classID) {
		this.classID = classID;
	}

	public users() {
		// TODO Auto-generated constructor stub
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGener() {
		return gener;
	}

	public void setGener(String gener) {
		this.gener = gener;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
}
