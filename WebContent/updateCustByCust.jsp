<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Customer</title>
<style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@include file="css/app_cust.css" %>
</style>
</head>

<body>

<% 
String un = (String)session.getAttribute("ses_usern_cus"); 
%>

<jsp:include page="app_cust_header.jsp" />  
<jsp:include page="app_cust_sidebar.jsp" />  

<div class="topnav3" id="myTopnav3">
  <a href="#"><b>Edit Profile</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">

<form method="post" action="updateCustByCust">

<table cellspacing="0px" width="30%" id="registered_users">

<tr>
   <td>Employee ID</td><td><input id="input" type="text" name="employeeID"  value="<%= request.getAttribute("u_id") %>" ></td>
</tr>
<tr>
   <td>Enter New Username</td><td><input type="text" name="new_username"   value="<%= request.getAttribute("u_name") %>"></td>
</tr>
<tr>
   <td>Enter New Email</td><td><input type="email" name="new_email"   value="<%= request.getAttribute("u_em") %>"></td>
</tr>
<tr>
   <td>Enter New Password</td><td><input type="text" name="new_password"   value="<%= request.getAttribute("u_pass") %>"></td>
</tr>
<tr>
   <td>Enter New DOB</td><td><input type="text" name="new_dob"   value="<%= request.getAttribute("u_dob") %>"></td>
</tr>
<tr>
   <td>Enter New Contact</td><td><input type="text" name="new_phone"  value="<%= request.getAttribute("u_phone") %>"></td>
</tr>
<tr>
  <td>Enter New City</td><td><input type="text" name="new_city"   value="<%= request.getAttribute("u_city") %>"></td>
</tr>
<tr>
  <td>Enter New Department</td><td><input type="text" name="new_department"   value="<%= request.getAttribute("u_department") %>"></td>
</tr>

</table>

<input id="sub_button" type="submit" value="Update"></td>

</form>
</div>

</body>
</html>
