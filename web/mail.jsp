<%-- 
    Document   : index
    Created on : 09.02.2014, 17:00:40
    Author     : Alex
--%>
  

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import= "javax.mail.Authenticator.*" %>
<%@page import= "javax.mail.PasswordAuthentication.*" %>
<%@page import= "javax.mail.PasswordAuthentication.*" %>
<%
   String result;
   String from = "Buchausleihe.wwi12b3@gmail.com";
   String to   = "solfit@web.de";
    //String to  =  request.getParameter("to");

   String host = "smtp.gmail.com";
   String login = "Buchausleihe.wwi12b3";
   String passwort = "buchausleihe";

   
   Properties props =  new Properties();

   props.setProperty("mail.smtp.host", "smtp.gmail.com");
   props.setProperty("mail.smtp.port", "587");
   props.setProperty("mail.smtp.auth", "true");
   props.setProperty ("mail.smtp.starttls.enable", "true");
   
   //PasswordAuthentication auth = new PasswordAuthentication();
            
   //Session mailSession = Session.getInstance(props,auth);
   Session mailSession = Session.getInstance(props, new javax.mail.Authenticator()
 {protected PasswordAuthentication getPasswordAuthentication() {return new PasswordAuthentication
         ("Buchausleihe.wwi12b3","buchausleihe");}
});
   try{
      
      MimeMessage message = new MimeMessage(mailSession);
      
      message.setFrom(new InternetAddress(from));
      
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      
      message.setSubject("Buch");
     
      
      message.setContent("<h1>Hallo</h1>",
                            "text/html" );
      
      Transport.send(message);
      result = "successfully";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error";
   }
%>


<html>
<head>
<title>Send Email</title>
</head>
<body>
<center>
<h1></h1>
</center>
<p align="center">
<% 
   out.println("Result: " + result   + "\n");
%>
</p>
</body>
</html>