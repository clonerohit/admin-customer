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

@WebServlet("/deleteCustByCust")
public class deleteCustByCust extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root"); // gets a new connection
	response.setContentType("text/html");
    int cid = Integer.parseInt(request.getParameter("customerID"));
  PreparedStatement st= c.prepareStatement("delete from customer where customerID = ?");
  st.setInt(1, cid);
  st.executeUpdate();
  int i = st.executeUpdate();
  if(i!=0)
  out.println("Deleting row...");
  else if (i==0)
  {
  out.println("<br>Row has been deleted successfully.");
  out.println("<html><body><br/><br/><a href='CustomerSuccess.jsp'>Go back to Dashboard</a></body></html>");
  }
}
catch (Exception e)
{
System.err.println(e.getMessage());
}	
	}
}
