<%-- 
    Document   : Mahnung
    Created on : 11.02.2014, 13:30:04
    Author     : Alexey
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         import="BL.Ausleihe"
         
         import="java.util.List"

         import= "java.util.Calendar"
         import= "java.util.Date"
         import= "java.util.GregorianCalendar"
         
         
         %>
<!--<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Mahnung</title>
    <div>
        <a href='../index.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href="../logout.jsp"> Logout </a></div>
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" />
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
                    <a href="XXX.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >Ausleih Verwaltung</a>
                    <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Danke! </h1>
                    <p>Die Tabelle Ausleihe wurde geprüft und die entsprechende Mahnungen verschickt.</p>
                
                
                      
    <%
         
        
         List<Ausleihe> listAusleihe = Ausleihe.getAusleiheList();
            
         for(Ausleihe element : listAusleihe){
             String name = element.getAntragssteller().getName();
             String mail = element.getAntragssteller().geteMail();
             Date bis = element.getBis();
             Date d= new Date();
           if(d.compareTo(bis)>0){
                 
             String messageContent = BL.Mail_arts.Student_Mahnung(name);
             BL.Mail.eMailcreate(messageContent, mail);  
             }
               
         }
       %>
                
                
                </div>
            </div>
        </div>    



</body>
</html>
