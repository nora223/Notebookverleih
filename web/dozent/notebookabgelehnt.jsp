<%-- 
    Document   : notebookabgelehnt
    Created on : 27.03.2014, 14:25:03
    Author     : Nora
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
        <script>
            alert("@Nora: ist das so okey? Hast du noch wünsche ;-)");
        </script>
        
        <title>Notebook abgelehnt</title>
    <div>
        <a href='dozent.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href="../logout.jsp"> Logout </a></div>
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" />
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
                    <a href="dozent.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="notebookausleihedozent.jsp" class="list-group-item" >Ausleihe</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Sie haben die Ausleihe dieses Notebooks erfolgreich abgelehnt </h1>
                    <p> Eine E-mail wurde an den entsprechenden Studenten gesandt.</p>
                </div>
            </div>
        </div>    



</body>
</html>
