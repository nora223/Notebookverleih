<%-- 
    Document   : index
    Created on : 11.02.2014, 13:30:04
    Author     : Nora
--%>

<%@page import="BL.Warteschlange"%>
<%@page import="BL.Ausleihe"%>
<%@page import="BL.Notebook"%>
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
        <title>Administrator gel&ouml;scht</title>
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
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >Ausleihverwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebookverwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">Userverwaltung</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1>Ausleihe wurde erfolgreich gelöscht! </h1>
                    <%
                        String id = request.getParameter("id");
                        long longid = Long.parseLong(id);
                        
                        String strNotebookId = request.getParameter("notebook");
                        long notebookId = Long.parseLong(strNotebookId);
                        
                        boolean wert = Warteschlange.checkWarteschlange(notebookId);
                        Notebook notebook = BL.Notebook.getNotebookById(notebookId);
                        if(wert  == false){
                           BL.Notebook.updateNotebookStatus(notebook, "verfügbar");
                        }
                         Ausleihe.deleteAusleiheByID(longid);
                        
                        %>
                        
                </div>
            </div>
        </div>    



</body>
</html>
