package user;

import java.io.IOException;
import java.util.List;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
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
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
        String pw = request.getParameter("pw");
        boolean isTrue;
        
        isTrue = UserDBUtill.validate(email, pw);
        
        if (isTrue) {
        	List<User> user = UserDBUtill.getOneUser(email);
        	
        	HttpSession session = request.getSession();
            session.setAttribute("uemail", email);
            session.setAttribute("uid", user.get(0).getId());
            
            
            if (email.equals("admin@gmail.com") && pw.equals("123")) {
            	
            	RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
                dis.forward(request, response);
            
        } else {
        	RequestDispatcher dis = request.getRequestDispatcher("HomePage.jsp");
            dis.forward(request, response);
            
        }
    	}
        
        
        else {
            request.setAttribute("status", "failed");
            RequestDispatcher dis = request.getRequestDispatcher("signin.jsp");
            dis.forward(request, response);}
            
        }

}
