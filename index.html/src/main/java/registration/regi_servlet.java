package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regi_servlet
 */
@WebServlet("/regi_servlet")
public class regi_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name= request.getParameter("uname");
		String Email_id= request.getParameter("uemail");
		String mobile_no= request.getParameter("umobno");
		String passwrd= request.getParameter("pass");
		RequestDispatcher dispatcher=null;
		Connection conn=null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/costumer_db","root","Pragati@123");
			PreparedStatement pst=conn.prepareStatement("insert into users(Name,Email_id,mobile_no,passwrd) values(?,?,?,?)");
			pst.setString(1,Name);
			pst.setString(2,Email_id);
			pst.setString(3,mobile_no);
			pst.setString(4,passwrd);
			
			int rowcount=pst.executeUpdate();
			dispatcher= request.getRequestDispatcher("regi.jsp");
			if(rowcount>0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request,response);  
			
	}catch (Exception e) {
		e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}



