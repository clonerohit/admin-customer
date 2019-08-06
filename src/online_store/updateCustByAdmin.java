package online_store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateCustByAdmin")
public class updateCustByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateCustByAdmin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
	    {
	      response.setContentType("text/html");
	      PrintWriter out = response.getWriter();
	      Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root"); // gets a new connection
		
			 int cid = Integer.parseInt(request.getParameter("customerID"));
				String uname = request.getParameter("new_username");
				String email = request.getParameter("new_email");
				String pass = request.getParameter("new_password");
				int phone = Integer.parseInt(request.getParameter("new_phone"));
				String city = request.getParameter("new_city");
				String occ = request.getParameter("new_occupation");
				PreparedStatement ps = c.prepareStatement("UPDATE customer  SET username = ?, email=?, password=?, phone=?, city=?, occupation=?  WHERE customerID="+cid+"");
                ps.setString(1,uname);
				ps.setString(2,email);
				ps.setString(3,pass);
				ps.setInt(4,phone);
				ps.setString(5, city);
				ps.setString(6, occ);
				int i = ps.executeUpdate();
				if(i > 0)
				{
                 response.sendRedirect("updateCustByAdminSuccess.jsp");
                 return;
				}
				else
				{
				out.print("There is a problem in updating Record.");
				} 
				}
				catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	}
}
