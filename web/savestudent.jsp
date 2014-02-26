<%-- 
    Document   : savestudent
    Created on : 13.02.2014, 10:57:56
    Author     : Tino
--%>
<%@page import="BL.Mail"%>
<%@page import="BL.Mail_arts"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         
         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <title>Registrierung erfolgreich</title>
          <div>
            <img id="pic" src="pic/logo.png" alt="Logo"/>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        <h1>Registrierung erfolgreich!</h1>
          <% 
            String geschlecht = request.getParameter("radio");
            String nachname = request.getParameter("nachname");
            String vorname = request.getParameter("vorname");
            String email = request.getParameter("e_mail");
            String kurs = request.getParameter("kurs");
            /*out.println(kurs);*/
            Integer matNummer = Integer.parseInt(request.getParameter("matNr"));
            /*out.println(matNummer);*/
            String x = request.getParameter("gebDat");
            /*out.println(x);*/
            DateFormat df = new SimpleDateFormat("dd:MM:yyyy");
            /*out.println(df);*/
            Date date = df.parse(x);           
            /*out.println(date);*/
            String passwort = request.getParameter("passwort");
            String username = request.getParameter("username");
           
            Student s = new Student(geschlecht, vorname, nachname, email, date, matNummer,kurs, passwort, username);
            Student.saveStudent(s);
            String messageContent = Mail_arts.Student_welcome(s);
            Mail.eMailcreate(messageContent, s.geteMail());
            
         %>
         <div>
         <p>Hallo 
             <% out.println(vorname);
             out.println(nachname);
             %>
         du hast dich erfolgreich auf der Seite angemeldet. Es wurde eine Bestätigungs-Email an: 
         <% out.println(email);%> gesendet. </p>
         <p> Gehe nun zurück auf den Startbildschirm und loggt dich ein. Dann gehts auch schon los.
         ;-) </p>
         </div>
    </body>
</html>
