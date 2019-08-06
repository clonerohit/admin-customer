<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Admin</title>
<style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@include file="css/app_admin.css" %>
</style>
</head>

<body>

<jsp:include page="app_admin_header.jsp" />  
<jsp:include page="app_admin_sidebar.jsp" />  

<div class="topnav3" id="myTopnav3">
  <a href="#"><b>► Add Admin</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">

<form method="post" action="addAdminByAdmin">

<table cellspacing="0px" width="40%" id="registered_users">
<tr>
<td>Admin ID</td><td><input type="text" name="adminID" placeholder="Enter a new Admin ID" required></td>
</tr>
<tr>
<td>Username</td><td><input type="text" name="username" placeholder="Enter a username" required></td>
</tr>
<tr>
<td>Email</td><td><input type="email" name="email" placeholder="Enter a email" required></td>
</tr>
<tr>
<td>Password</td><td><input type="text" name="password" placeholder="Enter a password" required></td>
</tr>
<tr>
<td>Phone</td><td><input type="text" name="phone" placeholder="Enter a phone number" required></td>
</tr>
</table>

<input id="sub_button" type="submit" value="Submit">
</form>

</div>

</body>
</html>

