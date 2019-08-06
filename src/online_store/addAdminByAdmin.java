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

@WebServlet("/addAdminByAdmin")
public class addAdminByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;  

    public addAdminByAdmin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    { try {
	response.setContentType("text/html");
	 PrintWriter out = response.getWriter();
	 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root"); // gets a new connection
	
	response.setContentType("text/html");
    int aid = Integer.parseInt(request.getParameter("adminID"));
	String uname = request.getParameter("username");
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	int phone = Integer.parseInt(request.getParameter("phone"));
	
	String query = "insert into admin values('" +aid+ "', '" +uname+ "', '" +email+ "', '" +pass+ "','" +phone+ "')"; 

     PreparedStatement stmt = c.prepareStatement(query);
     int x = stmt.executeUpdate(query); 
     if (x > 0) {            
     response.sendRedirect("adminAddedSuccess.jsp");   
     return;
     }
     else         
	out.println("Error...");
      }

     catch (Exception e)
      {
     System.err.println(e.getMessage());
     }}}
}
