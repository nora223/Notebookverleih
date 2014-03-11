<%-- 
    Document   : testfall_asdf
    Created on : 04.03.2014, 17:58:09
    Author     : Nora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Testen</h1>
        <% 
            Integer[] zaehlen = BL.Notebook.countNotebooks();
            
            
            %>
            
            
            <th><%= zaehlen[0]%></th>
            <th><%= zaehlen[1]%></th>
            <th><%= zaehlen[2]%></th>
            <th><%= zaehlen[3]%></th>
            <th><%= zaehlen[4]%></th>
            <th><%= zaehlen[5]%></th>
            <th><%= zaehlen[6]%></th>
            <th><%= zaehlen[7]%></th>
            <th><%= zaehlen[8]%></th>
            <th><%= zaehlen[9]%></th>
            <th><%= zaehlen[10]%></th>
            <th><%= zaehlen[11]%></th>
         
        
    </body>
</html>
