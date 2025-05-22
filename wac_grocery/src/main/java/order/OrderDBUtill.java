package order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import product.DBConnect;

public class OrderDBUtill {
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    public static boolean isSuccess;

    // Insert an order record into the database
    public static boolean insertOrder(Order order) {
        boolean isInsert = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String query = "INSERT INTO `orders` (uid, email, phone, total, adress) " +
                           "VALUES (" + order.getUid() + ", '" + order.getEmail() + "', '" + order.getPhone() + "', '" + order.getTotal() + "', '" + order.getAdress() + "')";
            int val = stmt.executeUpdate(query);  // Execute the insert query

            if (val > 0) {
                isInsert = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();  // Close database resources
        }

        return isInsert;
    }

    // Get all order records from the database
    public static List<Order> getAllOrders(int usid) {
        ArrayList<Order> orders = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "SELECT * FROM `orders` where uid='"+usid+"'";
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                int oid = rs.getInt("oid");
                int uid = rs.getInt("uid");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String total = rs.getString("total");
                String adress = rs.getString("adress");

                Order order = new Order(oid, uid, email, phone, total, adress);
                orders.add(order);  // Add each order to the list
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();  // Close database resources
        }

        return orders;
    }

    // Update an order record in the database
    public static boolean updateOrder(Order order) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "UPDATE `orders` SET uid='" + order.getUid() + "', email='" + order.getEmail() + "', phone='" + order.getPhone() + "', total='" + order.getTotal() + "', adress='" + order.getAdress() + "' WHERE oid='" + order.getOid() + "'";
            int val = stmt.executeUpdate(query);

            isSuccess = val > 0;  // Set isSuccess based on update result
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();  // Close database resources
        }

        return isSuccess;
    }

    // Delete an order record from the database
    public static boolean deleteOrder(int oid) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "DELETE FROM `orders` WHERE oid = '" + oid + "'";
            int val = stmt.executeUpdate(query);

            isSuccess = val > 0;  // Set isSuccess based on delete result
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();  // Close database resources
        }

        return isSuccess;
    }

    // Method to close database resources
    private static void closeResources() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

