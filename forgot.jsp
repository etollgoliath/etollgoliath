<%-- 
    Document   : forgot.jsp
    Created on : Jan 29, 2018, 4:03:53 PM
    Author     : Toshiba
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
    </head>
    <body>
        <%
            String m=request.getParameter("mail");
             Connection connection = null;

try
    {

 Class.forName("oracle.jdbc.driver.OracleDriver");
         connection=DriverManager.getConnection("jdbc:oracle:thin:@//geek:1521/xe","hackathon","goliath123");
       
String qry="select password from users where email=? ";
PreparedStatement ps=connection.prepareStatement(qry);
ps.setString(1,m);

ResultSet rs=ps.executeQuery();
	    rs.next();
          int rowCount=rs.getInt(1);
          out.println(rowCount) ;

    }
catch(Exception e3)
{
    
    out.println("Something went wrong");
}
            
            
            
            %>
    </body>
</html>
