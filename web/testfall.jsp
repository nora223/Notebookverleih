<%-- 
    Document   : testfall
    Created on : 25.02.2014, 16:17:24
    Author     : Tino
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>List-Studenten</title>
    <div>
        <a href='index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <hr>
        <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>

<body>
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-8">
                <div class="area">
                    <h1> Liste Studenten </h1>
                    <p> Hier befinden sich die aktuell angelegten Studenten der Notebookausleihe</p>

                    <!-- Tabelle Student aus Datenbank-->       

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Id</th>
                                <th>Geschlecht</th>
                                <th>Vorname</th>
                                <th>Nachname</th>
                                <th>E-Mail</th>
                                <th>Geburtsdatum</th>
                                <th>Matrikelnummer</th>
                                <th>Kurs</th>        
                            </tr>
                        </thead>


                        <tbody>
                            <tr>

                                <%
                                    List list = BL.Student.getStudentList();
                                    for (int i = 0; i < list.size(); i++) {
                                        Object test = list.get(i);
                                        BL.Student student = (BL.Student) test;
                                        long id = student.getId();
                                        String geschlecht = student.getGeschlecht();
                                        String vorname = student.getVorname();
                                        String name = student.getName();
                                        String eMail = student.geteMail();
                                        Date geburtsdatum = student.getGebDat();
                                        int matNr = student.getMatNr();
                                        String kurs = student.getKurs();

                                %>


                                <th></th>
                                <th><%= id%></th>
                                <th><%= geschlecht.toString()%></th>
                                <th><%= vorname.toString()%></th>
                                <th><%= name.toString()%></th>
                                <th><%= eMail.toString()%></th>
                                <th><%= geburtsdatum%></th>
                                <th><%= matNr%></th>
                                <th><%= kurs.toString()%></th>
                                <th><input type="button" name="Bearbeiten" value="Bearbeiten"><th>




                            </tr>

                        </tbody>
                        <%
                            }
                        %>
                    </table>
                    <!-- Ende Tabelle Student aus Datenbank--> 
                    
                    
                    <h1> Liste Administrator </h1>
                    <p> Hier befinden sich die aktuell angelegten Administratoren der Notebookausleihe</p>

                    <!-- Tabelle Administrator aus Datenbank-->       

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Id</th>
                                <th>Geschlecht</th>
                                <th>Vorname</th>
                                <th>Nachname</th>
                                <th>E-Mail</th>
                                <th>Geburtsdatum</th>
                                        
                            </tr>
                        </thead>


                        <tbody>
                            <tr>

                                <%
                                    List listAdmin = BL.Administrator.getAdministratorList();
                                    for (int i = 0; i < listAdmin.size(); i++) {
                                        Object test = listAdmin.get(i);
                                        BL.Administrator administrator = (BL.Administrator) test;
                                        long id = administrator.getId();
                                        String geschlecht = administrator.getGeschlecht();
                                        String vorname = administrator.getVorname();
                                        String name = administrator.getName();
                                        String eMail = administrator.geteMail();
                                        Date geburtsdatum = administrator.getGebDat();
                                        

                                %>


                                <th></th>
                                <th><%= id%></th>
                                <th><%= geschlecht.toString()%></th>
                                <th><%= vorname.toString()%></th>
                                <th><%= name.toString()%></th>
                                <th><%= eMail.toString()%></th>
                                <th><%= geburtsdatum%></th>
                                <th><input type="button" name="Bearbeiten" value="Bearbeiten"><th>




                            </tr>

                        </tbody>
                        <%
                            }
                        %>
                    </table>
                    <!-- Ende Tabelle Administrator aus Datenbank--> 




                </div>
            </div>

        </div>    
</body>
</html>



