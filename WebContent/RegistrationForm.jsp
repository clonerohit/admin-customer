<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SignUp</title>
<style>
<%@include file="css/app_loginpage.css" %>
</style>
</head>

<body>

<p id="h1">Servlets<b>&</b>JSP</p>

<form action="RegistrationProcess" method="post" onSubmit="return Validate()">

<h2>Register</h2>

<table>

<tr>
   <td><label>Employee ID </label></td><td><input id="employeeID" type="text" name="employeeID" placeholder="Enter ID" ></td>
</tr>

<tr>
   <td><label>Username </label></td><td><input id="username" type="text" name="username" placeholder="Enter username" ></td>
</tr>

<tr> 
   <td><label>Email </label></td><td><input id="email" type="text" name="email" placeholder="Enter email"></td>
</tr>

<tr>
  <td><label>Password </label></td><td><input id="password" type="text" name="password" placeholder="Enter password"></td>
</tr>

<tr>
  <td><label>Date Of Birth </label></td><td><input type="text" name="dob" placeholder="Enter DOB eg: 10/05/1998"> </td>
</tr>

<tr>
  <td><label>Contact</label> </td><td><input id="phone" type="text" name="phone" placeholder="Enter contact "></td>
</tr>

<tr>
  <td><label>City </label></td><td><input id="city" type="text" name="city" placeholder="Enter city" ></td>
</tr>

<tr>
  <td><label>Department </label></td><td><input id="department" type="text" name="department" placeholder="Enter department" ></td>
</tr>

<tr>
  <td><input type="submit" value="Submit"></td>
</tr>

</table>
</form>

<div id="last">
<p id="link">Already registered ? <a href="LoginForm.jsp"><b>Login here</b></a></p>
</div>

<script>
  function Validate()
  {   
	  var v_id = document.getElementById("customerID").value;
	  var v_name = document.getElementById("username").value;
	  var v_email = document.getElementById("email").value;
	  var v_pass = document.getElementById("password").value;
	  var v_cpass = document.getElementById("cpassword").value;
	  var v_phone = document.getElementById("phone").value;
	  var v_city = document.getElementById("city").value;
	  var v_occ = document.getElementById("occupation").value;
	  
	  if(v_id=="")
		  {
		  alert("Customer ID cannot be empty");
		  return false;
		  }
	  
	  if(v_name=="")
	  {
	  alert("Username cannot be empty");
	  return false;
	  }
	  
	
	  if(v_email=="")
		  {
		  alert("Email cannot be empty");
		  return false;
		  }

	  if(v_pass=="")
		  {
		  alert("Password cannot be empty");
		  return false;
		  }

	  if(v_cpass=="")
		  {
		  alert("Confirm password cannot be empty");
		  return false;
		  }
      

	  if(v_cpass!=v_pass)
		  {
		  alert("Passwords not matched");
		  return false;
		  }
	  
	  if(v_phone=="")
		  {
		  alert("Contact cannot be empty");
		  return false;
		  }

	  if(v_city=="")
		  {
		  alert("City cannot be empty");
		  return false;
		  }

	  if(v_occ=="")
		  {
		  alert("Occupation cannot be empty");
		  return false;
		  }
	  
	  
  }
</script>

</body>
</html>