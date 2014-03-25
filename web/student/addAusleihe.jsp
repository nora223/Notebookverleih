

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
        
         <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Student")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
        }
        %>
        
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

            int klasse = Integer.parseInt(strklasse);
            
            String strdauer = request.getParameter("dauer");
            int dauer = Integer.parseInt(strdauer);

            String bs = request.getParameter("bs");
            String bemerkung = request.getParameter("bemerkung");

            List<Dozent> listDozent = DAO.DozentDAO.getDozentListDAO();
            Dozent dozent = new Dozent();
            for (Dozent element : listDozent) {
                if (name.equals(element.getName())) {
                    dozent.seteMail(element.geteMail());
                    dozent.setGebDat(element.getGebDat());
                    dozent.setGeschlecht(element.getGeschlecht());
                    dozent.setPasswort(element.getPasswort());
                    dozent.setUsername(element.getUsername());
                    dozent.setVorname(element.getVorname());
                    dozent.setId(element.getId());
                    dozent.setName(element.getName());
                }
            }
            
            List<Notebook> notebooklist = DAO.NotebookDAO.getNotebookListDAO();
            Notebook notebook = new Notebook();
            int i = 1;
            for (Notebook element : notebooklist) {
                
                out.println("Dauer:"+dauer);
                        out.println("Dauer aus der Liste"+ element.getLeihdauer());
                        out.println("Klasse:"+klasse);
                        out.println("Klasse aus der Liste"+element.getKlasse());

                if (element.getLeihdauer() == dauer && element.getKlasse() == klasse) {
                    out.print(i +"**************");
                        out.println("Dauer:"+dauer);
                        out.println("Dauer aus der Liste"+ element.getLeihdauer());
                        out.println("Klasse:"+klasse);
                        out.println("Klasse aus der Liste"+element.getKlasse());
                        i++;
                    
                        out.println(element.getId()+"bla");
                        notebook.setId(element.getId());
                        notebook.setKlasse(element.getKlasse());
                        notebook.setLeihdauer(element.getLeihdauer());
                        notebook.setName(element.getName());
                        String notebookStatus = "bestätigungAusstehend";
                        notebook.setNotebookStatus(notebookStatus);
                        notebook.setSeriennummer(element.getSeriennummer());
                        break;
                    
                }
            }

            List<Student> listStudent = BL.Student.getStudentList();

            Student student = new Student();

            for (Student element : listStudent) {
                if (username.equals(element.getUsername())) {
                    if (passwort.equals(element.getPasswort())) {

                        student.seteMail(element.geteMail());
                        student.setGebDat(element.getGebDat());
                        student.setGeschlecht(element.getGeschlecht());
                        student.setId(element.getId());
                        student.setKurs(element.getKurs());
                        student.setMatNr(element.getMatNr());
                        student.setName(element.getName());
                        student.setPasswort(element.getPasswort());
                        student.setUsername(element.getUsername());
                        student.setVorname(element.getVorname());

                    }
                }

            }

            Ausleihe a = new Ausleihe();

            a.setBermerkung(bemerkung);

            a.setBetriebssystem(bs);

            a.setLeihNotebook(notebook);
            a.setDauer(dauer);

            a.setStatus(
                    "bestätigungAusstehend");

            a.setMitarbeiter(dozent);
            a.setAntragssteller(student);
            

            BL.Ausleihe.saveAusleihe(a);


        %>

    </body>
</html>
