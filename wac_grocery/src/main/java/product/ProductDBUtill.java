package product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import product.DBConnect;


public class ProductDBUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSucess;
	public static int id;
	
	
public static boolean insertProduct(String name, String price, String des, String img, String stock) {
		
		boolean isInsert = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String query = "insert into `product` values(0, '"+name+"', '"+price+"', '"+des+"', '"+img+"', '"+stock+"')";
			int val = stmt.executeUpdate(query); 
			
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

public static List<Product> getAllProduts() {
	
	ArrayList<Product> lev = new ArrayList<>();
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String query = "select * from `product`";
		rs = stmt.executeQuery(query);
		
		while (rs.next()) {
			id = rs.getInt(1);
			String name = rs.getString(2);
			String price = rs.getString(3);
			String des = rs.getString(4);
			String img = rs.getString(5);
			String stock = rs.getString(6);
		
			
			Product c1 = new Product(id, name, price, des, img, stock);
			
			lev.add(c1);
		}
	}

	catch (Exception e) {
		e.printStackTrace();
	}
	
	return lev;
}

public static boolean updateProduct(int id, String name, String price, String des, String img, String stock) {
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String query = "update `product` set name='"+name+"', price='"+price+"', des='"+des+"',  img='"+img+"', stock='"+stock+"'" 
				+ "where id='"+id+"'";
		int rs = stmt.executeUpdate(query);
		
		if (rs > 0) {
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

public static boolean deleteProduct(int id) {
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String query = "delete from `product` where id = '"+id+"'";
		int rs = stmt.executeUpdate(query);
		
		if (rs > 0) {
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
	

}
