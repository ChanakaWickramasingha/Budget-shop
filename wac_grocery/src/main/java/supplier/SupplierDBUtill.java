package supplier;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class SupplierDBUtill {

	private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    public static boolean isSuccess;

    // Insert a supplier record into the database
    public static boolean insertSupplier(String name, String email, String phone, String supItem, String img) {
        boolean isInsert = false;

        try {
            con = DBConnect.getConnection();  
            stmt = con.createStatement();

            String query = "INSERT INTO `supplier` VALUES (0, '" + name + "', '" + email + "', '" + phone + "', '" + supItem + "', '" + img + "')";
            int val = stmt.executeUpdate(query);  

            if (val > 0) {
                isInsert = true;
            } else {
                isInsert = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isInsert;
    }

    // Get all supplier records from the database
    public static List<Supplier> getAllSuppliers() {
        ArrayList<Supplier> suppliers = new ArrayList<>();

        try {
            con = DBConnect.getConnection(); 
            stmt = con.createStatement();
            String query = "SELECT * FROM `supplier`";  
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String phone = rs.getString(4);
                String supItem = rs.getString(5);
                String img = rs.getString(6);

                Supplier supplier = new Supplier(id, name, email, phone, supItem, img);
                suppliers.add(supplier);  // Add each supplier to the list
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return suppliers;
    }

    // Update a supplier record in the database
    public static boolean updateSupplier(int id, String name, String email, String phone, String supItem, String img) {
        try {
            con = DBConnect.getConnection();  
            stmt = con.createStatement();
            String query = "UPDATE `supplier` SET name='" + name + "', email='" + email + "', phone='" + phone + "', supItem='" + supItem + "', img='" + img + "' WHERE id='" + id + "'";
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

    // Delete a supplier record from the database
    public static boolean deleteSupplier(int id) {
        try {
            con = DBConnect.getConnection();  
            stmt = con.createStatement();
            String query = "DELETE FROM `supplier` WHERE id = '" + id + "'";
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
