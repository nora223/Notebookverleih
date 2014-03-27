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
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title></title>
           <div>
            <div class="col-md-2"><a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a></div>
             <div id="logout" class="col-md-2"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div> 
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
                    <a href="XXX.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="XXX.jsp" class="list-group-item" >XXX</a>
                    <a href="XXX.jsp" class="list-group-item">XXX</a>
                    <a href="XXX.jsp" class="list-group-item">XXX</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> Vielen Dank für ihre Anfrage! </h1>
                    <p> Es wurde eine Email an den Administrator versand. In K&uuml;rze sollten Sie eine Email mit ihrem neuen Passwort erhalten. <br>
                    Sobald Sie sich mit diesem Passwort eingeloggt haben, wird es empfohlen schnellstm&ouml;glich ein von Ihnen individuell ausgew&auml;hltes Passwort zu vergeben.<br>
                    
                    Viele Gr&uuml;&szlig;e
                    Ihr Administrator-Team</p>
                </div>
            </div>
        </div>    
    
       
   
    </body>
</html>
