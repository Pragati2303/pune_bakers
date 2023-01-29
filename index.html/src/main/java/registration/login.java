package registration;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class login
 */
@WebServlet(name = "login_servlet", urlPatterns = { "/login_servlet" })
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void dopost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Email_id=request.getParameter("username");
		String passwrd=request.getParameter("pass");
		Connection conn=null;
		
		//HttpSession httpSession = request.getSession();
		RequestDispatcher dispatcher=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/costumer_db","root","Pragati@123");
			PreparedStatement pst=conn.prepareStatement("select * from users where Email_id=? and passwrd=?");
			
			pst.setString(1,Email_id);
			pst.setString(2,passwrd);
			
			ResultSet rs=pst.executeQuery();
			if (rs.next()) {
				request.setAttribute("name",rs.getString("Email_id"));
				dispatcher=request.getRequestDispatcher("login.jsp");	
			}else {
				request.setAttribute("status", "failed");
				dispatcher=request.getRequestDispatcher("regi.jsp");
			}
			dispatcher.forward(request,response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
