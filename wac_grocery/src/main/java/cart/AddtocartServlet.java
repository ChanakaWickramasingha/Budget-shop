package cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddtocartServlet
 */
@WebServlet("/AddtocartServlet")
public class AddtocartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtocartServlet() {
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
		 response.setContentType("text/html");
		 
		 HttpSession session = request.getSession();
	        int uid = (int) session.getAttribute("uid");
		 
	
		 String item = request.getParameter("pname");
		 String itemid = request.getParameter("itemid");
	     String qty = request.getParameter("qty");
	     String iprice =request.getParameter("iprice");
	     
	     Cart crt = new Cart(uid, item, itemid, qty, iprice);
	     
	     boolean isSucess = CartDBUtill.addToCart(uid, item, itemid, qty, iprice);
	     
	     if (isSucess) {
	    	 List <Cart> pay = CartDBUtill.getCartByUserId(uid);
	 		request.setAttribute("pay", pay);
	 		
	 		RequestDispatcher dis = request.getRequestDispatcher("cart.jsp");
	         dis.forward(request, response);
	        } else {response.sendRedirect("error.jsp");
	        }
	}

}
