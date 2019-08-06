<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
<%@ include file="css/app_cust.css"%>
</style>
</head>
<body>

<jsp:include page="app_cust_header.jsp" />
<jsp:include page="app_cust_sidebar.jsp" />

<div style="margin-left:230px; margin-top:0px;">
<br/>

<h3>Document Deleted Successfully</h3>

<a id="sub_button" href="view_cust_docs.jsp">Click to view your documents</a>

</div>

</body>
</html>