<%-- 
    Document   : Login_Start
    Created on : 11.02.2014, 14:53:09
    Author     : CaReich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% session =request.getSession(true); %>  <!-- Session für Login wird geöffnet -->
        <%
            String email = request.getParameter("e_mail");
            String passwort = request.getParameter("passwort");
            
            BL.Student.loginStudent(passwort, email);
        %>
            
    </body>
</html>
