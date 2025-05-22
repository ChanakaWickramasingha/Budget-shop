package product;

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


/**
 * Servlet implementation class ProductInsertServlet
 */
@WebServlet("/ProductInsertServlet")
@MultipartConfig
public class ProductInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInsertServlet() {
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
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
        String price = request.getParameter("price");
        String des = request.getParameter("des");
        
        String stock= request.getParameter("stock");
        
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
        
        isSuccess = ProductDBUtill.insertProduct(name, price, des, img, stock);
        
        if (isSuccess) {
        	List <Product> products = ProductDBUtill.getAllProduts();
    		request.setAttribute("products", products);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
            dis.forward(request, response);
        
       } else {response.sendRedirect("error.jsp");}
        
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
