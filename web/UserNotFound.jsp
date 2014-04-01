<%-- 
    Document   : UserNotFound
    Created on : 31.03.2014, 16:34:16
    Author     : Boss
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
        <title>User not found</title>
    <div>
        <a href='../index.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
       
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
                    <a href="../index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                     <a href="../userinf.jsp" class="list-group-item">User Informationen</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <p>Bitte legen Sie einen neuen Benutzer an,<br>
                       da kein Benutzer mit den eingegebenen Informationen gefunden werden konnte!</p>
                </div>
            </div>
        </div>    



</body>
</html>

