<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Admin</title>
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
  <a href="#"><b>Delete Admin</b></a>
</div>

<div style="margin-left:200px; margin-top:0px;">

<script>
    function confirmDelete() {
	var answer=confirm("Confirm Delete");
	if (answer==true)
	  {
	    response.sendRedirect("deleteAdminByAdmin");
	    return false;
	  }
	else
	  {
	    return false;
	  }
	}
</script>

<form method="post" action="deleteAdminByAdmin">

<table width="30%" cellspacing="0px" id="registered_users">

<tr>
<td>Admin ID</td><td><input type="text" name="adminID" value=<%= request.getAttribute("u_id") %>></td>
</tr>

</table>

<input id="sub_button" type="submit" value="Delete" onclick="{return confirmDelete();}">

</form>

</div>
</body>
</html>
