<%-- 
    Document   : newjsp
    Created on : Jan 26, 2018, 12:10:47 PM
    Author     : Toshiba
--%>

<%@page import="javax.mail.Message"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="oracle.net.aso.a"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%>
<%@page import="com.twilio.sdk.TwilioRestResponse"%>
<%@page import="com.twilio.sdk.TwilioRestException"%>
<%@page import="com.twilio.sdk.TwilioRestClient"%>

<%@page import="com.twilio.sdk.TwilioUtils"%>
           
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
       
      


<%
    String mobiles = request.getParameter("mobile");
    String accountSid = "ACf22ce98fbed3fb191ca8ef3f0d701af9";
  String authToken = "ec795b118f16064146550f9e643eaa1a";

 
{
   Twilio.init(accountSid, authToken);

Message message = Message.creator(
    new PhoneNumber("+8871720996"),  
    new PhoneNumber("+8871720996"),  
    "Hello world!"                    
).create();

  }



    
/**



String senderId = "123456";

String message = "This is promotional message from etoll powered by Goliath";

String route="Transactional Route";


URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;


String encoded_message=URLEncoder.encode(message);


String mainUrl="https://control.msg91.com/api/sendhttp.php?";


StringBuilder sbPostData= new StringBuilder(mainUrl); 
sbPostData.append("authkey="+authkey); 
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);


mainUrl = sbPostData.toString();
try
{
    //prepare connection
    myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    
    String response1;
    while ((response1 = reader.readLine()) != null) 
    
    System.out.println(response1);
    
    
    reader.close();
} 
catch (IOException e) 
{ 
	e.printStackTrace();
} 
 
String authkey = "130491ADE9VcIY7WyB5vst82d3";

String senderId = "ABCDEF";
//Your message to send, Add URL encoding here.

//define route
String route="4";
//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;
String message="This message is from etoll" ;//encoding message 

String encoded_message=URLEncoder.encode(message);
//Send SMS API
String mainUrl="http://malussms.com/api/sendhttp.php?";
//Prepare parameter string 
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey); 
sbPostData.append("&mobiles="+mobiles); 
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);
//final string
mainUrl = sbPostData.toString();
try
{
//prepare connection
myURL = new URL(mainUrl);
myURLConnection = myURL.openConnection();
myURLConnection.connect();
reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
String success="Your message sent sucessfully";

//finally close connection
reader.close(); 
}
catch (IOException e)
{
e.printStackTrace(); 
}
*
**/
%>





<%
    
    
    
    
     
    
    
     
    
     String result="";
int ans=0;


String fname=request.getParameter("First Name");
 String surname=request.getParameter("Name"); 
String mail=request.getParameter("Email"); 
String aa=request.getParameter("Aadhaar No"); 
String password1=request.getParameter("Password");
String mobile=request.getParameter("mobile");



 



    Connection connection = null;

try
    {

 Class.forName("oracle.jdbc.driver.OracleDriver");
         connection=DriverManager.getConnection("jdbc:oracle:thin:@//geek:1521/xe","hackathon","goliath123");
       
String qry="insert into users values(?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=connection.prepareStatement(qry);
ps.setString(1,fname);
ps.setString(2,password1);
ps.setString(3,fname);
ps.setString(4,surname);
ps.setInt(5,34356);
ps.setInt(6,12345);
ps.setInt(7,123);
ps.setString(8,mobile);
ps.setString(9,mail);
int a=ps.executeUpdate();
ans=a ;
}
catch(SQLException e2)
{
   result="sql error" ;
}


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
         if(ans==1)
        {
            out.println("sucessfully registered");
            out.println("click here to go to login page");
            String link = "<a href=login.html>LOGIN</a>"; 
            out.println(link);
            out.println("confirm your mobile no");
            
          
        }
        if(ans==0)
        {
            out.println("some error occured");
            out.println("try again ,later");
            
        }
        %>
           
        
        
    </body>
</html>
