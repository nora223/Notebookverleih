<%-- 
    Document   : index
    Created on : 11.02.2014, 13:30:04
    Author     : Bitte eintragen!
--%>

<%@page import="BL.Ausleihe"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         %>
<!--<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Notebook ablehnen</title>
     <div>
        <div>
            <a href='dozent.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>
    
    <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Dozent")){
           
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
                    <a href="dozent.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="notebookausleihedozent.jsp" class="list-group-item" >Ausleihe</a>

                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1>Anfrage ablehnen!</h1>
                    <p> Sie haben die Anfrage des Studenten nicht akzeptiert. </p>
                    <p>Bitte tragen Sie eine kurze Begründung für Ihre Entscheidung ein: <br><input name="begründung" type="text" width="100" height="200"></p>

                    <form action="notebookabgelehnt.jsp" method="POST">
                        <input type="button" name="senden" value="Senden!">


                        <%
                            String Str_id = request.getParameter("id");
                            long id = Long.parseLong(Str_id);

                            List<Ausleihe> list = BL.Ausleihe.getAusleiheList();
                            long auslId = 0;
                            for (Ausleihe element : list) {
                                if (id == element.getAntragssteller().getId()) {

                                    auslId = element.getId();
                                    break;

                                }

                            }

                            BL.Ausleihe.deleteAusleiheByID(auslId);
                        %>


                    </form>  
                </div>
            </div>
        </div>    



</body>
</html>
