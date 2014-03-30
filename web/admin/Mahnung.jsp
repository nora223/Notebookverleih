<%-- 
    Document   : Mahnung
    Created on : 27.03.2014, 21:24:41
    Author     : Alex
--%>

<%@page import="BL.Student"%>
<%@page import="java.util.List"%>
<%@page import="BL.Ausleihe"%>
<%@page import= "java.text.DateFormat"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import= "java.util.Calendar"%>
<%@page import= "java.util.Date"%>
<%@page import= "java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Überprüft</title>
        
        <%
         Date d= new Date();
        
         List<Ausleihe> listAusleihe = Ausleihe.getAusleiheList();
            
           for(Ausleihe element : listAusleihe){
             
             String name = element.getAntragssteller().getName();
             String mail = element.getAntragssteller().geteMail();
             Date bis = element.getBis();
             
           if(d.compareTo(bis)>0){
                 
             String messageContent = BL.Mail_arts.Student_Mahnung(name);
             BL.Mail.eMailcreate(messageContent, mail);  
             }
               
           }
       %>