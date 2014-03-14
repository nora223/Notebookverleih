<%-- 
    Document   : student
    Created on : 25.02.2014, 15:20:58
    Author     : cara123

--%>


<%@page import="BL.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script> 
        <title>Student</title>
           <div>
               
            <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
            <div id="logout"><a id="logout" href=".../logout.jsp"> Logout </a></div> <!-- Link für Logout-->
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        
        <%
        String email = request.getParameter("e_mail");
        String passwort1 = request.getParameter("passwort");
        
        boolean erg = BL.Student.loginStudent(email, passwort1);
        out.print(erg);    
            if (erg){
                 
            }else{
                out.print("Passwort falsch");   
              }
        %>
        
        <div> <!-- Navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href="student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href="uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href="account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    <h1> Willkommen </h1>    
                </div>
            </div>
        </div>    
    </body>
</html>
