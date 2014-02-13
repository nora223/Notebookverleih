<%-- 
    Document   : savestudent
    Created on : 13.02.2014, 10:57:56
    Author     : Tino
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         import="DAO.StudentDAO"
         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>hello world</h1>
          <% 
              
            String nachname = request.getParameter("nachname");
            out.println(nachname);
            String vorname = request.getParameter("vorname");
            out.println(vorname);
            String email = request.getParameter("e_mail");
            out.println(email);
            
            String kurs = request.getParameter("kurs");
            out.println(kurs);
            Integer matNummer = Integer.parseInt(request.getParameter("matNr"));
            out.println(matNummer);
            String x = request.getParameter("gebDat");
            out.println(x);
            DateFormat df = new SimpleDateFormat("dd:MM:yyyy");
            /*out.println(df);*/
            Date date = df.parse(x);           
            out.println(date);
            Student s = new Student(vorname, nachname, email, date, matNummer, kurs);
            DAO.StudentDAO.createStudent(s);
            
         %>
    </body>
</html>
