package wp.MODEL;

public class roles {
	private int roleID;
	private String roleName;
	public roles(int roleID, String roleName) {
		this.roleID=roleID;
		this.roleName=roleName;
	}

	public roles() {
		// TODO Auto-generated constructor stub
	}

	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
}
