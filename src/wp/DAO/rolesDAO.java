package wp.DAO;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


import wp.MODEL.roles;

public class rolesDAO {
	DataAccess dao= new DataAccess();
	public rolesDAO(){
		}
	public ArrayList<roles> getListRoles() throws SQLException
	{		
		String sql="select* from roles";		
		ResultSet rs= dao.getResultSet(sql);
		ArrayList<roles> list= new ArrayList<>();
		while(rs.next())
		{
			roles role=new roles();
			role.setRoleID(rs.getInt("RoleID"));
			role.setRoleName(rs.getString("RoleName"));
			list.add(role);
		}
		return list;
	}
	public Map<Integer,roles> getMapRole(){
		Map<Integer,roles> mapRole= new HashMap<Integer,roles>();	
		String sql="select* from roles";	
		try {
			ResultSet rs= dao.getResultSet(sql);
		
			while(rs.next())
			{
				roles role=new roles();
				role.setRoleID(rs.getInt("RoleID"));
				role.setRoleName(rs.getString("RoleName"));
				mapRole.put(role.getRoleID(), role);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mapRole;
	}
	public int getRoleID(String roleName) {
		try {
			ArrayList<roles> list= getListRoles();
			for(roles role :list ) {
				if(role.getRoleName().equals(roleName)) {
					return role.getRoleID();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;		
	}
	public static void main(String[] args) {
	    rolesDAO r=new rolesDAO();
		/*try {
			ArrayList<roles> list= r.getListRoles();
			System.out.println(list.get(0).getRoleName());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		/*Map<Integer, roles> map= r.getMapRole();
		System.out.print(map.get(1).getRoleID());*/
		System.out.println(r.getRoleID("QL Kì thi"));
	}
}
