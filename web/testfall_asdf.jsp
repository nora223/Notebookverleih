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
            Integer zaehlen = BL.Notebook.countNotebooks();
            %>
            
            
            <th><%= zaehlen%></th>
        
    </body>
</html>
