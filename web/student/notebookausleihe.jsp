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


        String b = "nicht im Angebot";
        String c = "ab sofort (";
        String d = " verfügbar)";
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
                </div>
            </div>

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
                                </td> <!--bis 7  -->
                                <td>

                                    <button class="white"><%
                                        out.println(c + feld[1] + d);

                                        %> </button>
                                </td> <!--bis 30 -->
                                <td>
                                    <button class="white">
                                        <%
                                            out.println(c + feld[2] + d);
                                        %> </button>
                                </td> <!--bis 90 -->
                                <td>

                                    <button class="white"><%
                                        out.println(c + feld[3] + d);

                                        %> </button>
                                </td> <!--bis 180 -->
                            </tr>
                            <tr> 
                                <td>Notebook &starf;&starf;</td> <!--Modell -->
                                <td> 
                                    <button class="white"><%
                                        out.println(c + feld[4] + d);
                                        %> </button>
                                </td> <!--bis 7  -->
                                <td>
                                    <button class="white"><%
                                        out.println(c + feld[5] + d);
                                        %> </button>
                                </td> <!--bis 30 -->
                                <td>
                                    <button class="white"><%
                                        out.println(c + feld[6] + d);

                                        %> </button>
                                </td> <!--bis 90 -->
                                <td>
                                    <%
                                        out.println(b);

                                    %> </button>
                                </td> <!--bis 180 -->
                            </tr>
                            <tr>
                                <td>Notebook &starf;&starf;&starf;</td> <!--Modell -->
                                <td>
                                    <button class="white"><%
                                        out.println(c + feld[8] + d);

                                        %> </button>
                                </td> <!--bis 7  -->
                                <td>
                                    <button class="white"><%
                                        out.println(c + feld[9] + d);

                                        %> </button>
                                </td> <!--bis 30 -->
                                <td>
                                    <button class="white"><%
                                       out.println(c + feld[10] + d);
                                        %> </button>
                                </td> <!--bis 90 -->
                                <td>
                                    <%
                                        out.println(b);
                                    %> </button>
                                </td> <!--bis 180 -->
                            </tr>




                        </tbody>
                    </table>


                </div>
            </div>

        </div>    
</body>
</html>

