package supplier;

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
import javax.servlet.http.Part;

import payment.PaymentDBUtill;
/**
 * Servlet implementation class SupplierInsertServelet
 */
@WebServlet("/SupplierInsertServelet")
@MultipartConfig
public class SupplierInsertServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupplierInsertServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
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
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String supItem= request.getParameter("supItem");
        
        boolean isSuccess;
        
        // Define the save directory for images
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
        
        isSuccess = SupplierDBUtill.insertSupplier(name, email, phone, supItem, img);
        
        if (isSuccess) {
        	List <Supplier> supplier = SupplierDBUtill.getAllSuppliers();
    		request.setAttribute("supplier", supplier);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("supplierlist.jsp");
            dis.forward(request, response);} else {response.sendRedirect("error.jsp");}
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
