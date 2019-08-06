<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Customer</title>
<style>
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
  <a href="viewAdminByAdmin.jsp"><b>Edit Customer</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">

<form method="post" action="updateCustByAdmin">

<table cellspacing="0px" width="40%" id="registered_users">

<tr>
  <td>Customer ID</td><td><input id="input" type="text" name="customerID" value=<%= request.getAttribute("u_id") %>></td>
</tr>
<tr>
  <td>Enter New Username</td><td><input type="text" name="new_username"  value=<%= request.getAttribute("u_name") %>></td>
</tr>
<tr>
  <td>Enter New Email</td><td><input type="email" name="new_email"  value=<%= request.getAttribute("u_em") %>></td>
</tr>

<tr>
  <td>Enter New Contact</td><td><input type="text" name="new_phone"  value=<%= request.getAttribute("u_phone") %>></td>
</tr>
<tr>
  <td>Enter New City</td><td><input type="text" name="new_city"  value=<%= request.getAttribute("u_city") %>></td>
</tr>
<tr>
  <td>Enter New Occupation</td><td><input type="text" name="new_occupation"  value=<%= request.getAttribute("u_occupation") %>></td>
</tr>

</table>

<input id="sub_button" type="submit" value="Update"></td>

</form>
</div>

</body>
</html>