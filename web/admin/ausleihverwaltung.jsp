<%-- 
    Document   : ausleihverwaltung
    Created on : 23.02.2014, 20:29:56
    Author     : CaReich
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         
         

         %>

<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Ausleihverwaltung</title>
           <div>
            <a href='index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
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
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    <h1> Ausleihverwaltung </h1>
                    <p> Sie befinden sich im Ausleihverwaltung der Notebookausleihe!</p>
                    Geräteauswahl
                    <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>Modell</th>
                            <th>bis 7 Tage</th>
                            <th>bis 30 Tage</th>
                            <th>bis 90 Tage</th>
                            <th>bis 180 Tage</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>Notebook &starf;</td> <!--Modell -->
                            <td>
                                <% 
                                    if(false){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 7  -->
                            <td>
                                <% 
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 30 -->
                            <td>
                                <% 
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 90 -->
                            <td>
                                <%
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 180 -->
                            
                          </tr>
                          <tr> 
                            <td>Notebook &starf;&starf;</td> <!--Modell -->
                            <td><% 
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 7  -->
                            <td><%
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 30 -->
                            <td><%
                                    if(false){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 90 -->
                            <td><% 
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 180 -->
                          </tr>
                          <tr>
                            <td>Notebook &starf;&starf;&starf;</td> <!--Modell -->
                            <td><%
                                    if(false){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 7  -->
                            <td><% 
                                    if(false){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 30 -->
                            <td><%
                                    if(true){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 90 -->
                            <td><% 
                                    if(false){
                                        out.println(b);
                                   }else{%>
                                   <button class="white"><%
                                        out.println(c);out.println(a); out.println(d);
                                    }
                                %> </button>
                            </td> <!--bis 180 -->
                          </tr>
                      
                         
                  
                          
                        </tbody>
                      </table>
               
               <p>Bemerkung: <input name="bemerkung" type="text" size ="50" maxlength="40" value='z. B. geplanter Verwendungszweck des Notebooks'></p>
               <p >Mitarbeiter<select name="status" widht="40"maxlenght="40">
                  <option></option>
                  <option></option>
                  <option></option>
              </select></p>  
              
              <footer class="footer">
                  <input class="blue" name="button" type="submit" value="Speichern">
                  <input class="white"name="button" type="button" value="Zurück" onClick="self.location.href='admin.jsp'">
              </footer>
                </div>
            </div>
         
        </div>    
    </body>
</html>
