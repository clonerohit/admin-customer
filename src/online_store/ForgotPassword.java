package online_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ForgotPassword() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {     
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String role = request.getParameter("role");
        
		HttpSession session = request.getSession(); 
		
		if(role.equals("Administrator")) {     	
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
	            PreparedStatement ps = con.prepareStatement("select * from admin where email=? and phone=?");	
	            ps.setString(1, email);
	            ps.setString(2, phone);
	            ResultSet rs = ps.executeQuery();
	            
	            if(rs.next())
	            {   
	            	session.setAttribute("ses_email_admin", email);
	            	response.sendRedirect("AdminForgotPassSuccess.jsp");
	            	return;
	            }
	            else {
	            	response.sendRedirect("AdminForgotPassFail.jsp");
	            	return;
	            }         
			}catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}		
		else if(role.equals("Employee"))
		{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
	            PreparedStatement ps = con.prepareStatement("select * from employees where email=? and phone=?");	
	            ps.setString(1, email);
	            ps.setString(2, phone);
	            ResultSet rs = ps.executeQuery();            
	            if(rs.next())
	            {
	            	session.setAttribute("ses_email_cus", email);
	            	response.sendRedirect("CustomerForgotPassSuccess.jsp");
	            	return;
	            }
	            else {
	            	response.sendRedirect("CustomerForgotPassFail.jsp");
	            	return;
	            }	                      	          
			}catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}						
		}		
	}
}
