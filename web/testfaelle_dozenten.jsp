<%-- 
    Document   : testfaelle_dozenten
    Created on : 25.03.2014, 16:41:09
    Author     : Nora
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="BL.Dozent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ok - dozenten gespeichert</h1>
        
        <%
            
            Dozent d = new Dozent();
            d.setGebDat(new Date());
            d.setGeschlecht("weiblich");
            d.setName("Wengler");
            d.setVorname("Katja");
            d.seteMail("example@web.de");
            d.setUsername("example@web.de");
            d.setPasswort("12");
            
            BL.Dozent.saveDozent(d);
            
            Dozent d1 = new Dozent();
            d1.setGebDat(new Date());
            d1.setGeschlecht("weiblich");
            d1.setName("Korn");
            d1.setVorname("Lothar");
            d1.seteMail("korn@web.de");
            d1.setUsername("korn@web.de");
            d1.setPasswort("12");
            
            BL.Dozent.saveDozent(d1);
                 
            
            
            
            %>
        
        
    </body>
</html>
