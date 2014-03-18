 <%@page import="BL.Dozent"%>
<%@page import="java.util.List"%>
<%-- 
    Document   : notebookauswahl
    Created on : 10.03.2014, 17:40:41
    Author     : Nora
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script> 
        <title>Notebookauswahl:</title>
           <div>
               
            <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
            <div id="logout"><a id="logout" href=".../logout.jsp"> Logout </a></div> <!-- Link für Logout-->
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        <div> <!-- Navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href="student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href="uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href="account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    
                    <h1> Notebookauswahl: </h1> 
                    
                   
                    <% 
                         Integer leihdauer = Integer.parseInt(request.getParameter("leihdauer"));
                         Integer klasse = Integer.parseInt(request.getParameter("klasse"));   
                        
                        
                        
                    %> 

                    
                    
                    
                 <table> 
                  <tr>
                    <td>Dozent:</td>
                    <td>
                       <select name="dozent" maxlenght="40">
                           <% List<Dozent> dozentList = BL.Dozent.getDozentList();
                            
                            for (Dozent element : dozentList){
                                long id = element.getId();
                                String name = element.getName();
                                String vorname = element.getVorname();
                               
                                %>
                           
                           
                            <option><%=name%>, <%=vorname%></option>
                           <%}%>
                        </select></p>   
                    </td>  
                 </tr> 
                 <tr>
                    <td>Notebook:</td>
                    <td>
                         
                              <% if(klasse == 1){  %>
                             
                            <option>Notebook&starf; </option>
                             <%} else if(klasse == 2){%>
                            
                            <option>Notebook&starf;&starf; </option>
                           
                             <%} else if (klasse == 3){%>
                            
                            <option>Notebook&starf;&starf;&starf;</option>
                           
                                 <%}%>
                            
                        </p>
                    </td> 
                </tr>   
                <tr>
                    <td>Dauer:</td>
                    <td>
                        <select name="dauer" maxlenght="40">
                         
                            
                            <% if(leihdauer == 7){  %>
                            <option>7 Tage</option>
                            <%} else if(leihdauer == 30){%>


                                   
                                <option>7 Tage</option> 
                               <option>30 Tage</option> 
                            <%} else if(leihdauer == 90){%>
                               <option>7 Tage</option> 
                               <option>30 Tage</option> 
                               <option>90 Tage</option>
                            <%} else if (leihdauer == 180){%>
                             <option>7 Tage</option> 
                             <option>30 Tage</option>                             
                             <option>90 Tage</option>
                             <option>180 Tage</option>

                            <%}%>
                            
                        </select></p>
                    </td>  
                </tr>
                 <tr>
                    <td>Betriebssystem:</td>
                    <td>
                        <select name="bs" maxlenght="40">
                            <option>Linux</option>
                            <option>Windows</option>
                        </select></p>
                    </td>  
                </tr>
                <tr>
                    <td>Bemerkung:</td> 
                    <td> <input name="bemerkung" type="textarea" size ="50"  placeholder='Information'></p></td>
                </tr>
                <tr>
                    <td><input id="button" name="Speichern" type="submit" value="Speichern"></td>
                </tr>
                
                
                </table>        
               <a href="addAusleihe.jsp?id=<%=id%>&name=<%=name%>&vorname=<%=vorname%>&geschlecht=<%=geschlecht%>&eMail=<%=eMail%>&geburtsdatum=<%=geburtsdatum%>">Bearbeiten</a>
              
                </div>
            </div>
        </div>    
    </body>
</html>
