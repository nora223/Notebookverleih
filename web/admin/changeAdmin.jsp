<%-- 
    Document   : changedozent
    Created on : 09.03.2014, 12:48:56
    Author     : CaReich
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="BL.Administrator" %>
<%@page import="DAO.AdministratorDAO " %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <link rel="stylesheet" href =".../calender/3-dynamically-created/tcal.css" type ="text/css" />
        <script type="text/javascript" src=".../calender/3-dynamically-created/tcal.js" language="JavaScript"></script>
        
    <title>Change Administrator</title>
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
                    <a href=".../index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a> 
                    <a href ="admin.jsp" class="list-group-item">Adminbereich</a>
                    
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> User &Auml;nderungen </h1>
                    <p> Es handelt sich hierbei um einen bereits registrierten Benutzer. Seien Sie vorsichtig bei der Bearbeitung dieser Daten!</p>
               
               
                             <%
                             String id = request.getParameter("id");
                             String name = request.getParameter("name");
                             String vorname = request.getParameter("vorname");
                             String geschlecht = request.getParameter("geschlecht");
                             String eMail = request.getParameter("eMail");
                             String x = request.getParameter("geburtsdatum");
                             DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                            Date date = new Date();
                            date = df.parse(x) ; 

                          
                            %>
                           
                           <div id="login">
                               
                    <form action="addDozent.jsp" methode="POST">
                        
                        <p><input name="id" type="hidden" value="<%=id%>" size="30" maxlength="40"></p>
                     
                     <% if (geschlecht.equals("w")) { %> 
                     <p>
                       <input type="radio" name="radio" value="weiblich" checked>weiblich
                       <input   type="radio" name="radio" value="männlich">männlich</p> 
                     <% }
                     else { %>
                         <p>
                         <input type="radio" name="radio" value="weiblich" >weiblich
                         <input   type="radio" name="radio" value="männlich" checked>männlich</p> 
                    
                     <%    } %>
                     
                      <p>Nachname<br><input name="name" type="text" value="<%=name%>" size="30" maxlength="40"></p>
                      <p>Vorname<br><input name="vorname" type="text" value="<%=vorname%>" size ="30" maxlength="40"></p>
                      <p>E-mail<br><input name="eMail" type="text" value="<%=eMail%>"  size ="30" maxlength="40"></p>
                      <p>Geburtsdatum<br><input class="tcal tcalInput" name="gebDat" type="text" value="<%=x%>"  size ="30" maxlength="40"></p>
                      
                      
                      <p><input name="button" type="submit" value="anlegen"></p>
                </form>
                          </tbody> 
                </div>
                </div>
            </div>
         </div>
    </body>
</html>
