<%-- 
    Document   : forgotton_PW
    Created on : 11.02.2014, 14:55:14
    Author     : CaReich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <link rel="stylesheet" href ="calender/3-dynamically-created/tcal.css" type ="text/css" />
        <script type="text/javascript" src="calender/3-dynamically-created/tcal.js" language="JavaScript"></script>

        <title>Passwort vergessen</title>
    <div>
        <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div  class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active" >
                    NAVIGATION
                </a>
                <a href="index.jsp" class="list-group-item">Startseite</a> 

            </div>
        </div>

        <div class="col-md-6">
            <div class="area">
                <h1> Passwort vergessen </h1>
                <p> Bitte füllen Sie das folgende Formular aus:</p>

                <div id="login">
                    <form action=PW_sent_Admin.jsp" methode="POST">
                        <p>Nachname<br><input name="nachname" type="text" size="30" maxlength="40"></p>
                        <p>Vorname<br><input name="vorname" type="text" size ="30" maxlength="40"></p>
                        <p>E-mail<br><input name="e_mail" type="text" size ="30" maxlength="40"></p>
                        <p><input name="button" type="submit" value="Senden"></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
