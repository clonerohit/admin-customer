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


@WebServlet("/DocDeleteServlet")
public class DocDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DocDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
	String fn = request.getParameter("Filename");
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	 Class.forName("com.mysql.jdbc.Driver");
     Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
	response.setContentType("text/html");
  PreparedStatement st= c.prepareStatement("delete from customer_doc where file_name = ?");
  st.setString(1, fn);
  st.executeUpdate();
  int i = st.executeUpdate();
  if(i!=0)
  out.println("Deleting row...");
  else if (i==0)
  {
response.sendRedirect("DocDeleteSuccess.jsp");
return;
  }
}
catch (Exception e)
{
System.err.println(e.getMessage());
}	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
