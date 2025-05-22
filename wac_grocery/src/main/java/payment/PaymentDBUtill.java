package payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import product.DBConnect;

public class PaymentDBUtill {
	private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    public static boolean isSuccess;

    // Insert a payment record into the database
    public static boolean insertPayment(String type, String cno, String exp, String cvv, String img, int cid) {
        boolean isInsert = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String query = "INSERT INTO `payment` VALUES (0, '" + type + "', '" + cno + "', '" + exp + "', '" + cvv + "', '" + img + "', '" + cid + "')";
            int val = stmt.executeUpdate(query);  // Execute the insert query

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

    // Get all payment records from the database
    public static List<Payment> getAllPayments(int cid) {
        ArrayList<Payment> payments = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "SELECT * FROM `payment` WHERE cid='" + cid + "'";
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                int id = rs.getInt(1);
                String type = rs.getString(2);
                String cno = rs.getString(3);
                String exp = rs.getString(4);
                String cvv = rs.getString(5);
                String img = rs.getString(6);

                Payment payment = new Payment(id, type, cno, exp, cvv, img);
                payments.add(payment);  // Add each payment to the list
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return payments;
    }

    // Update a payment record in the database
    public static boolean updatePayment(int id, String type, String cno, String exp, String cvv, String img) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "UPDATE `payment` SET type='" + type + "', cno='" + cno + "', exp='" + exp + "', cvv='" + cvv + "', img='" + img + "' WHERE id='" + id + "'";
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

    // Delete a payment record from the database
    public static boolean deletePayment(int id) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query = "DELETE FROM `payment` WHERE id = '" + id + "'";
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
