<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
<style>
<%@ include file="css/app_cust.css"%>
</style>


<script>
function getFile(filePath) {
        return filePath.substr(filePath.lastIndexOf('\\') + 1).split('.')[0];
    }

    function getoutput() {
        outputfile.value = getFile(inputfile.value);
        extension.value = inputfile.value.split('.')[1];
    }

</script>


</head>
<body>

<jsp:include page="app_cust_header.jsp" />
<jsp:include page="app_cust_sidebar.jsp" />

<div style="margin-left:200px; margin-top:0px;">

        <form method="post" action="UploadServlet" enctype="multipart/form-data">
            <table border="1" id="registered_users" cellspacing="0px" >
       
              
                <input type="hidden" name="username" value="<%= request.getAttribute("uname") %>" size="50"/>
               
                
                <tr>
                    <td>Upload File</td>
                    <td><input id="inputfile" type="file" name="inputFile"  onChange="getoutput()" size="50"/></td>
                </tr>
                
   
                <tr>
                    <td>Remarks(if any) </td>
                    <td><input type="text" name="remarks" size="50"/></td>
                </tr>
               
             <input id="outputfile" type="hidden" name="outputfile">
              <input id="extension" type="hidden" name="extension">
         
            </table>
                           <input id="sub_button" type="submit" value="Save">
            
        </form>
</div>
</body>
</html>