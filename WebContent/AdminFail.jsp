<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Invalid Username/Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
<%@include file="css/app_loginpage.css" %>
</style>
</head>

<body>

<p id="h1">online<b>Store</b>.com</p>

<form action="LoginProcess" method="post">

<h2>Invalid Username or Password, Please Try Again...</h2>

<table>

  <tr>
    <td><label>Username</label></td>
    <td><input name="username" type="text" placeholder="Enter username" required></td>
  </tr>

  <tr>
    <td><label>Password</label></td>
    <td><input name="password" type="password" placeholder="Enter password" required></td>
  </tr>

  <tr>
    <td><label>Login type</label></td>
    <td><select name="role">
      <option value="Admin">Admin</option>
      <option value="Customer">Customer</option>
        </select>
    </td>
  </tr>

 <tr>
   <td><button type="submit">Submit</button></td>
 </tr>
 
 </table>
</form>

<div id="last">
<p id="link">Not registered ? <a href="RegistrationForm.jsp"><b>Signup here</b></a></p>
<p id="link"><a href="ForgotPassword.jsp"><b>Forgot Password ?</b></a></p>
</div>

</body>
</html>