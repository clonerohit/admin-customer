<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Sidebar</title>
</head>

<body>

<% 
String un = (String)session.getAttribute("ses_usern_cus");

request.setAttribute("uname",un);

%>

<div class="sidenav">
  
  <div id="side_in">
  
  <img id="customer_img" src="images/e62e410d9c.png">
  
  <p id="customer_name"><b><% out.println(un); %></b><br/>Employee</p>
</div>
  
  <hr>
  
<ul style="list-style:  none; margin-left:-40px; line-height:25px; font-size:14px; font-family:helvetica;">
  <li id="li_head"  style="padding-left:20px;"><b><a href="selectCustomer.jsp">View Profile</a></b></li>
  <li id="li_head"  style="padding-left:20px;"><b><a href="updateCustController">Edit Profile</a></b></li>
  <li id="li_head"  style="padding-left:20px;"><b><a href="view_cust_docs.jsp">View Documents</a></b></li>
</ul>

</div>

</body>
</html>