<%-- 
    Document   : testfall_student
    Created on : 25.03.2014, 16:58:43
    Author     : Nora
--%>

<%@page import="java.util.Date"%>
<%@page import="BL.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ok-STudent angelegt- Check Bro's</h1>
        
        <%Student  s = new Student();
             s.setGebDat(new Date());
             s.setGeschlecht("weiblich");
             s.setKurs("wwi12b3");
             s.setMatNr(1234567);
             s.setName("Reich");
             s.setVorname("Caroline");
             s.setPasswort("12");
             s.setUsername("reichc@hotmail.de");
             s.seteMail("reichc@hotmail.de");
           
           BL.Student.saveStudent(s);
               
             %>
        
    </body>
</html>
