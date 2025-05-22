package order;

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
 * Servlet implementation class OrderUpdateServlet
 */
@WebServlet("/OrderUpdateServlet")

public class OrderUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderUpdateServlet() {
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
		
		int id = Integer.parseInt(request.getParameter("oid"));
		String email = request.getParameter("email");
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");
        
        String total= request.getParameter("total");
        
        HttpSession session = request.getSession();
        int cid = (int) session.getAttribute("uid");
        
        boolean isSuccess;

        
        
        Order o1 = new Order(id, cid, email, phone, total, adress );
        
        isSuccess = OrderDBUtill.updateOrder(o1);
        if (isSuccess) {
        	// eventsList is the list of events fetched from the database
        	List <Order> odr = OrderDBUtill.getAllOrders(cid);
    		request.setAttribute("pay", odr);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("orderlist.jsp");
            dis.forward(request, response);
        } else {
            // Handle insertion failure
            response.sendRedirect("error.jsp");
        }
	}
	
	


}
