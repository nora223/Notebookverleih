

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Administrator" %>
<%@page import="DAO.AdministratorDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notebookverwaltung</title>
    </head>
    <body>
       <div>
         <p>Hallo du hast erfolgreich einen Administrator geändert und angelegt</p>
        </div>
        
        
                            
                           <%                         
                              String id = request.getParameter("id");
                              long longid = Long.parseLong(id);
                              String name = request.getParameter("name");
                              String vorname = request.getParameter("vorname");
                              String e_Mail = request.getParameter("e_Mail");
                              String x = request.getParameter("geburtsdatum");
                              DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                              Date date = new Date();
                              
                              String geschlecht = request.getParameter("geschlecht");
                              
                        
                               Administrator a = new Administrator();
                        
                                  a.setId(longid);
                                  a.setName(name);
                                  a.setVorname(vorname);
                                  a.seteMail(e_Mail);
                                  a.setGebDat(date);
                                  
                                  a.setGeschlecht(geschlecht);
                                  
                                  Administrator.saveAdministrator(a);
                            %>
               
    </body>
</html>
