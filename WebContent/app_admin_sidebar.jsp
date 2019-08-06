<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Sidebar</title>
</head>
<body>

<% 
String un = (String)session.getAttribute("ses_usern_admin"); 
%>

<div class="sidenav">

  <div id="side_in">
  <img id="admin_img" src="images/admin_png_17238.jpg">
  
  <p id="admin_name"><b><a id="profile_link" href="myprofile_admin.jsp"><% out.println(un); %></b></a>Administrator</p>
</div>

  <hr>
  
<ul style="list-style:  none; margin-left:-40px; line-height:25px; font-size:14px; font-family:helvetica; ">
  <li id="li_head"  style="padding-left:20px;"><b><a href="viewAdminByAdmin.jsp">View Admins</a></b></li>
  <li id="li_head"  style="padding-left:20px;"><b><a href="selectCustByCust.jsp">View Customers</a></b></li>
</ul>

</div>

</body>
</html>