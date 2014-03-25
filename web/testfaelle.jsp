<%-- 
    Document   : testfaelle
    Created on : 20.02.2014, 10:32:54
    Author     : Tino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Testfälle</h1>
         <form action="testfall.jsp" methode="POST">
         <p><input name="testbutton1" type="submit" value="Test Tabellen aus Datenbank"></p>
         </form>
        
        <a href="testfaelle_dozenten.jsp">Dozenten</a>
        <a href="testfall_student.jsp">Student</a>
        <h1>Testfälle Notebook von Nora </h1>
        <form action="testfall_asdf.jsp" methode="POST">
            <input name="testbutton2" type="submit" value="Test Count"></p>
            
        </form>
    </body>
</html>
