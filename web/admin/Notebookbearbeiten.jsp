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
            <a href='index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
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
                    <a href="admin/admin.jsp" class="list-group-item">Startseite</a> 
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div>
                    
    
                          <%
                              String id = request.getParameter("id");
                              String name = request.getParameter("name");
                              String seriennummer = request.getParameter("seriennummer");
                              String klasse = request.getParameter("klasse");
                              String leihdauer = request.getParameter("leihdauer");
                              String ausleihstatus = request.getParameter("ausleihstatus");
                           %>
                           
                         
          <form action="saveNB.jsp" methode="POST">
              
                     
              <p> Bearbeiten</p>
              <p>id<input name="id" type="hidden" value="<%=id%>" size="30" maxlength="40"></p>
              <p>name<input name="name" type="text" value="<%=name%>" size ="30" maxlength="40"></p>
              <p>Seriennummer<input name="Seriennummer" type="text" value="<%=seriennummer%>" size ="30" maxlength="40"></p>
              <p>Klasse<input name="Klasse" type="text" value="<%=klasse%>" size ="30" maxlength="40"></p> 
              <p>Leihdauer<input name="Leihdauer" type="text"value="<%=leihdauer%>" size ="30" maxlength="40"></p> 
              <p>Ausleihstatus<input name="Auslehstatus" type="text" value="<%=ausleihstatus%>" size ="30" maxlength="40"></p> 
              <p><input id="button" name="button" type="submit" value="Speichern">
                  
              
             
          </form>
                    
           
                </tbody>

                    
                </div>
            </div>
       </div>
    </body>
</html>
