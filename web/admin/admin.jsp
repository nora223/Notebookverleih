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
<!--<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Administration</title>
    <div>
        <div>
            <a href='admin.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
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
                    <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >Ausleih Verwaltung</a>
                    <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>
                    <br>
                    <p> Sehr geehrte/r Administrator/in, <br><br> Sie befinden sich im Hauptmenü
                        des Administrationsbereiches der Notebookausleihe!. <br>
                        Starten Sie <b>t&auml;glich</b> den Mahnungslauf um Studierende an die Abgabe der Notebooks zu erinnern.
                        <br> <br> Mit freundlichen Gr&uuml;&szlig;en<br> 
                        Die Programmierer</p>


                </div>
            </div>
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        MAIN
                    </a>

                        <a href="Mahnung.jsp" class="list-group-item">Mahnungslauf starten</a>
                        <a href="gueltigkeit_derAnfrage.jsp" class="list-group-item">G&uuml;ltigkeit der Anfrage</a>

                </div> 
            </div>   
        </div>
    </div>


</body>
</html>

