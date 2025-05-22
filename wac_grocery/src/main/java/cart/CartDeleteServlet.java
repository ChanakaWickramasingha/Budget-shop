package cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import payment.Payment;
import payment.PaymentDBUtill;

/**
 * Servlet implementation class CartDeleteServlet
 */
@WebServlet("/CartDeleteServlet")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int id = Integer.parseInt(request.getParameter("id")) ;
		
		boolean isDeleted = CartDBUtill.deleteItem(id);
		HttpSession session = request.getSession();
        int cid = (int) session.getAttribute("uid");
		
		if(isDeleted) {
			
			List <Cart> pay = CartDBUtill.getCartByUserId(cid);
			request.setAttribute("pay", pay);
			
			RequestDispatcher dis = request.getRequestDispatcher("cart.jsp");
	        dis.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
