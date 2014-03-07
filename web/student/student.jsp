<%-- 
    Document   : student
    Created on : 25.02.2014, 15:20:58
    Author     : cara123

--%>


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
            <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        <div> <!-- Navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href="student.jsp" class="list-group-item">Startseite</a>
                    <a href="notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href="uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
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