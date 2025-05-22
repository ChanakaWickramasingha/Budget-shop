package user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import user.DBConnect;

public class UserDBUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSucess;
	public static int id;

	public static boolean signUp(String email, String pw) {
		
		boolean isInsert = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String query = "insert into `user` values(0, '"+email+"', '"+pw+"')";
			int val = stmt.executeUpdate(query); //this will return the integer value
			
			if (val > 0) {
				isInsert = true;
			}
			else {
				isInsert = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isInsert;
	}
	
	public static boolean validate(String email, String pw) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String query = "select * from `user` where email='"+email+"' and pw='"+pw+"'";
			
			rs = stmt.executeQuery(query);
			
			if (rs.next()) {
				isSucess = true;
			}
			
			
			else {
				isSucess = false;
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSucess;
	}

	public static List<User> getOneUser(String email) {
		
		ArrayList<User> cus = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String query = "select * from user where email='"+email+"'";
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				id = rs.getInt(1);
				String emaill = rs.getString(2);
				String pw = rs.getString(3);
				
				
				User c1 = new User(id, emaill, pw);
				
				cus.add(c1);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}

}
