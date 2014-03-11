<%-- 
    Document   : notebookausleihe
    Created on : 
    Author     : cara123
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook ausleihen</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <%

        Integer[] feld = BL.Notebook.countNotebooks();
        
        Integer k1ld7 = feld[0];
        Integer k1ld30 = feld[1];
        Integer k1ld90 = feld[2];
        Integer k1ld180 = feld[3];
        Integer k2ld7 = feld[4];
        Integer k2ld30 = feld[5];
        Integer k2ld90 = feld[6];
        Integer k2ld180 = feld[7];
        Integer k3ld7 = feld[8];
        Integer k3ld30 = feld[9];
        Integer k3ld90 = feld[10];
        Integer k3ld180 = feld[11];
        
        String b = "nicht im Angebot";
        String c = "ab sofort (";
        String d = " verfügbar)";
        String nichtvorhanden ="ab ";
        String nichtvorhanden2 = " wieder verfügbar";
    %>
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
<form action="notebookauswahl.jsp" methode="POST">
            <div class="col-md-8">
                <div class="area">
                    <h1> Ausleihverwaltung </h1>
                    <p> Sie befinden sich im Ausleihverwaltung der Notebookausleihe!</p>
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
                                <td>Notebook &starf;</td> <!-- Das Modell -->
                                <td>
                                    <%
                                        out.println(b);
                                    %> 
                                </td> <!--bis 7 Klasse 1  -->
                                <td>

                                    <button class="white"><%
                                        if(k1ld30==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k1ld30 + d);  
                                        }
                                                                

                                        %> </button>
                                </td> <!--bis 30 Klasse 1-->
                                <td>
                                    <button class="white">
                                        <%
                                            if(k1ld90==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k1ld90 + d);  
                                        } 
                                        
                                        %> </button>
                                </td> <!--bis 90 Klasse 1-->
                                <td>

                                    <button class="white"><%
                                         if(k1ld180==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k1ld180 + d);  
                                        }
                                            
                                          %> </button>
                                </td> <!--bis 180 Klasse 1 -->
                            </tr>
                            <tr> 
                                <td>Notebook &starf;&starf;</td> <!--Modell -->
                                <td> 
                                    <button class="white"><%
                                         if(k2ld7==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k2ld7 + d);  
                                        }
                                         
                                         
                                        %> </button>
                                </td> <!--bis 7 Klasse 2 -->
                                <td>
                                    <button class="white"><%
                                         
                                          if(k2ld30==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k2ld30 + d);  
                                        }
                                      
                                        %> </button>
                                </td> <!--bis 30 Klasse 2-->
                                <td>
                                    <button class="white"><%
                                         if(k2ld90==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k2ld90 + d);  
                                        }
                                          
                                          

                                        %> </button>
                                </td> <!--bis 90 Klasse 2-->
                                <td>
                                    <%
                                        out.println(b);

                                    %> </button>
                                </td> <!--bis 180 Klasse 2-->
                            </tr>
                            <tr>
                                <td>Notebook &starf;&starf;&starf;</td> <!--Modell -->
                                <td>
                                    <button class="white"><%
                                         if(k3ld7==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k3ld7 + d);  
                                        }
                                        

                                        %> </button>
                                </td> <!--bis 7 Klasse 3 -->
                                <td>
                                    <button class="white"><%
                                         if(k3ld30==0){
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k3ld30 + d);  
                                        }
                                         

                                        %> </button>
                                </td> <!--bis 30 Klasse 3 -->
                                <td>
                                    <button class="white"><%
                                         if(k3ld90==0){
                                             
                                           out.println(nichtvorhanden+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k3ld90 + d);  
                                        }
                                         
                                        %> </button>
                                </td> <!--bis 90 Klasse 3 -->
                                <td>
                                    <%
                                        out.println(b);
                                    %> </button>
                                </td> <!--bis 180 Klasse 3-->
                            </tr>




                        </tbody>
                    </table>


                </div>
            </div>

        </div>    
                                    </form>
</body>
</html>

