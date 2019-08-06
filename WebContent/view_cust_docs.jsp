<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
<%@ include file="css/app_cust.css"%>
</style>
	
<script>
    function confirmDelete() {
	var answer=confirm("Confirm Delete");
	if (answer==true)
	  {
	    response.sendRedirect("view_cust_docs.jsp");
	    return false;
	  }
	else
	  {
	    return false;
	  }
	}
</script>
</head>
<body>

<jsp:include page="app_cust_header.jsp" />
<jsp:include page="app_cust_sidebar.jsp" />


<div class="topnav3" id="myTopnav3">
  <a href="#"><b>My Documents</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">
<br/>
<br/>
<a id="sub_button" href="add_cust_docs.jsp">+ Click to add a new document</a>

<table cellspacing="0px" width="70%" id="registered_users">

<tr>
   <th>Document</th>
   <th>Document type</th> 
   <th>Remarks</th>
   <th>Action</th>
</tr>

<%   
    


     try{
    	 String somestr = (String) (request.getAttribute("uname")) ;
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     PreparedStatement ps = conn.prepareStatement("SELECT * FROM customer_doc where username=?");
     ps.setString(1,somestr);
	 ResultSet rs = ps.executeQuery();
	
   	while(rs.next())
	{
%>
	

		
<tr>
	<td><%= rs.getString("file_name") %></td>	   
	<td><%= rs.getString("content_type") %></td>
	<td><%= rs.getString("remarks") %>

	<td><a id="action" href="DownloadServlet?Filename=<%=rs.getString("file_name")%>">Download</a>
	<a id="action" onclick="return confirmDelete()" href="DocDeleteServlet?Filename=<%=rs.getString("file_name")%>">Delete</a></td>

	
</tr>

<%
	}
%>
	
</table>

 <%
       rs.close();
       ps.close();
       conn.close();
      }
    catch(Exception e)
    {
       e.printStackTrace();
    }
%>


</div>

</body>
</html>