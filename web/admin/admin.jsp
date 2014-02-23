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
        <title>Administration</title>
           <div>
            <img id="pic" src=".../pic/logo.png" alt="Logo"/>
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        <div class="list-group">
            <a href="#" class="list-group-item active" >
                NAVIGATION
            </a>
            <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
            <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
            <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
          
        </div>
   
    </body>
</html>