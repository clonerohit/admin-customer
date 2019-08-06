package online_store;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerControllerEdit")
public class CustomerControllerEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CustomerControllerEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int id = Integer.parseInt(request.getParameter("Employee ID"));
		String uname = request.getParameter("Username");
		String em = request.getParameter("Email");
		String dob = request.getParameter("DOB");
		int phone = Integer.parseInt(request.getParameter("Phone"));
		String city = request.getParameter("City");
		String department = request.getParameter("Department");
		
		request.setAttribute("u_id",id);
		request.setAttribute("u_name",uname);
		request.setAttribute("u_em",em);
		request.setAttribute("u_dob",dob);
		request.setAttribute("u_phone",phone);
		request.setAttribute("u_city",city);
		request.setAttribute("u_department",department);

		request.getRequestDispatcher("updateCustByAdmin.jsp").forward(request, response); 
		
	}
}
