<%-- 
    Document   : uebersicht
    Created on :
    Author     : cara123
--%>

<%@page import="BL.Dozent"%>
<%@page import="BL.Notebook"%>
<%@page import="java.util.Date"%>
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
        <title>&Uuml;bersicht</title>
           <div>
               
            <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
            <div id="logout"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div>
            <hr>
            <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
           </div>
   
    <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Student")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
        }
        
        String s = session.getAttribute("id").toString();
        long l = Long.parseLong(s);
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
                    <a href=".../student/student.jsp" class="list-group-item">Startseite</a>
                    <a href=".../student/notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href=".../student/uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href=".../student/account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    <h1> &Uuml;bersicht</h1> 
                    <p> Deine letzten Buchungen:
                        <!-- Tabelle -->
                    <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>Auftragsdatum</th>
                            <th>Modell</th>
                            <th>Betriebssystem</th>
                            <th>Ausleihdauer</th>
                            <th>Dozent</th>
                            <th>Status</th>
                            <th> </th><!--buttons  --> 
                          </tr>
                        </thead>
                        
                        <tbody>
                          <tr>
                            
                            <% List<Ausleihe> ausleiheList = BL.Ausleihe.getListAusleihe();
                                
                                for (Ausleihe element : ausleiheList){
                                    if(l == element.getAntragssteller().getId()){
                                        Date auftragsdatum = element.getAuftragsdatum();
                                        Notebook n = element.getLeihNotebook();
                                        String modell = n.getName();
                                        String betriebssystem = element.getBetriebssystem();
                                        int ausleihdauer = element.getDauer();
                                        Dozent d = element.getMitarbeiter();
                                        String dozent = d.getName();
                                        String status = element.getStatus();                     
                                        
                                        %>
                                        
                                        <td><%=auftragsdatum%></td>
                                        <td><%=modell%></td>
                                        <td><%=betriebssystem%></td>
                                        <td><%=ausleihdauer%></td>
                                        <td><%=dozent%></td>
                                        <td><%=status%></td>
                                        
                                        <td> <a href="delAusleihe.jsp">Stornieren</a></td>
                                                           
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
