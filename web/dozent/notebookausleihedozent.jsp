<%-- 
    Document   : notebookausleihedozent
    Created on : 
    Author     : cara123
--%>


<%@page import="BL.Student"%>
<%@page import="BL.Dozent"%>
<%@page import="BL.Ausleihe"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook best&auml;tigen</title>
             <div>
        <div>
            <a href='../dozent/notebookausleihedozent.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>
   
   <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Dozent")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
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
                    <a href="../dozent/notebookausleihedozent.jsp" class="list-group-item">Startseite</a>

           
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    
                    <%
                        String s = session.getAttribute("id").toString();
                        long l = Long.parseLong(s);
                    %>
              
                    Diese Anfragen m&uuml;ssen noch best&auml;tigt oder abgelehnt werden:
                    <!-- Tabelle -->
                        <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>ID</th>
                            <th>Vorname</th>
                            <th>Nachname</th>
                            <th>Kurs</th>
                            <th>Leihdauer</th>
                            <th>Notebookkategorie</th>
                          </tr>
                        </thead>
                        <tbody>
                            <tr>
                                
                                <% List<Ausleihe> ausleiheList = BL.Ausleihe.getListAusleihe();
                                
                                for (Ausleihe element : ausleiheList){
                                    if(l== element.getMitarbeiter().getId() && element.getStatus().equals("bestätigungAusstehend")){
                                        long id = element.getId();
                                        String vorname = element.getAntragssteller().getVorname();
                                        String name = element.getAntragssteller().getName();
                                        String kurs = element.getAntragssteller().getKurs();
                                        int leihdauer = element.getDauer();
                                        int kategorie = element.getLeihNotebook().getKlasse();
                                        Dozent dozent = element.getMitarbeiter();
                                        Student student = element.getAntragssteller();
                                        
                                        
                                        %>
                                        <td><%=id%></td>
                                        <td><%=vorname%></td>
                                        <td><%=name%></td>
                                        <td><%=kurs%></td>
                                        <td><%=leihdauer%></td>
                                        <td><%=kategorie%></td>
                                        
                                   
                                        <td> <a href="../dozent/NBaccept.jsp?id=<%=id%>">Akzeptieren</a></td>
                                        <td><a href="../dozent/NBdecline.jsp?id=<%=id%>">Ablehnen</a></td> 
                        </tr>
                        <%} 
                                }%>
                          
                        </tbody>
                      </table>
                    
                </div>
            </div>
        </div>    
    </body>
</html>
