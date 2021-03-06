
<%-- 
    Document   : notebookauswahl
    Created on : 10.03.2014, 17:40:41
    Author     : Nora
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="BL.Ausleihe"%>
<%@page import="BL.Dozent"%>
<%@page import="java.util.List"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script> 
        <title>Notebookauswahl:</title>
    <div>
        <div>
            <a href='../student.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>

    <%
        String t = session.getAttribute("typ").toString();

        if (t.equals("Student")) {
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp");
            dispatcher.forward(request, response);
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
                    <a href="../student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="../notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href="../uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href="../account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">

                    <h1> Notebookauswahl: </h1> 


                    <%
                        int leihdauer = Integer.parseInt(request.getParameter("leihdauer"));
                        
                        int klasse = Integer.parseInt(request.getParameter("klasse"));

                    %> 
                    <div id="login"  style="width: 40em; padding: 15px">
                        <form action="addReservierung.jsp" methode ="POST">
                            <table> 
                                <tr>
                                    <td>Dozent:</td>
                                    <td>

                                        <select name="dozent" maxlenght="40">
                                            <% List<Dozent> dozentList = BL.Dozent.getDozentList();
                                                for (Dozent element : dozentList) {
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

                                        <% if (klasse == 1) {%>
                                        <input name="klasse" type="hidden" size ="20"  placeholder='Information' value="1" readonly="readonly">Notebook&starf;

                                        <%} else if (klasse == 2) {%>
                                        <input name="klasse" type="hidden" size ="20"  placeholder='Information' value="2" readonly="readonly">Notebook&starf;&starf;


                                        <%} else if (klasse == 3) {%>
                                        <input name="klasse" type="hidden" size ="20"  placeholder='Information' value="3" readonly="readonly">Notebook&starf;&starf;&starf;


                                        <%}%>
                                        <input name="leihdauer" type="hidden" size="20" value="<%=leihdauer%>"/>

                                        </p>
                                    </td> 
                                </tr>   
                                <tr>
                                    <td>Dauer (in Tagen):</td>
                                    <td>
                                            <% if (leihdauer == 7) {%>
                                        <input name="leihdauer" type="hidden" size ="20"  placeholder='Information' value="7" readonly="readonly">7

                                        <%} else if (leihdauer == 30) {%>
                                        <input name="leihdauer" type="hidden" size ="20"  placeholder='Information' value="30" readonly="readonly">30


                                        <%} else if (leihdauer == 90) {%>
                                        <input name="leihdauer" type="hidden" size ="20"  placeholder='Information' value="90" readonly="readonly">90


                                        <%}else if (leihdauer == 180) {%>
                                        <input name="leihdauer" type="hidden" size ="20"  placeholder='Information' value="180" readonly="readonly">180


                                        <%}%>
                                        
                                       </p>
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
                                    <td><input id="button" name="Speichern" type="submit" value="Speichern"></td>
                                </tr>


                            </table>        


                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
