

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Student" %>
<%@page import="DAO.StudentDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notebookverwaltung</title>
    </head>
    <body>
       <div>
         <p>Hallo du hast erfolgreich einen Student geändert und angelegt</p>
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
                              String kurs = request.getParameter("kurs");
                              Integer matNr = Integer.parseInt(request.getParameter("matNr"));
                              String geschlecht = request.getParameter("geschlecht");
                              
                        
                               Student s = new Student();
                        
                                  s.setId(longid);
                                  s.setName(name);
                                  s.setVorname(vorname);
                                  s.seteMail(eMail);
                                  s.setGebDat(date);
                                  s.setKurs(kurs);
                                  s.setMatNr(matNr);
                                  s.setGeschlecht(geschlecht);
                                  
                                  s.saveStudent(s);
                            %>
               
    </body>
</html>
