package online_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateCustController")
public class updateCustController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public updateCustController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String un = (String)session.getAttribute("ses_usern_cus"); 
		try{
			 Class.forName("com.mysql.jdbc.Driver");
		     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
		     PreparedStatement ps = conn.prepareStatement("SELECT * FROM employees where uname=?");
		     ps.setString(1,un);
			 ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{	
			request.setAttribute("u_id",rs.getInt("eid"));
				request.setAttribute("u_name",rs.getString("uname"));
				request.setAttribute("u_em",rs.getString("email"));
				request.setAttribute("u_pass",rs.getString("pass"));
				request.setAttribute("u_dob",rs.getInt("dob"));
				request.setAttribute("u_phone",rs.getInt("phone"));
				request.setAttribute("u_city",rs.getString("city"));
				request.setAttribute("u_department",rs.getString("dep"));		
				request.getRequestDispatcher("updateCustByCust.jsp").forward(request, response); 					
			}
		
		    rs.close();
		    ps.close();
		    conn.close();
		    }
		catch(Exception e)
		{
		    e.printStackTrace();
		    }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
