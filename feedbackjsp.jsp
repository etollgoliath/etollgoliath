<%-- 
    Document   : feedbackjsp
    Created on : Jan 26, 2018, 5:12:49 PM
    Author     : Toshiba
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%


String name=request.getParameter("Name");
 String mail=request.getParameter("Email"); 
 
String web=request.getParameter("Website"); 
String subject=request.getParameter("Subject");
String Message=request.getParameter("Comment");



 


    Connection connection = null;

{

 Class.forName("oracle.jdbc.driver.OracleDriver");
         connection=DriverManager.getConnection("jdbc:oracle:thin:@//geek:1521/xe","hackathon","goliath123");
       
String qry="insert into feedback values(?,?,?,?,?)";
PreparedStatement ps=connection.prepareStatement(qry);
ps.setString(1,name);


ps.setString(2,mail);
ps.setString(3,web);
ps.setString(4,subject);
ps.setString(5,Message);
ps.executeUpdate();

}



%>
Sucessfully added to comments
<a href="index.html">index</a>
    </body>
</html>
