<%-- 
    Document   : notebookverwaltung
    Created on : 23.02.2014, 20:32:17
    Author     : CaReich
--%>

<%@page import="java.util.Date"%>
<%@page import="BL.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>User Verwaltung</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div  class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active" >
                    NAVIGATION
                </a>
                <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a> 
                <a href="ausleihverwaltung.jsp" class="list-group-item">Ausleih Verwaltung</a>
                <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
            </div>
        </div>

        <div class="col-md-8">
            <div>
                <h1> Userverwaltung </h1>
                <p>&Uuml;bersicht aller registrierten User</p>
                <table>
                    <tr>
                        <td><a href="list_student.jsp">Studenten</a></td>
                    </tr>
                    <tr>
                         <td><a href="list_dozent.jsp">Dozenten</a></td>
                    </tr>
                    <tr>
                        <td><a href="list_administrator.jsp">Administratoren</a></td>
                    </tr>
                    
                </table>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>
