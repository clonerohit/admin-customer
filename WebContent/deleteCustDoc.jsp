<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
<%@include file="css/app_cust.css" %>

</style>
</head>
<body>

<jsp:include page="app_cust_header.jsp" />
<jsp:include page="app_cust_sidebar.jsp" />


<div style="margin-left:240px; margin-top:0px;">

<% 
request.getAttribute("uname");
%>



<form method="post" action="imageProcessDelete" enctype="multipart/form-data">
            <table border="0">
                <tr>
                      <td>Username </td>
                    <td><input type="text" name="username" size="30" value="<%= request.getAttribute("uname") %> "/></td>
                </tr>
                 <tr>
                 <td><input type="submit" value="Submit">
                 </tr>
            </table>
        </form> 



</div>
</body>
</html>