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
<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <title>Start</title>
           <div>
            <img id="pic" src="pic/logo.png" alt="Logo"/>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
           </div>
    </head>
    
    <body>
        <div>
        <div  class="row">
            <div class="col-xs-6 col-sm-4">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
        </div>
            </div>
            
            <div class="col-xs-6 col-sm-4">
                <div class="area">
                    <p> Hallo Test Test </p>
                </div>
            </div>
            
            <div class="col-xs-6 col-sm-4">
                <form action="Login_Start.jsp" methode="POST">
                 <p>E-mail<br><input name="e_mail" type="text" size ="30" maxlength="40"></p>
                 <p>Passwort<br><input name="passwort" type="password" size ="30" maxlength="40"></p>
                 <p><input name="button" type="submit" value="Login"></p>
                </form>
               <ul><a href="new_account.jsp">Neuer Zugang anlegen?</a></ul>
               <ul><a href="forgotton_PW.jsp">Passwort vergessen?</a></ul>
               <li><a href="admin/admin.jsp">Admin</a></li>
               <li><a href="testfaelle.jsp">Testfälle!</a></li>
               <li><a href="testfaelle_alexey.jsp">Testfälle_Aleksey!</a></li>
           </div> 
        </div>
        </div>
    </body>
</html>
