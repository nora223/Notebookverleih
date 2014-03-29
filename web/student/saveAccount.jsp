<%-- 
    Document   : saveAccount
    Created on : 29.03.2014, 11:20:15
    Author     : Boss
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="BL.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script> 
        <title>Student</title>
    <div>
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
                    <p>Sie haben Ihre persönlichen Daten erfolgreich geändert!</p>
                    
                <%
                    String i = request.getParameter("id");
                    long id = Long.parseLong(i);
                    String name = request.getParameter("name");
                    String vorname = request.getParameter("vorname");
                    String e_Mail = request.getParameter("e_Mail");
                    String passwort = request.getParameter("passwort");
                    String x = request.getParameter("gebDat");
                    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = df.parse(x);
                    String kurs = request.getParameter("kurs");
                    int matNr = Integer.parseInt(request.getParameter("matNr"));
                    String geschlecht = request.getParameter("radio");


                    Student s = new Student();

                    s.setId(id);
                    s.setName(name);
                    s.setVorname(vorname);
                    s.seteMail(e_Mail);
                    s.setPasswort(passwort);
                    s.setGebDat(date);
                    s.setKurs(kurs);
                    s.setMatNr(matNr);
                    s.setGeschlecht(geschlecht);
                    s.setUsername(e_Mail);

                    Student.saveStudent(s);
                %>
                </div>
            </div>
        </div>    
</body>
</html>

