<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
<%@include file="css/app_loginpage.css" %>
</style>
</head>

<body>

<p id="h1">Servlets<b>&</b>JSP</p>

<form action="ForgotPassword" method="post">

<h2>Enter your details</h2>

<table>

  <tr>
  <td> <label>Email</label></td>
  <td><input name="email" type="email" placeholder="Enter email" required></td>
  </tr>

  <tr>
  <td> <label>Contact</label></td>
  <td><input name="phone" type="text" placeholder="Enter contact" required></td>
  </tr>
 
  <tr>
  <td> <label>Account type</label></td>
  <td><select name="role">
      <option value="Administrator">Administrator</option>
      <option value="Employee">Employee</option>
      </select>
  </td>
  </tr>
   
  <tr>
  <td><input type="submit" value="Submit"></td>
  </tr>
  
</table>
</form>

<div id="last">
<p id="link">Not registered ? <a href="RegistrationForm.jsp"><b>Signup here</b></a></p>
</div>

</body>
</html>