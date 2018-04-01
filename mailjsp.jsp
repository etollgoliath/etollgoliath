<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="javax.mail.Message.RecipientType"%>
<%

    String result;
    String mail=request.getParameter("email"); 
 
String tel=request.getParameter("Telephone"); 
String subject=request.getParameter("Subject");
String Message=request.getParameter("Message");
int tele=Integer.parseInt(tel);
   String result,exp="";
   String to ="etollgoliath@gmail.com";
   String from =mail;
   String host ="localhost";
   Properties properties = System.getProperties();
   properties.setProperty("mail.smtp.host", host);
   Session mailSession = Session.getDefaultInstance(properties);
      
      
   
// Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      
      // Set To: header field of the header.
      message.addRecipient(RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject(subject);
      
      // Now set the actual message
      message.setText(Message);
      
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   } catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<html>
<body>
<center>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
 
%>
</p>
</body>
</html>