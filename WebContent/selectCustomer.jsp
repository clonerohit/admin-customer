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
<%@include file="css/app_cust.css" %>
</style>
</head>

<body>

<jsp:include page="app_cust_header.jsp" />  
<jsp:include page="app_cust_sidebar.jsp" />  

<div class="topnav3" id="myTopnav3">
  <a href="#"><b>My Profile</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">

<% 
     String un = (String)session.getAttribute("ses_usern_cus"); 

     try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     PreparedStatement ps = conn.prepareStatement("SELECT * FROM employees where uname=?");
     ps.setString(1,un);

	 ResultSet rs = ps.executeQuery();
	
	 while(rs.next())
	 {
%>
	
<table cellspacing="0px" width="40%" id="registered_users">

<tr>
<td>Employee ID</td>
	<td><%= rs.getInt("eid") %></td>
</tr>

<tr>
<td>Username</td>
	<td><%= rs.getString("uname") %></td>	   
</tr>

<tr>
<td>Email</td>
	<td><%= rs.getString("email") %></td>
</tr>

<tr>
<td>Password</td> 
	<td><%= rs.getString("pass") %></td>
</tr>

<tr>

<td>DOB</td> 
	<td><%= rs.getInt("dob") %></td>
</tr>

<tr>
<td>Phone</td>
	<td><%= rs.getInt("phone") %></td>
</tr>

<tr>
<td>City</td>
    <td><%= rs.getString("city") %></td>
</tr>

<tr>
<td>Department</td>
    <td><%= rs.getString("dep") %></td>
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
