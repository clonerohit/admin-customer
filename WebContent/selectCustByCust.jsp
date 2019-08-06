<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
<style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/fo<link rel="stylesheet" href="css/app_admin.css">
nt-awesome.min.css">
<%@include file="css/app_admin.css" %>
</style>
</head>

<body>

<% 
String un = (String)session.getAttribute("ses_usern_admin"); 
%>

<jsp:include page="app_admin_header.jsp" />  
<jsp:include page="app_admin_sidebar.jsp" />  

<div class="topnav3" id="myTopnav3">
  <a href="selectCustByCust.jsp"><b>► View Customers</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">

<table cellspacing="0px" width="80%" id="registered_users">
<tr>
<th>Employee ID</th>
<th>Username</th>
<th>Email</th>
<th>DOB</th>
<th>Phone</th>
<th>City</th>
<th>Department</th>
<th>Action</th>
</tr>

<%
    try{ 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     PreparedStatement ps = conn.prepareStatement("SELECT * FROM employee");

	 ResultSet rs = ps.executeQuery();
	
	 while(rs.next())
	 {
%>

<tr>
<td><%= rs.getInt("employeeID") %></td>
<td><%= rs.getString("username") %></td>
<td><%= rs.getString("email") %></td>
<td><%= rs.getString("dob") %></td>
<td><%= rs.getInt("phone") %></td>
<td><%= rs.getString("city") %></td>
<td><%= rs.getString("department") %></td>

<td>
<a id="action" href="CustomerControllerDelete?Employee+ID=<%=rs.getInt("employeeID")%>">Delete</a></td>

	
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











