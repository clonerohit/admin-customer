<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>onlineStore</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
<%@include file="css/app_loginpage.css" %>
</style>
</head>

<body>

<p id="h1">Servlets<b>&</b>JSP</p>

<form action="LoginProcess" method="post">

<h2>Login</h2>

<table>
  <tr>
    <td><label>Username</label></td>
    <td><input name="username" type="text" placeholder="Enter your username" required></td>
  </tr>

  <tr>
    <td><label>Password</label></td>
    <td><input name="password" type="password" placeholder="Enter your password" required></td>
  </tr>

  <tr>
    <td><label>Login type</label></td>
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
<p id="link"><a href="ForgotPassword.jsp"><b>Forgot Password ?</b></a></p>

</div>
</body>
</html>