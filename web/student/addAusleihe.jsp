

<%@page import="BL.Notebook"%>
<%@page import="BL.Student"%>
<%@page import="BL.Ausleihe"%>
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
                                                             
                              String username = request.getParameter("username");
                             String passwort = request.getParameter("passwort");
                             String name = request.getParameter("dozent");
                              
                             
                            String strklasse = request.getParameter("klasse");
                            
                            
                            
                              Integer klasse= Integer.parseInt(strklasse);
                           
                                                    
                             String strdauer = request.getParameter("dauer");
                              Integer dauer = Integer.parseInt(strdauer);
                              
                              
                            
                              String bs = request.getParameter("bs");
                              String bemerkung = request.getParameter("bemerkung"); 
                             
                             
                            Student antragssteller = BL.Student.getStudentbyUsername(username, passwort);
                             Dozent mitarbeiter = BL.Dozent.getDozentByName(name);
                             Notebook notebook = BL.Notebook.getNotebookByDauerUndKlasse(dauer, klasse);
                             
                             
                             
                             Ausleihe a = new Ausleihe();
                           
                             a.setBermerkung(bemerkung);
                             a.setBetriebssystem(bs);
                             a.setLeihNotebook(notebook);
                             a.setDauer(dauer);
                             a.setStatus("Verliehen");
                             
                             a.setMitarbeiter(mitarbeiter); 
                             a.setAntragssteller(antragssteller);
                             
                             
                             BL.Ausleihe.saveAusleihe(a);
                               
                        
                            %>
               
    </body>
</html>
