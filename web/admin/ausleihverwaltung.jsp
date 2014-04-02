<%-- 
    Document   : ausleihverwaltung
    Created on : 23.02.2014, 20:29:56
    Author     : CaReich
--%>
<%@page import="BL.Notebook"%>
<%@page import="BL.Dozent"%>
<%@page import="BL.Ausleihe"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Ausleihverwaltung</title>
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
    <%
        int a = 5;
        String b = "nicht im Angebot";
        String c = "ab sofort (";
        String d = " verfügbar)";
    %>
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a> 
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >Ausleih Verwaltung</a>
                    <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-8">
                <div class="area">
                    <h1> Ausleihverwaltung </h1>
                    <p> </p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Antragsteller</th>
                                <th>Auftragsdatum</th>
                                <th>Dozent</th>
                                <th>Notebook</th>
                                <th>Von: </th>
                                <th>Bis: </th>
                                <th>Status</th>
                                <th>Betriebssystem</th>
                                <th>Bemerkung</th>
                             
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                               List<Ausleihe> erg =  BL.Ausleihe.getListAusleihe();
                                for (Ausleihe element : erg){
                                long id = element.getId();
                                Student antragsteller = element.getAntragssteller();
                                Dozent mitarbeiter = element.getMitarbeiter();
                                Date date = element.getAuftragsdatum();
                                String bemerkung = element.getBermerkung();
                                String betriebssystem = element.getBetriebssystem();
                                Date bis = element.getBis();
                                int dauer = element.getDauer();
                                Notebook notebook = element.getLeihNotebook();
                                String status = element.getStatus();
                                Date von = element.getVon();
                                
                                
        %>
        <tr>
                            <td><%=id%></td>
                            <td><%=antragsteller.getVorname()+" "+antragsteller.getName()%></td>
                            <td><%=date%></td>
                            <td><%=mitarbeiter.getVorname()+" "+mitarbeiter.getName()%></td>
                            <td><%=notebook.getId()%></td>
                            <td><%=von%></td>
                            <td><%=bis%></td>
                            <td><%=status%></td>
                            <td><%=betriebssystem%></td>
                            <td><%=bemerkung%></td>
                            
        <td><a href="deleteAusleihe.jsp?id=<%=id%>&notebook=<%=notebook.getId()%>">L&ouml;schen</td>
        </tr>
         <%}%>
                        </tbody>
                    </table>

                   

                    <footer class="footer">
                        <input class="blue" name="button" type="submit" value="Speichern">
                        <input class="white"name="button" type="button" value="Zurück" onClick="self.location.href = 'admin.jsp'">
                    </footer>
                </div>
            </div>

        </div>    
</body>
</html>
