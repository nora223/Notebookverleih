<%-- 
    Document   : userinf
    Created on : 27.03.2014, 15:47:04
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
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <title>User Informationen</title>
    <div>
        <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
        
        <hr>
        <p><img id="pic2" src="pic/dh.jpg" alt="dh" />
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
                    <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="userinf.jsp" class="list-group-item">User Informationen</a>
                    
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Sind Sie das erste mal auf dieser Website? </h1>
                    <p> Guten Tag! Um die Funktionalit&auml;ten dieser Seite 
                        nutzen zu k&ouml;nnen, m&uuml;ssen Sie sich einen 
                        Nutzerzugang f&uuml;r diese Website anlegen. 
                    Gehen Sie dazu bitte wie folgt vor:<br>
                    <ol>
                        <li>F&uuml;llen Sie das Formular <a href="create_student.jsp"><u>Neuer Zugang</u></a> mit Ihren Angaben aus.</li>
                        <li>Sie erhalten umgehend eine Benachrichtigung an die von Ihnen angegebene E-Mail-Adresse.</li>
                        <li>Nun haben Sie einen Nutzerzugang zur Website. Zuk&uuml;nftig m&uuml;ssen Sie jedes Mal den bei 
                            Ihrer Registrierung gew&auml;hlten Anmeldenamen und das Kennwort (im Login-Block auf dieser Seite) eingeben, um sich einzuloggen.</li>
                    </ol></p><br>
                    <div style="text-align: center"><a href="create_student.jsp"><button class="blue" >Neuer Zugang anlegen?</button></a></div>
                </div>
            </div>
        </div>    



</body>
</html>
