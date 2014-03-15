<%-- 
    Document   : notebookverwaltung
    Created on : 23.02.2014, 20:32:17
    Author     : CaReich
--%>

<%@page import="java.util.Date"%>
<%@page import="BL.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Studenten Verwaltung</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div  class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active" >
                    NAVIGATION
                </a>
                <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a> 
                <a href="ausleihverwaltung.jsp" class="list-group-item">Ausleih Verwaltung</a>
                <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
            </div>
        </div>

        <div class="col-md-8">
            <div>
                <h1> Studentenverwaltung </h1>
                <p>Übersicht aller registrierten Studenten</p>
                
            <table class="table table-hover">
                
                  <thead><tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Vorname</th>
                        <th>Geschlecht</th>
                        <th>E-Mail</th>
                        <th>Geburtsdatum</th>
                        <th>Kurs</th>
                        <th>Matrikelnummer<th>
                        <th>
                            <!-- Platzhalter  Bearbeiten -->
                        </th>
                        <th>
                            <!-- Platzhalter PW zurücksetzten-->
                        </th>
                        <th>
                            <!-- Platzhalter Löschen-->
                        </th>
                    </tr></thead>

                    <tbody>
                        <tr>
                            <% List<Student> studentList = BL.Student.getStudentList();
                            
                            for (Student element : studentList){
                                long id = element.getId();
                                String name = element.getName();
                                String vorname = element.getVorname();
                                String geschlecht = element.getGeschlecht();
                                String eMail = element.geteMail();
                                Date geburtsdatum = element.getGebDat();
                                String kurs = element.getKurs();
                                int matNr =element.getMatNr();
                                
                                %>
                            
                            
                            <td><%=id%></td>
                            <td><%=name%></td>
                            <td><%=vorname%></td>
                            <td><%=geschlecht%></td>
                            <td><%=eMail%></td>
                            <td><%=geburtsdatum%></td>
                            <td><%=kurs%></td>
                            <td><%=matNr%></td>
                            
                           <%-- <td><a href="changeStudent.jsp"><button class="blue">Bearbeiten</button></a></td>
                            <td><a href="PW_back.jsp"><button class="blue">PW reset</button></a></td>
                            <td><input class="white" name="button" type="submit" value="Löschen"></td> --%>
                            
                            <td> <a href="changeStudent.jsp?id=<%=id%>&name=<%=name%>&vorname=<%=vorname%>&geschlecht=<%=geschlecht%>&eMail=<%=eMail%>&geburtsdatum=<%=geburtsdatum%>&kurs=<%=kurs%>&matNr=<%=matNr%>">Bearbeiten</a></td>
                            <td><a href="deleteStudent.jsp?id=<%=id%>">Löschen</td> 
                        </tr>
                        <%}%>

                    </tbody>

                </table>

                <footer class="footer">
                    <a href="addStudent.jsp"><button class="blue">Hinzufügen</button></a>
                    <input class="white"name="button" type="button" value="Zurück" onClick="self.location.href = 'admin.jsp'">
                </footer>
            </div>
        </div>
    </div>
</body>
</html>
