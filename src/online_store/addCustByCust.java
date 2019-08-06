package online_store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addCustByCust")
public class addCustByCust extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{ try {
		 
		  Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root"); // gets a new connection
	  
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
        int cid = Integer.parseInt(request.getParameter("customerID"));
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String city = request.getParameter("city");
		String occ = request.getParameter("occupation");
		
		String query = "insert into customer values('" +cid+ "', '" +uname+ "', '" +email+ "', '" +pass+ "','" +phone+ "', '" +city+"','" +occ+"')"; 

      PreparedStatement stmt = c.prepareStatement(query);
      int x = stmt.executeUpdate(query); 
      if (x > 0) {            
        out.println("Added Successfully...");
        out.println("<html><body><br/><br/><a href='AdminSuccess.jsp'>Go back to Dashboard</a></body></html>");

      }
      else         
      {
	   out.println("Error...");
      }}
    catch (Exception e)
    {
      System.err.println(e.getMessage());
    }
   
    }
	
}
