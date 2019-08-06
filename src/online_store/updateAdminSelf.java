package online_store;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateAdminSelf")
public class updateAdminSelf extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public updateAdminSelf() {
        super();
    }

    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int id = Integer.parseInt(request.getParameter("Admin ID"));
		String uname = request.getParameter("Username");
		String em = request.getParameter("Email");
		String pass = request.getParameter("Password");
		int phone = Integer.parseInt(request.getParameter("Phone"));
		
		request.setAttribute("u_id",id);
		request.setAttribute("u_name",uname);
		request.setAttribute("u_em",em);
		request.setAttribute("u_pass",pass);
		request.setAttribute("u_phone",phone);
		
		request.getRequestDispatcher("updateAdminByAdmin.jsp").forward(request, response); 
		
	}

}
