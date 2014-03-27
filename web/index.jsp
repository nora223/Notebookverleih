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
        
        <!--
            for (i = 0; i < document.forms[0].elements.length; ++i)
            if (document.forms[0].elements[i].value === "") {
            alert("Es wurden nicht alle Felder ausgefüllt!");
            document.forms[0].elements[i].focus();
            return false;
            }        
       -->
        
        <title>Start</title>
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
                    <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px"><b>Startseite</b></a>
                    <a href=".../notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userinf.jsp" class="list-group-item">User Informationen</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>                     
                </div>
            </div>            
            
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        LOGIN
                    </a>
                    
                    <div class="list-group-item">
                    
                    <form method="POST" action="servlets/login">
                    <p>E-mail<br><input id="e_mail" name="e_mail" type="text" maxlength="40"></p>
                    <p>Passwort<br><input id="passwort" name="passwort" type="password" maxlength="40"></p>
                    <p><input name="button" type="submit" value="Login"></p>
                    </form>
                        
               <a href="create_student.jsp">Neuer Zugang anlegen?</a><br>
               <a href="forgotton_PW.jsp" >Passwort vergessen?</a>
               
                    </div>
                    <li><a href="admin/admin.jsp">Admin</a></li>
               <li><a href="testfaelle.jsp">Testf&auml;lle!</a></li>
               <li><a href="testfaelle_alexey.jsp">Testf&auml;lle_Aleksey!</a></li>
               <li><a href="testfaelle_notebook.jsp">Testf&auml;lle_notebook</a></li>
               <!--<li><a href="student/student.jsp">Student</a></li>-->
               <li><a href="dozent/dozent.jsp">Dozent</a></li>
               </div> 
        </div>
        </div>
        </div>
        
    </body>
</html>
