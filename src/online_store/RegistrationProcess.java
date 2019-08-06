package online_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationProcess")
public class RegistrationProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{ try {	 
		  Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
		response.setContentType("text/html");
        int eid = Integer.parseInt(request.getParameter("employeeID"));
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String dob = request.getParameter("dob");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String city = request.getParameter("city");
		String dep = request.getParameter("department");		
		String query = "insert into employees values('" +eid+ "', '" +uname+ "', '" +email+ "', '" +pass+ "', '" +dob+ "','" +phone+ "', '" +city+"','" +dep+"')"; 
        PreparedStatement stmt = c.prepareStatement(query);
        int x = stmt.executeUpdate(query); 
        if (x > 0) {            
    		response.sendRedirect("RegisterSuccess.jsp");
		return;   
        }
        else         
        response.sendRedirect("RegisterFail.jsp");
		return; } 
    catch (Exception e)
    {
      System.err.println(e.getMessage());
    } }
}
