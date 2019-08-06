<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<div  style="margin-left:200px; margin-top:0px;">

<% int total_admins = 0;

    try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     PreparedStatement ps = conn.prepareStatement("select count(*) from admin");
	 ResultSet rs = ps.executeQuery();
	
	while(rs.next())
	{
        total_admins = rs.getInt("count(*)");
	}
 
    rs.close();
    ps.close();
    conn.close();
    }
   catch(Exception e)
    {
    e.printStackTrace();
    }
%>

<h2 id="size">Total Admins : <% out.println(total_admins); %></h2>

<% int total_customers = 0;

   try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     PreparedStatement ps = conn.prepareStatement("select count(*) from employee");
	 ResultSet rs = ps.executeQuery();
	
	while(rs.next())
	{
        total_customers = rs.getInt("count(*)");
	}
 
    rs.close();
    ps.close();
    conn.close();
    }
   catch(Exception e)
    {
    e.printStackTrace();
    }
%>

<h2 id="size">Total Employees : <% out.println(total_customers); %></h2>

</div>

</body>
</html>

