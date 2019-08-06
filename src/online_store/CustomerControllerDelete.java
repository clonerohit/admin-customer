package online_store;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerControllerDelete")
public class CustomerControllerDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CustomerControllerDelete() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int id = Integer.parseInt(request.getParameter("Employee ID"));
         request.setAttribute("u_id",id);
         request.getRequestDispatcher("deleteCustByAdmin.jsp").forward(request, response); 
	}
}
