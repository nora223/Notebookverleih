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
         <p>Hallo du hast erfolgreich einen NB geändert und angelegt</p>
        </div>
                           <%                         
                              String id = request.getParameter("id");
                              long longid = Long.parseLong(id);
                              String name = request.getParameter("name");
                              String seriennummer = request.getParameter("seriennummer");
                              Integer klasse = Integer.parseInt(request.getParameter("klasse"));
                              Integer leihdauer = Integer.parseInt(request.getParameter("leihdauer"));
                              
                              
                              boolean status;
                              if(request.getParameter("verliehen")=="true"){
                               status = true;
                              }
                              else{
                               
                               status = false;
                              
                              }
                              
                              
                        
                               Notebook n = new Notebook();
                        
                                  n.setId(longid);
                                  n.setName(name);
                                  n.setSeriennummer(seriennummer);
                                  n.setKlasse(klasse);
                                  n.setLeihdauer(leihdauer);
                                  n.setVerliehen(status);
                               
                               Notebook.saveNotebook(n);
                            %>
               
    </body>
</html>
