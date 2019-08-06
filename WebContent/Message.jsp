<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
<style>
<%@ include file="css/app_cust.css"%>
</style>
</head>
<body>

<jsp:include page="app_cust_header.jsp" />
<jsp:include page="app_cust_sidebar.jsp" />

<div style="margin-left:230px; margin-top:0px;">

        <h3><%=request.getAttribute("Message")%></h3><br/>
        <a id="sub_button" href="view_cust_docs.jsp">Click to view list of your documents</a><br/><br/>
        <a id="sub_button" href="add_cust_docs.jsp">Click to add another document</a><br/>
        
</div>
</body>
</html>