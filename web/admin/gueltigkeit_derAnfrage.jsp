
<%--
    Document   : gueltigkeit_derAnfrage
    Created on : 27.03.2014, 22:30:26
    Author     : Alex
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BL.Student"%>
<%@page import="java.util.List"%>
<%@page import="BL.Ausleihe"%>
<%@page import="BL.Notebook"%>
<%@page import= "java.text.DateFormat"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import= "java.util.Calendar"%>
<%@page import= "java.util.Date"%>
<%@page import= "java.util.GregorianCalendar"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script> </head> 
        
    <%      
          
         Date d = new Date();       
         List<Ausleihe> listeAusleihe = Ausleihe.getAusleiheList();
            
       for(Ausleihe element : listeAusleihe){
           
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
                 BL.Ausleihe.deleteAusleiheByID(id);
                 String messageContent = BL.Mail_arts.Notebook_nichtBestätigt(name);
                 BL.Mail.eMailcreate(messageContent, email);
                 }
            }
              
          }
        
%>
                             <p>überpruft</p>
         
       
                  
</html>