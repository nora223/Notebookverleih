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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/Style.css" type ="text/css" />
    
        <title>Start</title>
    </head>
    <body>
        <div>
            <img src="pic/logo.png" alt="Logo"/>
            <hr>
            <img src="pic/dh.jpg" alt="dh" />
        </div>
        
        <form action="input_text.htm">
              <p>Nachname<br><input name="nachname" type="text" size="30" maxlength="40"></p>
              <p>Vorname<br><input name="vorname" type="text" size ="30" maxlength="40"></p>
              <p>E-mail<br><input name="e_mail" type="text" size ="30" maxlength="40"></p>
              <p>Passwort<br><input name="passwort" type="password" size ="30" maxlength="40"></p>
              <p>Passwort<br><input name="passwort2" type="password" size ="30" maxlength="40"></p>
              <p>Geburtsdatum<br><input name="gebDat" type="date" size ="30" maxlength="40"></p>
              <p>Matrikelnummer<br><input name="matNr" type="number" size ="30" maxlength="40"></p>
              <p>Kursnummer<br><input name="kurs" type="text" size ="30" maxlength="40"></p>
        </form>
        <% 
            String nachname = request.getParameter("nachname");
            String vorname = request.getParameter("vorname");
            String email = request.getParameter("e_mail");
            
            
            String kurs = request.getParameter("kurs");
            Integer matNummer = Integer.parseInt(request.getParameter("matNr"));
            String x = request.getParameter("gebDat");
            DateFormat df = new SimpleDateFormat("dd:MM:yyyy");
            Date date = df.parse(x);           
            
            Student s = new Student(vorname, nachname, email, date, matNummer, kurs);
         %>
        <div>
            
        </div>
                    <li><a href="new_account.jsp">Neuer Zugang anlegen?</a></li>
                    <li><a href="forgotton_PW.jsp">Passwort vergessen?</a></li>
         
    </body>
</html>