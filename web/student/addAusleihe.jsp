

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
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script> 
        <title>Notebookausleihe gespeichert</title>


    </head>
    <body>
        <div>
            <a href='student.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>
    <%
        String t = session.getAttribute("typ").toString();
        String i = session.getAttribute("id").toString();
        long id = Long.parseLong(i);
        if (t.equals("Student")) {
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp");
            dispatcher.forward(request, response);
        }
    %>

</head>
<body>
    <div> <!-- Navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="../student/student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="../student/notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href="../student/uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href="../student/account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>

            <div class="col-md-8">
                <div class="area">
                    <h1>Notebookausleihe erfolgreich!</h1>
                    <p></p>
                    <p>Ihre Notebookausleihe wurde erfolgreich gespeichert. <br>
                        Es wurde eine E-Mail an Ihren zuständigen Dozenten gesendet, damit dieser die Ausleihe best&auml;tigen kann.
                    </p>
                </div>

                <%
                    String name = request.getParameter("dozent");

                    String strklasse = request.getParameter("klasse");

                    int klasse = Integer.parseInt(strklasse);

                    String strdauer = request.getParameter("dauer");
                    int dauer = Integer.parseInt(strdauer);

                    String bs = request.getParameter("bs");
                    String bemerkung = request.getParameter("bemerkung");

                    String leihdauerStr = request.getParameter("leihdauer");
                    int leihdauer = Integer.parseInt(leihdauerStr);

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

                    for (Notebook element : notebooklist) {

                        if (element.getLeihdauer() == leihdauer && element.getKlasse() == klasse && element.getNotebookStatus().equals("verfügbar")) {

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
                    BL.Notebook.updateNotebookStatus(notebook, "bestätigungAusstehend");

                    List<Student> listStudent = BL.Student.getStudentList();

                    Student student = new Student();

                    for (Student element : listStudent) {
                        if (id == element.getId()) {

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

                    Ausleihe a = new Ausleihe();

                    a.setBermerkung(bemerkung);

                    a.setBetriebssystem(bs);

                    a.setLeihNotebook(notebook);
                    a.setDauer(dauer);
                    a.setAuftragsdatum(new Date());

                    a.setStatus(
                            "bestätigungAusstehend");

                    a.setMitarbeiter(dozent);
                    a.setAntragssteller(student);

                    BL.Ausleihe.saveAusleihe(a);

                    String messageContent = BL.Mail_arts.application_confirm(bemerkung,a, notebook, dozent, student);
                    BL.Mail.eMailcreate(messageContent, dozent.geteMail());


                %>
            </div>
        </div>
    </div>
</body>
</html>
