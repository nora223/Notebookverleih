<%-- 
    Document   : index
    Created on : 11.02.2014, 13:30:04
    Author     : CaReich
--%>

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
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook erfolgreich angelegt</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> (Logout) </a></div>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    
    <%
        String name = request.getParameter("name");
        String seriennummer = request.getParameter("seriennummer");
        String s = request.getParameter("klasse");
        int klasse = Integer.parseInt(s);
        String l = request.getParameter("leihdauer");
        int leihdauer = Integer.parseInt(l);
        String status = request.getParameter("status");
        
        Notebook n = new Notebook(name, seriennummer, klasse, leihdauer, status);
        Notebook.saveNotebook(n);
    %> 
    
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" >XXX</a>
                    <a href="list_notebook.jsp" class="list-group-item">XXX</a>
                    <a href="userverwaltung.jsp" class="list-group-item">XXX</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <p>Das Notebook wurde erfolgreich angelegt!</p>
                </div>
            </div>
        </div>    



</body>
</html>
