<%-- 
    Document   : delAsuleihe
    Created on : 26.03.2014, 18:23:34
    Author     : Boss
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
        <title>Stornierungsbestätigung</title>
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
        if (t.equals("Student")){
           
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
                    <a href="../student/student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="../student/notebookausleihe.jsp" class="list-group-item" >Notebooks ausleihen</a>
                    <a href="../student/uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href="../student/account.jsp" class="list-group-item">Benutzerkontoeinstellunge</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <p>Ihre Notebookausleihe wurde erfolgreich storniert</p>
                    
                    <%
                        String s = session.getAttribute("id").toString();
                        long l = Long.parseLong(s);
                        
                        List<Ausleihe> ausleiheList = BL.Ausleihe.getListAusleihe();
                                
                        for (Ausleihe element : ausleiheList){
                            if(l == element.getAntragssteller().getId()){
                                long id = element.getId();
                                Ausleihe.deleteAusleiheByID(id);
                                String name = element.getAntragssteller().getName();
                                String email = element.getAntragssteller().geteMail();
                                String messageContent = BL.Mail_arts.Student_delete(element.getAntragssteller());
                                BL.Mail.eMailcreate(messageContent,email);
                                
                            }
                        }
                        
                        
                        
                    %>
                </div>
            </div>
        </div>    



</body>
</html>














