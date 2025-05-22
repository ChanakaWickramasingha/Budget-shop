package cart;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cart.DBConnect;

public class CartDBUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSuccess;
	public static int id;
	
	// Method to add an item to the cart
	public static boolean addToCart(int uid, String item, String itemid, String qty, String iprice) {
		boolean isInsert = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String query = "INSERT INTO `cart` VALUES(0, '" + uid + "', '" + item + "', '" + itemid + "', '" + qty + "', '" + iprice + "')";
			int val = stmt.executeUpdate(query); // This will return the integer value
			
			if (val > 0) {
				isInsert = true;
			} else {
				isInsert = false;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return isInsert;
	}

	// Method to get all cart items by user ID
	public static List<Cart> getCartByUserId(int uid) {
		List<Cart> cartItems = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			// Query to get cart items for the specified user ID
			String query = "select * from cart where userId='"+uid+"'";
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				int userId = rs.getInt(2);
				String item = rs.getString(3);
				String itemId = rs.getString(4);
				String qty = rs.getString(5);
				String iprice = rs.getString(6);
				
				// Create a Cart object and add it to the list
				Cart cartItem = new Cart(id, userId, item, itemId, qty, iprice);
				cartItems.add(cartItem);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cartItems;
	}
	
	public static boolean deleteItem(int id) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "DELETE FROM `cart` WHERE id = '" + id + "'";
            int rs = stmt.executeUpdate(query);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
