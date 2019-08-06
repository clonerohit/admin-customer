package online_store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateAdminByAdmin")
public class updateAdminByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   try
		    {
		      response.setContentType("text/html");
		      PrintWriter out = response.getWriter();
		      Class.forName("com.mysql.jdbc.Driver");
				Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root"); // gets a new connection
				 int aid = Integer.parseInt(request.getParameter("adminID"));
					String uname = request.getParameter("new_username");
					String email = request.getParameter("new_email");
					String pass = request.getParameter("new_password");
					int phone = Integer.parseInt(request.getParameter("new_phone"));
		             PreparedStatement ps = c.prepareStatement("UPDATE admin  SET username = ?, email=?, password=?, phone=?  WHERE adminID="+aid+"");
				
					ps.setString(1,uname);
					ps.setString(2,email);
					ps.setString(3,pass);
					ps.setInt(4,phone);
					int i = ps.executeUpdate();
					if(i > 0)
					{
						response.sendRedirect("updateAdminSuccess.jsp");
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

