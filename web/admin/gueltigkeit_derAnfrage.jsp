<%-- 
    Document   : gueltigkeit_derAnfrage
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
        <title>Gültigkeit</title>
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
                    <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >Ausleih Verwaltung</a>
                    <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Danke </h1>
                    <p>Die Gültigkeit wurde überprüft</p>
                
                
                      
      <%      
          
              
         List<Ausleihe> listeAusleihe = Ausleihe.getAusleiheList();
          
           
       for(Ausleihe element : listeAusleihe){
           Date d = new Date();
           long id = element.getId();
           String status = element.getStatus();
           Date auftragsdatum = element.getAuftragsdatum();
           String name= element.getAntragssteller().getName();
           String email = element.getAntragssteller().geteMail();
           
           
           long auftragsdatumMS = auftragsdatum.getTime();
           auftragsdatumMS = auftragsdatumMS + 7*86400000;
           Date auftragsdatumPlus7 = new Date(auftragsdatumMS);
           
          
            if(status=="bestätigungAustehend"){
               
                if ( d.compareTo(auftragsdatumPlus7)>0){
                 
                 String messageContent = BL.Mail_arts.Notebook_gueltigkeit_derAnfrage_ueber(name);
                 BL.Mail.eMailcreate(messageContent, email);
                 BL.Ausleihe.deleteAusleiheByID(id);
                 }
            }
              
         
                               
         }
            
                              
 %>
                
                
                </div>
            </div>
        </div>    



</body>
</html>
