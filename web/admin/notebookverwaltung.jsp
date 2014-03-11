<%--
    Document   : notebookverwaltung
    Created on : 23.02.2014, 20:32:17
    Author     : CaReich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="BL.Notebook" %>
<%@page import="DAO.NotebookDAO" %>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook Verwaltung</title>
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
                    <a href="admin.jsp" class="list-group-item">Startseite</a> 
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div>
                    <h1> Notebookverwaltung </h1>
                    <p>Übersicht aller registrierten Notebooks</p>

                    <table class="table table-hover">

                    <thead><tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Seriennummer</th>
                        <th>Klasse</th>
                        <th>Leihdauer</th>
                        <th>Ausleihstatus</th>
                        <th>Funktionalität</th>
                        <th>
                            
                        </th>
                        <th>
                            
                        </th>
                    </tr></thead>

                    <tbody>
                        <tr>
                            
                   <% List<Notebook> notebookList = DAO.NotebookDAO.getNotebookListDAO();
                     
                        for (Notebook element : notebookList) {
                          long id = element.getId();
                          String name = element.getName();
                          String seriennummer= element.getSeriennummer();
                          int klasse=element.getKlasse();
                          int leihdauer=element.getLeihdauer();
                          boolean verliehen= element.isVerliehen();
                           %>
                           <td><%=id%></td>
                            <td><%=name%></td>
                            <td><%=seriennummer %></td>
                            <td><%=klasse%></td>
                            <td><%=leihdauer%></td>
                            <td><%=verliehen%></td>
                            
                            <td><a href="Notebookbearbeiten.jsp?id=<%=id%>&name=<%=name%>&seriennummer=<%=seriennummer%>&klasse=<%=klasse%>&leihdauer=<%=leihdauer%>&verliehen=<%=verliehen%>">Bearbeiten</a></td>
                            <!--<td><a href ="ChangeAusleihe.jsp">Bearbeiten</td>-->
                            <td><input class="white" name="button" type="submit" value="Löschen"></td> 
                        </tr>
                   <%}%>
                        
                    </tbody>

                    </table>
                </div>
            </div>
       </div>
    </body>
</html>
