<%-- 
    Document   : index
    Created on : 11.02.2014, 13:30:04
    Author     : Bitte eintragen!
--%>

<%@page import="BL.Ausleihe"%>
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
        <title>Notebook Best&auml;tigung</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
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
                    <a href="dozent.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="notebookausleihedozent.jsp" class="list-group-item" >Ausleihe</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Notebookausleihe genehmigt! </h1>
                   <% String Str_id = request.getParameter("id");
                   long id = Long.parseLong(Str_id);
                   String stuName=null;
                   String stuVorname = null;
                       
                       List<Student> listStudent = BL.Student.getStudentList();

            for (Student element : listStudent) {
                if (id == element.getId()) {

                    stuName=element.getName();
                    stuVorname=element.getVorname();
               
                }

            }%>
                    
                    <p> Hiermit haben Sie die Ausleihe für den Studenten <% out.println(stuVorname+" "+stuName); %> akzeptiert.</p>
                  
                    <%
                     List<Ausleihe> list = BL.Ausleihe.getAusleiheList();
                     long auslId = 0;
                     for (Ausleihe element : list) {
                           if (id == element.getAntragssteller().getId()) {

                            auslId = element.getId();
                            break;
               
                }

            }
              
                        BL.Ausleihe.updateAusleihe(auslId);
                    %>
                    
                    <a href="../dozent/notebookausleihedozent.jsp">Zurück!</a>
                </div>
            </div>
        </div>    



</body>
</html>
