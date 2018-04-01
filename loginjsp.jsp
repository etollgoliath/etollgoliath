<%-- 
    Document   : loginjsp
    Created on : Jan 26, 2018, 5:50:52 PM
    Author     : Toshiba
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
int a=0;

String name=request.getParameter("Name");
 String pass=request.getParameter("Password"); 
 




 


    Connection connection = null;

{

 Class.forName("oracle.jdbc.driver.OracleDriver");
         connection=DriverManager.getConnection("jdbc:oracle:thin:@//geek:1521/xe","hackathon","goliath123");
       
String qry="select username,password from users where username=? AND password=?";
PreparedStatement ps=connection.prepareStatement(qry);

        
ps.setString(1,name);


ps.setString(2,pass);
        

int ans=ps.executeUpdate();
if(ans==1)
{
    a=1;
   
}


}



%>
        <%
            if(a==1)
            {
           
            
out.println("click here to download our app");
            }
            else{
                String link = "<a href=login.html>LOGIN</a>";
                
                String f = "<a href=forgotP.html>Forgot password</a>" ;
                out.println("<br>");
                  out.println("Userid and password mismatch");
                   out.println("<br>");
                 
                  out.println(link);
                  out.println("<br>");
                  out.println(f);
                
                  
            }
        %>
    </body>
</html>
