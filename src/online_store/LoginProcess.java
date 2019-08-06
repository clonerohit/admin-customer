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


@WebServlet("/LoginProcess")
public class LoginProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginProcess() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String usern = request.getParameter("username");
		String pw = request.getParameter("password");
		String role = request.getParameter("role");
        
		HttpSession session = request.getSession(); 
		
		if(role.equals("Administrator")) {     	
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
	            PreparedStatement ps = con.prepareStatement("select * from admin where username=? and password=?");	
	            ps.setString(1, usern);
	            ps.setString(2, pw);
	            ResultSet rs = ps.executeQuery();
	            
	            if(rs.next())
	            {   
	            	session.setAttribute("ses_usern_admin", usern);            	
	            	response.sendRedirect("AdminSuccess.jsp");
	            	return;
	            }
	            else {
	            	response.sendRedirect("LoginForm.jsp");
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
	            PreparedStatement ps = con.prepareStatement("select * from employees where uname=? and pass=?");	
	            ps.setString(1, usern);
	            ps.setString(2, pw);
	            ResultSet rs = ps.executeQuery();	            
	            if(rs.next())
	            {
	            	session.setAttribute("ses_usern_cus", usern);
	            	response.sendRedirect("CustomerSuccess.jsp");
	            	return;
	            }
	            else {
	            	response.sendRedirect("LoginForm.jsp");
	            	return;
	            }	                      	            
			}catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}							
		}
		}}
	
