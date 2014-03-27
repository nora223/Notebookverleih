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
        <title>Benutzer Men&uuml;</title>
           <div>
            <div class="col-md-2"><a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a></div>
            <div id="logout" class="col-md-2"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div> 
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
   
            <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Student")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
        }
    %>
   
    </head>
    <body>
            <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href=".../student/student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href=".../student/notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href=".../student/uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href=".../student/account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>
                    <p> Sie befinden sich in Ihrem Benutzerkonto Men&uuml;. </p>
                </div>
            </div>
        </div>    
    
       
   
    </body>
</html>