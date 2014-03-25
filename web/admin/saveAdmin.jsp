<%-- 
    Document   : saveAdmin
    Created on : 13.02.2014, 10:57:56
    Author     : CaReich
--%>

         <%@page import="java.text.SimpleDateFormat"%>
        <%@page import="java.util.Date"%>
        <%@page import="java.text.DateFormat"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@page import="java.util.List"%>
        <%@page import="BL.Administrator" %>
        <%@page import="DAO.AdministratorDAO" %>

         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <title>Registrierung erfolgreich</title>
    <div>
        <img id="pic" src=".../pic/logo.png" alt="Logo"/>
        <hr>
        <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
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

        Administrator a = new Administrator(geschlecht, vorname, nachname, email, date, passwort, username);
        Administrator.saveAdministrator(a);
        //Alexey
        //String messageContent = BL.Mail_arts.Dozent_welcome(s);
        //BL.Mail.eMailcreate(messageContent, s.geteMail());
%>
    <div>
        <p>Der Administrator
            <% out.println(vorname);
                out.println(nachname);
            %>
            wurde erfolgreich angelegt. Es wurde eine Bestätigungs-Email an: 
            <% out.println(email);%> gesendet. </p>
    </div>
</body>
</html>
