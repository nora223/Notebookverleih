<%-- 
    Document   : savestudent
    Created on : 13.02.2014, 10:57:56
    Author     : Tino
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.*" 
         import="java.util.*"
         import="java.text.DateFormat"

         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Save Admin</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <h1>Registrierung erfolgreich!</h1>
    <%
        String geschlecht = request.getParameter("radio");
        String nachname = request.getParameter("nachname");
        String vorname = request.getParameter("vorname");
        String email = request.getParameter("e_mail");
        /*String kurs = request.getParameter("kurs");
         out.println(kurs);
         Integer matNummer = Integer.parseInt(request.getParameter("matNr"));
         /*out.println(matNummer);*/
        String x = request.getParameter("gebDat");
        /*out.println(x);*/
        DateFormat df = new SimpleDateFormat("dd:MM:yyyy");
        /*out.println(df);*/
        Date date = df.parse(x);
        /*out.println(date);*/
        String passwort = request.getParameter("passwort");
        String username = request.getParameter("e_mail");

        Dozent s = new Dozent(geschlecht, vorname, nachname, email, date, passwort, username);
        Dozent.saveDozent(s);
        //Alexey
        //String messageContent = BL.Mail_arts.Dozent_welcome(s);
        //BL.Mail.eMailcreate(messageContent, s.geteMail());
%>
    <div>
        <p>Der Dozent 
            <% out.println(vorname);
                out.println(nachname);
            %>
            wurde erfolgreich angelegt. Es wurde eine Bestätigungs-Email an: 
            <% out.println(email);%> gesendet. </p>
    </div>
</body>
</html>
