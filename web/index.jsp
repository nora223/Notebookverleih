<%-- 
    Document   : index
    Created on : 11.02.2014, 13:30:04
    Author     : CaReich
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         %>
<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <title>Start</title>
           <div>
            <img id="pic" src="pic/logo.png" alt="Logo"/>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
       
        
        <form action="Login_Start.jsp" methode="POST">
              <p>E-mail<br><input name="e_mail" type="text" size ="30" maxlength="40"></p>
              <p>Passwort<br><input name="passwort" type="password" size ="30" maxlength="40"></p>
              <p><input name="button" type="submit" value="Login"></p>
             
        </form>

        <div>
            
        </div>
               <li><a href="new_account.jsp">Neuer Zugang anlegen?</a></li>
               <li><a href="forgotton_PW.jsp">Passwort vergessen?</a></li>
               <li><a href="testfall.html">Testfälle!</a></li>
        
    </body>
</html>