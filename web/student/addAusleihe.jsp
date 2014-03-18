

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
        <title>Notebookausleihe gespeichert</title>
    </head>
    <body>
       <div>
         <p>Die Notebookausleihe wurde ergolgreich gespeichert. Es wurde eine E-Mail an Sie zur Bestätigung gesendet.
            Desweiteren wurde eine E-Mail an Ihren Dozenten gesendest, damit dieser die Ausleihe bestätigen kann.
         </p>
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
