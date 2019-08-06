<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Password Recovery</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
<%@include file="css/app_loginpage.css" %>
</style>
</head>

<body>

<p id="h1">Servlets<b>&</b>JSP</p>

<form>

<h2>Password Recovered</h2>

<%
try{ 
	 String email = (String)session.getAttribute("ses_email_admin"); 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_store", "root", "root");
     String pass = "SELECT * FROM admin where email=?";
     PreparedStatement ps = conn.prepareStatement(pass);

     ps.setString(1,email);
	 ResultSet rs = ps.executeQuery();
	
   	while(rs.next())
	{
%>

<h2 id="h2">Your Password for <%= rs.getString("email")%> is <%= rs.getString("password") %></h2><br/><br/>

<a id="last_try" href="LoginForm.jsp">Login Again</a>

<% 
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

</form>

</body>
</html>