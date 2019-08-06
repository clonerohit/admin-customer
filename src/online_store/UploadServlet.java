package online_store;

 
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/UploadServlet")
@MultipartConfig(maxFileSize = 16177215) 

public class UploadServlet extends HttpServlet {
  
	private static final long serialVersionUID = 1L;
    private String dbURL = "jdbc:mysql://localhost:3306/online_store";
    private String dbUser = "root";
    private String dbPass = "root";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
    	response.setContentType("text/html");
        PrintWriter out = response.getWriter();
    	
        InputStream inputStream = null; 
        
        Part filePart = request.getPart("inputFile");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();

        }     
        
       

        Connection conn = null;
        String message = null;         
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            String sql = "INSERT INTO customer_doc (username, file_name,content_type,file , remarks) values (?,?,?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            
            String un = request.getParameter("username"); 
            String rem = request.getParameter("remarks");
            String fn = request.getParameter("outputfile");
            String ext = request.getParameter("extension");
            
            statement.setString(1, un);
            statement.setString(2, fn);
            statement.setString(3, ext);
           
            if (inputStream != null) {
                statement.setBlob(4, inputStream);
            }
            
            statement.setString(5, rem);
            
             int row = statement.executeUpdate();
            if (row > 0) {
                message = "File Uploaded Successfully";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            request.setAttribute("Message", message);
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
        
    
        
	}

    }
