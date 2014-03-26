<%-- Alexey--%>

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
        <div id="logout"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div  class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active" >
                    NAVIGATION
                </a>
                <a href="admin/admin.jsp" class="list-group-item">Startseite</a> 
                <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
            </div>
        </div>

        <div class="col-md-6">
            <div class="area">
                <h1> Notebook bearbeiten </h1>
                <p> </p>


                <%
                    String id = request.getParameter("id");
                    String name = request.getParameter("name");
                    String seriennummer = request.getParameter("seriennummer");
                    String klasse = request.getParameter("klasse");
                    String leihdauer = request.getParameter("leihdauer");
                    String verliehen = new String(request.getParameter("verliehen").getBytes("UTF-8"), "UTF-8");
                   
                    
                    
                %>

                <div id="login">               
                    <form action="saveChangeNB.jsp" methode="POST">

                        <p><input name="id" type="hidden" value="<%=id%>" size="30" maxlength="40"></p>
                        <p>Name<br><input name="name" type="text" value="<%=name%>" size ="30" maxlength="40"></p>
                        <p>Seriennummer<br><input name="seriennummer" type="text" value="<%=seriennummer%>" size ="30" maxlength="40"></p>
                        <p>Klasse<br><input name="klasse" type="text" value="<%=klasse%>" size ="30" maxlength="40"></p> 
                        <p>Leihdauer<br><input name="leihdauer" type="text"value="<%=leihdauer%>" size ="30" maxlength="40"></p> 
                        
                        <p>Status
                          <%out.println("verliehen "+ verliehen);%>
                                <select maxlenght="40" widht="40" name="status">
                                   <% if(verliehen.equals("verfügbar")){ %>
                                    <option>verfügbar</option>
                                    <option>inBearbeitung</option>
                                    <option>defekt</option>
                                    <option>verliehen</option>
                                    <option>bestätigungAusstehend</option>
                                  <%  }else if(verliehen.equals("inBearbeitung")){ %>
                                    <option>inBearbeitung</option>
                                    <option>defekt</option>
                                    <option>verliehen</option>
                                    <option>bestätigungAusstehend</option>
                                    <option>verfügbar</option>
                                   <% }else if(verliehen.equals("defekt")){ %>
                                    <option>defekt</option>
                                    <option>verliehen</option>
                                    <option>bestätigungAusstehend</option>
                                    <option>verfügbar</option>
                                    <option>inBearbeitung</option>
                                   <% }else if(verliehen.equals("verliehen")){ %>
                                    <option>verliehen</option>
                                    <option>bestätigungAusstehend</option>
                                    <option>verfügbar</option>
                                    <option>inBearbeitung</option>
                                    <option>defekt</option>
                                  <%  }else if(verliehen.equals("bestätigungAusstehend")){ %>
                                    <option>bestätigungAusstehend</option>
                                    <option>verfügbar</option>
                                    <option>inBearbeitung</option>
                                    <option>defekt</option>
                                    <option>verliehen</option>
                                   <% } %>
                                    
                                    
                                    
                                </select>
                            </p>
                        
                        
                        
                        <p><input id="button" name="button" type="submit" value="Speichern">

                    </form>
                    </tbody>
                </div>
            </div>
        </div>
    </div>        
</body>
</html>

