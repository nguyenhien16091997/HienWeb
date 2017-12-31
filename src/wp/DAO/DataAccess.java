package wp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataAccess {
	Connection conn;
	Statement sm;
	static final String driver = "com.mysql.jdbc.Driver";// hoÌ£c thuÃ´Ì£c
	static final String url = "jdbc:mysql://node5702-nguyenhienhongphuchonghung.ocs.opusinteractive.io/web_testonline?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull";
	static final String user = "root";// tÃªn mysql
	final String pwd = "IOAicg98424";// mÃ¢Ì£t khÃ¢Ì‰u mysql
// hAÌ€m khÆ¡Ì‰i taÌ£o 		
public DataAccess() {
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	try {
		conn = DriverManager.getConnection(url, user, pwd);
		sm = conn.createStatement(); //
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
}
public ResultSet getResultSet(String sql) {
	
// rs laÌ€ tÆ°Ì€ng doÌ€ng trong baÌ‰ng csdl bÄƒÌ�t Ä‘Ã¢Ì€u tÆ°Ì€ doÌ€ng trÆ°Æ¡Ì�c doÌ€ng 1
	try {		
		return sm.executeQuery(sql);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return null;
}
public  boolean updateData(String sql) {
	boolean f;
	sm = null;
	try {
		sm = conn.createStatement();
		sm.executeUpdate(sql);// thá»±c hiá»‡n cÃ¢u lá»‡nh sql
		f = true;
	} catch (SQLException e) {
		e.printStackTrace();
		f = false;
	}

	return f;
}

}
