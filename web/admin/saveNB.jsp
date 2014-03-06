<%--Alexey--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Notebook" %>
<%@page import="DAO.NotebookDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notebookverwaltung</title>
    </head>
    <body>
       <div>
         <p>Hallo du hast erfolgreich einen NB angelegt</p>
        </div>
                           <%                         
                              String id = request.getParameter("id");
                              String name = request.getParameter("name");
                              String seriennummer = request.getParameter("seriennummer");
                              String klasse = request.getParameter("klasse");
                              String leihdauer = request.getParameter("leihdauer");
                              String ausleihstatus = request.getParameter("ausleihstatus");
                           
                              long longid = Long.parseLong(id);
                             %>
                             <%-- int  intleihdauer = Integer.valueOf(leihdauer);
                              int  intklasse = Integer.valueOf(klasse);--%>
                             <%
                              Notebook n = new Notebook();
                        
                              n.setId(longid);
                              n.setName(name);
                              n.setSeriennummer(seriennummer);
                              %>
                              <%--n.setKlasse(intklasse);
                              n.setLeihdauer(intleihdauer);--%>
                              <%
                              Notebook.saveNotebook(n);
                            %>
               
    </body>
</html>
