<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Dozent" %>
<%@page import="DAO.DozentDAO" %>
<!DOCTYPE html>
<html>
<head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon" href="../pic/logo.JPG" type="image/JPG"/>
         <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css"/>
         <!--<script type="text/javascript" src=".../js/bootstrap.js"></script>-->
         <link rel="stylesheet" href =".../calender/3-dynamically-created/tcal.css" type ="text/css"/>
         <script type="text/javascript" src=".../calender/3-dynamically-created/tcal.js" language="JavaScript"></script>
         
       
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>

    <body onLoad="javascript:setFocus()">
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="admin.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a> 
                    <a href="ausleihverwaltung.jsp" class="list-group-item">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Admin anlegen </h1>
                    <p> Bitte f&uuml;llen Sie das folgende Formular aus um einen Administrator zu registrieren</p>

                    <div id="login">
                        <form name="adr" action="savedozent.jsp" methode="POST" onsubmit="javascript:return checkForm()"> 
                            <!--onsubmit="javascript:return checkForm()"-->
                            <p> <input type="radio" name="radio" value="weiblich">weiblich&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</input>
                                <input type="radio" name="radio" value="männlich">m&auml;nnlich</input></p>
                            <p>Nachname<br><input id="t" name="nachname" type="text" size="30" maxlength="40"></p>
                            <p>Vorname<br><input id="t2" name="vorname" type="text" size ="30" maxlength="40"></p>
                            <p>E-mail<br><input id="t3" name="e_mail" type="email" placeholder="me@example.com" size ="30" maxlength="40"></p>
                            <p>Passwort<br><input id="t4" name="passwort" type="password" size ="30" maxlength="40"></p>
                            <p>Passwort<br><input id="t5" name="passwort2" type="password" size ="30" maxlength="40"></p>
                            <p><div id="passwordError" style="visibility: hidden;"></div></p>
                            <p>Geburtsdatum<br><input class="tcal tcalInput" id="t6" name="gebDat" value="dd:mm:yyyy " size ="30" title="Bitte GebDat eintragen" maxlength="40" onkeypress="return false" onblur="javascript:checkEntry(this)"></p>
                            <p><input name="button" type="submit" value="anlegen"></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

