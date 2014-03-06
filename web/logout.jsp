<%-- 
    Document   : logout
    Created on : 25.02.2014, 15:27:47
    Author     : cara123
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
        <title>Logout</title>
           <div>
               <a href='.../index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
           </div>
    </head>
    
    <body>
             <%{session.invalidate();}%> <!-- session session beenden -->
        <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px"><b>Startseite</b></a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            
            <div class="col-md-6">
                <div class="area">
                    Der Logoutvorgang wurde erfolgreich abgeschlossen!                
                </div>
            </div>
            
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                       LOGIN
                    </a>
                    <div class="list-group-item">
                <form action="Login_Start.jsp" methode="POST">
                    <p>E-mail<br><input name="e_mail" type="text" maxlength="40"></p>
                    <p>Passwort<br><input name="passwort" type="password" maxlength="40"></p>
                    <p><input name="button" type="submit" value="Login"></p>
                </form>
               <a href="create_student.jsp">Neuer Zugang anlegen?</a><br>
               <a href="forgotton_PW.jsp" >Passwort vergessen?</a>
               
                    </div>
                    <li><a href="admin/admin.jsp">Admin</a></li>
               <li><a href="testfaelle.jsp">Testfälle!</a></li>
               <li><a href="testfaelle_alexey.jsp">Testfälle_Aleksey!</a></li>
               <li><a href="student/student.jsp">Student</a></li>
               <li><a href="logout.jsp">Logout</a></li>
               </div> 
        </div>
        </div>
        </div>
    </body>
</html>
