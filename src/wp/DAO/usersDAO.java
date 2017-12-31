package wp.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import wp.MODEL.users;

public class usersDAO {
	DataAccess dao= new DataAccess();
	public String CheckLogin(String userName, String password, int roleID)
	{		
		
		String sqlUserName="select* from users where UserName=N'"+userName+"'";
		String sqlPassword="select* from users where UserName=N'"+userName+"' and password=N'"+password+"'";
		String sqlroleID="select* from users where UserName=N'"+userName+"' and password=N'"+password+"' and RoleID="+roleID+"";
		try {		
			ResultSet rs1=dao.getResultSet(sqlUserName);
			if(rs1.next())
			{				
				ResultSet rs2=dao.getResultSet(sqlPassword);
				if(rs2.next()) {
					ResultSet rs3=dao.getResultSet(sqlroleID);
					if(rs3.next()) {
						return "true";
					}
					else {
						return "wrongRole";
					}
				}
				else {
					return "wrongPassword";
				}
			}
			else {
				return "wrongUserName";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "false";		
	}
	public ArrayList<users> getListUsers() {	
		
		String sql="select* from users";
		ArrayList<users> list= new ArrayList<>();
		try {			
			ResultSet rs=dao.getResultSet(sql);
			
			
			while(rs.next()) {
				
				users user=new users();
				user.setUserName(rs.getString("UserName"));
				user.setFullName(rs.getString("FullName"));
				user.setRoleID(rs.getInt("RoleID"));
				user.setClassID(rs.getString("class"));
				user.setGener(rs.getString("Gener"));
				user.setPhone(rs.getString("Phone"));
				user.setAvatar(rs.getString("Avatar"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return list;
		
	}
	public Map<String,users> getMapUser(){
		
		Map<String,users> mapUser=new HashMap<String, users>();	
		String sql="select* from users";
		
		try {
			
			ResultSet rs=dao.getResultSet(sql);
			
			while(rs.next()) {
				users user=new users();
				user.setUserName(rs.getString("UserName"));
				user.setPassword(rs.getString("password"));
				user.setFullName(rs.getString("FullName"));
				user.setRoleID(rs.getInt("RoleID"));
				user.setClassID(rs.getString("class"));
				user.setGener(rs.getString("Gener"));
				user.setPhone(rs.getString("Phone"));
				user.setAvatar(rs.getString("Avatar"));
				mapUser.put(user.getUserName(), user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return mapUser;
	}
	public boolean DeleteUser (String userName) {
		
		
		boolean bl = false;
		String sql="delete from users where UserName=N'"+userName+"'";
		bl=dao.updateData(sql);
		
		return bl;
	}
	public boolean InsertUser(String userName, String password, int roleID,String FullName, String gener,String phone, String avatar) {
			
		boolean bl=false;
		String sql="insert into users (UserName,PassWord,RoleID,FullName,Gener,Phone,Avatar)values(N'"+userName+"',N'"+password+"',"+roleID+",N'"+FullName+"',N'"+gener+"',N'"+phone+"',N'"+avatar+"')";
		if(!checkLikeUserNameForInsert(userName)) {			
				bl=dao.updateData(sql);
		}
		
		return bl;
		
	}
	public boolean checkLikeUserNameForInsert(String userName) {
		ArrayList<users> listUser= getListUsers();
		for(users user:listUser ) {
			if(user.getUserName()==userName) {
				return true;
			}
		}
		return false;
	}
	public boolean UpdateUser(String userName, String password, int roleID,String fullName, String gener,String phone, String avatar) {
		
		String sql="update users set password='"+password+"', RoleID="+roleID+", FullName=N'"+fullName+"', gener=N'"+gener+"', Phone=N'"+phone+"', avatar=N'"+avatar+"' where UserName=N'"+userName+"'";
		boolean bl=false;
		bl=dao.updateData(sql);		
	
		return bl;
		
	}
	public boolean checkForChagePassword(String userName, String passwordOld) {		
		
		String sql="select* from users where UserName=N'"+userName+"' and Password=N'"+passwordOld+"'";
		try {			
			ResultSet rs= dao.getResultSet(sql);
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	public boolean updatePasswordOfUser(String userName, String passwordNew) {
		boolean bl=false;		
		String sql="update users set password=N'"+passwordNew+"' where UserName=N'"+userName+"'";
		bl=dao.updateData(sql);
		return bl;
	}
	public boolean updateAvatarOfUser(String userName, String avatar) {
		boolean bl=false;	
		String sql="update users set avatar=N'"+avatar+"' where UserName=N'"+userName+"'";
		bl=dao.updateData(sql);
		return bl;
	}
	public boolean updateClass(String userName, String classID) {
		boolean bl= false;
		bl=dao.updateData("update users set Class='"+classID+"' where UserName='"+userName+"'");
		return bl;
	}
	public static void main(String[] args) {
		//for(users us:usersDAO.getListUsers()) {
		//System.out.println(us.getFullName());
		//}
		/*if(DeleteUser("hien")) {
			System.out.println("DUNG");
		}
		else {
			System.out.println("false");
		}*/
		
		/*if(InsertUser("8","123",1,"dsd","nuwx","098711564648","123")) {
			System.out.println("DUNG");
		}
		else {
			System.out.println("false");*/
		
		/*Map<String, users> mapUser= new HashMap<String, users>();
		String a="hien";
		mapUser =getMapUser();
		System.out.println(mapUser.get(a).getFullName().toString());*/
		/*if(UpdateUser(" hảo","789",3,"dsd","Nguyễn Thị Hiền","098711564648","123")) {
			System.out.println("DUNG");
		}
		else {
			System.out.println("false");
		}*/
		/*if(updateAvatarOfUser("hongphuc","123.jpg")) {
			System.out.println("DUNG");
		}
		else {
			System.out.println("false");
		}*/
	}
}
