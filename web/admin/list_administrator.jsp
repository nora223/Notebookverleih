<%-- 
    Document   : notebookverwaltung
    Created on : 23.02.2014, 20:32:17
    Author     : CaReich
--%>

<%@page import="java.util.Date"%>
<%@page import="BL.Administrator "%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Administrator Verwaltung</title>
    <div>
        <div>
            <a href='admin.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>
    
     <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Admin")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
        }
    %>
    
</head>
<body>
        <div class="row">
            <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active" >
                    NAVIGATION
                </a>
                <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a> 
                <a href="ausleihverwaltung.jsp" class="list-group-item">Ausleih Verwaltung</a>
                <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
            </div>
        </div>

            <div class="col-md-8">
            <div>
                <h1> Administratorverwaltung </h1>
                <p>&Uuml;bersicht aller registrierten Administratoren</p>
                
            <table class="table table-hover">
                
                  <thead><tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Vorname</th>
                        <th>Geschlecht</th>
                        <th>E-Mail</th>
                        <th>Geburtsdatum</th>
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
                            <% List<Administrator> AdministratorList = BL.Administrator.getAdministratorList();
                            
                            for (Administrator element : AdministratorList){
                                long id = element.getId();
                                String name = element.getName();
                                String vorname = element.getVorname();
                                String geschlecht = element.getGeschlecht();
                                String eMail = element.geteMail();
                                Date geburtsdatum = element.getGebDat(); 
                                %>
                            <td><%=id%></td>
                            <td><%=name%></td>
                            <td><%=vorname%></td>
                            <td><%=geschlecht%></td>
                            <td><%=eMail%></td>
                            <td><%=geburtsdatum%></td>

                           <td><a href="changeAdmin.jsp?id=<%=id%>&name=<%=name%>&vorname=<%=vorname%>&geschlecht=<%=geschlecht%>&eMail=<%=eMail%>&geburtsdatum=<%=geburtsdatum%>">Bearbeiten</a></td>
                           <td><a href="deleteAdmin.jsp?id=<%=id%>">L&ouml;schen</td> 
                        </tr>
                        <%}%>

                    </tbody>

                </table>

                <footer class="footer">
                    <a href="addAdmin.jsp"><button class="blue">Hinzuf&uuml;gen</button></a>
                    <input class="white"name="button" type="button" value="Zurück" onClick="self.location.href = 'admin.jsp'">
                </footer>
            </div>
        </div>
    </div>
</body>
</html>
