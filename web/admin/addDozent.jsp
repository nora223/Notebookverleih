

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Dozent" %>
<%@page import="DAO.DozentDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dozentverwaltung</title>
    </head>
    <body>
       <div>
         <p>Hallo du hast erfolgreich einen Dozent geändert und angelegt</p>
        </div>
        
        
                            
                           <%                         
                              String id = request.getParameter("id");
                              long longid = Long.parseLong(id);
                              String name = request.getParameter("name");
                              String vorname = request.getParameter("vorname");
                              String eMail = request.getParameter("eMail");
                              String x = request.getParameter("geburtsdatum");
                              DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                              Date date = new Date();
                              String geschlecht = request.getParameter("geschlecht");
                              
                        
                               Dozent d = new Dozent();
                        
                                  d.setId(longid);
                                  d.setName(name);
                                  d.setVorname(vorname);
                                  d.seteMail(eMail);
                                  d.setGebDat(date);
                                  
                                  d.setGeschlecht(geschlecht);
                                  
                                  Dozent.saveDozent(d);
                            %>
               
    </body>
</html>
