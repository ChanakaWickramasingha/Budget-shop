package supplier;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/grocerry_store";
	private static String user = "root";
	private static String pass = "amantha";
	private static Connection con;
	
public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
		}
		
		catch (Exception e) {
			System.out.println("Database Connection Unsucess!");
		}
		
		return con;
	}


}
