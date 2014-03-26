<%-- 
    Document   : unauthorized
    Created on : 23.03.2014, 14:58:42
    Author     : Boss
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />        
        
        <title>Login Error</title>
           <div>
               <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
            <hr>
            <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
           </div>
    
           <% session.invalidate(); %>
    
    </head>
    
    <body>
        <div> <!-- navigationsbereich sMenu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href=".../index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px"><b>Startseite</b></a>
                    <a href=".../notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href=".../userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h3>Sie sind nicht autorisiert diesen Bereich einzusehen!</h3>                 
                </div>
            </div>            
            
            
        </div>
        
    </body>
</html>
