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
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <title>Registrierung erfolgreich</title>
    <div>
        <div>
            <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
        </div>
        
        <hr>
        <p><img id="pic2" src="pic/dh.jpg" alt="dh" /></p>
    </div>
</head>
<body>
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px"><b>Startseite</b></a>
                    <a href="userinf.jsp" class="list-group-item">User Informationen</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">

                    <h1>Registrierung erfolgreich!</h1>
                </div>
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

                    Student s = new Student(geschlecht, vorname, nachname, email, date, matNummer, kurs, passwort, username);
                    Student.saveStudent(s);
                %>


                <div>
                    <p>Guten Tag Herr/Frau 
                        <% //out.println(vorname);
                            out.println(nachname);
                        %>, <br><br>
                        Sie haben sich erfolgreich auf der Seite angemeldet. Es wurde eine Bestätigungs-Email an folgende Adresse: 
                        <% out.println(email);%> gesendet. </p>
                    <p> Gehen Sie nun zurück auf die Startseite und melden sich an! 
                    </p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
