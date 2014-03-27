<%@page import="BL.Ausleihe"%>
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
               
           <div class="col-md-2"><a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a></div>
           <div id="logout" class="col-md-2"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div> 
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
                    <a href=".../student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href=".../notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href=".../uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href=".../account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    
                    <h1> Notebookauswahl: </h1> 
                    
                   
                    <% 
                         Integer leihdauer = Integer.parseInt(request.getParameter("leihdauer"));
                         Integer klasse = Integer.parseInt(request.getParameter("klasse"));   
                        
                    %> 

                    <form action="addAusleihe.jsp" methode ="POST">
                    
                    
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
                           
                           
                            <option><%=name%></option>
                           <%}%>

                       </select></p>   
                    </td>  
                 </tr> 
                 <tr>
                    <td>Notebook:</td>
                    <td>
                         
                              <% if(klasse == 1){  %>
                              <input name="klasse" type="hidden" size ="20"  placeholder='Information' value="1" readonly="readonly">Notebook&starf;
                            
                             <%} else if(klasse == 2){%>
                            <input name="klasse" type="hidden" size ="20"  placeholder='Information' value="2" readonly="readonly">Notebook&starf;&starf;
                         
                           
                             <%} else if (klasse == 3){%>
                            <input name="klasse" type="hidden" size ="20"  placeholder='Information' value="3" readonly="readonly">Notebook&starf;&starf;&starf;
                           
                           
                                 <%}%>
                            
                        </p>
                    </td> 
                </tr>   
                <tr>
                    <td>Dauer (in Tagen):</td>
                    <td>
                        <select name="dauer" maxlenght="40" >
                         
                            
                            <% if(leihdauer == 7 && klasse != 1){  %>
                            <option>7</option>
                            <%} else if(leihdauer == 30 && klasse != 1){%>
                                <option>30</option> 
                                <option>7</option> 
                               
                            <%} else if(leihdauer == 90 && klasse != 1){%>
                               
                               <option>90</option>
                               <option>7</option> 
                               <option>30</option> 
                           
                             <%} else if (leihdauer == 30 && klasse == 1){%>
                              <option>30</option>
                              <%} else if (leihdauer == 90 && klasse == 1){%>
                                                          
                             <option>90</option>
                             <option>30</option> 
                              <%} else if (leihdauer == 180 && klasse == 1){%>
                             
                             <option>180</option>
                              <option>30</option>                             
                             <option>90</option>
                            <%}%>
                            
                        </select></p>
                    </td>  
                </tr>
                 <tr>
                    <td>Betriebssystem:</td>
                    <td>
                        <select name="bs" maxlenght="40" value="betriebssystem">
                            <option>Linux</option>
                            <option>Windows</option>
                        </select></p>
                    </td>  
                </tr>
                <tr>
                    <td>Bemerkung:</td> 
                    
                    <td> <input name="bemerkung" type="textarea" size ="50"  placeholder='Information' value="bemerkung"></p></td>
                </tr>
                <tr>
                    <td><input id="button" name="Speichern" type="submit" value="Speichern"></td>
                </tr>
                
                
                </table>        
     
                
                    </form>
                </div>
            </div>
        </div>    
    </body>
</html>
