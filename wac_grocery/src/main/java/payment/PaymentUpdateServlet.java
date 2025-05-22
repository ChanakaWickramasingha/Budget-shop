package payment;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;



/**
 * Servlet implementation class PaymentUpdateServlet
 */
@WebServlet("/PaymentUpdateServlet")
@MultipartConfig
public class PaymentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String price = request.getParameter("type");
        String cno = request.getParameter("cno");
        String exp = request.getParameter("exp");
        HttpSession session = request.getSession();
        int cid = (int) session.getAttribute("uid");
        
        String cvv= request.getParameter("cvv");
        
        boolean isSuccess;
        
        String appPath = request.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + "images";

        // Create the save directory if it does not exist
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        // Initialize imageUrl to empty string
        String img = "";

        // Iterate through the parts of the multipart request
        for (Part part : request.getParts()) {
            // Extract the file name from the part
            String fileName = extractFileName(part);
            // If the file name is not empty, save the file to the images directory
            if (!fileName.equals("")) {
                part.write(savePath + File.separator + fileName);
                img = "images/" + fileName; // Set the imageUrl to the path where the file is saved
            }
        }
        
        isSuccess = PaymentDBUtill.updatePayment(id, price, cno, exp, cvv, img);
        if (isSuccess) {
        	// eventsList is the list of events fetched from the database
        	List <Payment> pay = PaymentDBUtill.getAllPayments(cid);
    		request.setAttribute("pay", pay);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("paymentlist.jsp");
            dis.forward(request, response);
        } else {
            // Handle insertion failure
            response.sendRedirect("error.jsp");
        }
	}
	
	private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";

}

}
