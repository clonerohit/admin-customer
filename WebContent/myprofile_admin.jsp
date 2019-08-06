<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
<style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@include file="css/app_admin.css" %>
</style>
</head>

<body>

<jsp:include page="app_admin_header.jsp" />  
<jsp:include page="app_admin_sidebar.jsp" />  


<% 
     String un = (String)session.getAttribute("ses_usern_admin"); 

%>

<% 
     

     try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     PreparedStatement ps = conn.prepareStatement("SELECT * FROM admin where username=?");
     ps.setString(1,un);

	 ResultSet rs = ps.executeQuery();
	
	 while(rs.next())
	 {
%>

<div style="margin-left:200px; margin-top:0px;">
<br/>
<a id="sub_button" href="updateAdminSelf?Admin ID=<%=rs.getInt("adminID") %>&Username=<%=rs.getString("username") %>&Email=<%=rs.getString("email") %>&Password=<%=rs.getString("password") %>&Phone=<%=rs.getInt("phone") %>">Edit your profile</a>

	
<table cellspacing="0px" width="40%" id="registered_users">

<tr>
<td>Admin ID</td>
	<td><%= rs.getInt("adminID") %></td>
</tr>

<tr>
<td>Username</td>
	<td><%= rs.getString("username") %></td>	   
</tr>

<tr>
<td>Email</td>
	<td><%= rs.getString("email") %></td>
</tr>

<tr>
<td>Password</td> 
	<td><%= rs.getString("password") %></td>
</tr>

<tr>
<td>Phone</td>
	<td><%= rs.getInt("phone") %></td>
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
