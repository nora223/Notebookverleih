<%-- 
    Document   : savestudent
    Created on : 13.02.2014, 10:57:56
    Author     : Tino
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.*" 
         import="java.util.*"
         import="java.text.DateFormat"

         %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Administrator speichern</title>
   <div>
        <div>
            <a href='admin.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>
    
     <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Admin")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
        }
    %>
    
</head>
<body>
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >Ausleih Verwaltung</a>
                    <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">

                    <h1>Registrierung erfolgreich!</h1>
                    <%
                        String geschlecht = request.getParameter("radio");
                        String nachname = request.getParameter("nachname");
                        String vorname = request.getParameter("vorname");
                        String email = request.getParameter("e_mail");
                        /*String kurs = request.getParameter("kurs");
                         out.println(kurs);
                         Integer matNummer = Integer.parseInt(request.getParameter("matNr"));
                         /*out.println(matNummer);*/
                        String x = request.getParameter("gebDat");
                        /*out.println(x);*/
                        DateFormat df = new SimpleDateFormat("dd:MM:yyyy");
                        /*out.println(df);*/
                        Date date = df.parse(x);
                        /*out.println(date);*/
                        String passwort = request.getParameter("passwort");
                        String username = request.getParameter("e_mail");

                        Dozent s = new Dozent(geschlecht, vorname, nachname, email, date, passwort, username);
                        Dozent.saveDozent(s);
                        //Alexey
                        //String messageContent = BL.Mail_arts.Dozent_welcome(s);
                        //BL.Mail.eMailcreate(messageContent, s.geteMail());
%>
                    <div>
                        <p>Folgende/r Dozent/in wurde erfolgreich angemeldet: 
                            <% out.println(vorname);
                                out.println(nachname);
                            %>
                            <br> Es wurde eine Best&auml;tigungs-Email an: 
                            <% out.println(email);%> gesendet. </p>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
