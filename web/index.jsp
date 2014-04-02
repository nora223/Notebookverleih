<%-- 
    Document   : index
    Created on : 11.02.2014, 13:30:04
    Author     : CaReich
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         %>
<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />        

        <!--
            for (i = 0; i < document.forms[0].elements.length; ++i)
            if (document.forms[0].elements[i].value === "") {
            alert("Es wurden nicht alle Felder ausgefüllt!");
            document.forms[0].elements[i].focus();
            return false;
            }        
        -->

        <title>Start</title>
    <div>
        <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
        <hr>
        <p><img id="pic2" src="pic/dh.jpg" alt="dh" />
    </div>
</head>

<body>
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px"><b>Startseite</b></a>
                    <a href="userinf.jsp" class="list-group-item">User Informationen</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>
                    <p>Sehr geehrter Studierende/r, <br> <br>
                        hier befinden Sie sich im Portal zum Ausleihen von Notebooks. <br> 
                        Um diese Funktionalit&auml;t nutzen zu k&ouml;nnen, 
                        m&uuml;ssen Sie sich jedoch hierf&uuml;r registrieren. 
                        Weitere Informationen zur Notebookausleihe finden Sie in der Navigation unter Userinformationen!
                       

                        <br> <br> Mit freundlichen Gr&uuml;&szlig;en <br> <br> Die Administratoren</p>
                </div>
            </div>            

            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        LOGIN
                    </a>

                    <div class="list-group-item">

                        <form method="POST" action="servlets/login">
                            <p>E-mail<br><input id="e_mail" name="e_mail" type="text" maxlength="40"></p>
                            <p>Passwort<br><input id="passwort" name="passwort" type="password" maxlength="40"></p>
                            <p><input name="button" type="submit" value="Login"></p>
                        </form>

                        <a href="create_student.jsp">Neuer Zugang anlegen?</a><br>
                        <a href="forgotton_PW.jsp" >Passwort vergessen?</a>

                    </div>
                    <li><a href="testfall1.jsp">Testfall 1</a></li>
                    <li><a href="testfall2.jsp">Testfall 2</a></li>
                </div> 
            </div>
        </div>
    </div>

</body>
</html>
