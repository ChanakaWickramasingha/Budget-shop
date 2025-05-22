package order;

import java.io.IOException;
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
 * Servlet implementation class OrderAddServlet
 */
@WebServlet("/OrderAddServlet")
public class OrderAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderAddServlet() {
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
		
		 HttpSession session = request.getSession();
	        int uid = (int) session.getAttribute("uid");
	        boolean isSuccess;
	        
		
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String total = request.getParameter("total");
		String adress = request.getParameter("adress");
		
		Order newOrder = new Order(uid, email, phone, total, adress);
		
		boolean isInserted = OrderDBUtill.insertOrder(newOrder);
		
		if (isInserted) {
			// Order insertion success: Redirect to a success page
			HttpSession sessions = request.getSession();
	        int cid = (int) sessions.getAttribute("uid");
	        
			List <Order> odr = OrderDBUtill.getAllOrders(cid);
			request.setAttribute("pay", odr);
			
			RequestDispatcher dis = request.getRequestDispatcher("orderlist.jsp");
	        dis.forward(request, response);
		} else {
			// Order insertion failed: Redirect to a failure page
			response.sendRedirect("order-failure.jsp");
		}
	}

}
