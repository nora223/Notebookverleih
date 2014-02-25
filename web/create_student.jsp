<%-- 
    Document   : new_account
    Created on : 11.02.2014, 14:54:21
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
        
    <title>Create new Student</title>
          <div>
            <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
         <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>
                    <p> Bitte füllen Sie das folgende Formular aus um sich als User zu registrieren</p>
               
                <div id="login">
                 <form action="savestudent.jsp" methode="POST">
                      <p> <input type="radio" name="radio" value="weiblich">weiblich&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</input>
                          <input type="radio" name="radio" value="männlich">männlich</input></p>
                      <p>Nachname<br><input name="nachname" type="text" size="30" maxlength="40"></p>
                      <p>Vorname<br><input name="vorname" type="text" size ="30" maxlength="40"></p>
                      <p>E-mail<br><input name="e_mail" type="text" size ="30" maxlength="40"></p>
                      <p>Passwort<br><input name="passwort" type="password" size ="30" maxlength="40"></p>
                      <p>Passwort<br><input name="passwort2" type="password" size ="30" maxlength="40"></p>
                      <p>Geburtsdatum<br><input class="tcal tcalInput" name="gebDat" type="text" size ="30" maxlength="40"></p>
                      <p>Matrikelnummer<br><input name="matNr" type="text" size ="30" maxlength="40"></p>
                      <p>Kursnummer<br><input name="kurs" type="text" size ="30" maxlength="40"></p>
                      <p><input name="button" type="submit" value="anlegen"></p>
                </form>
                </div>
                </div>
            </div>
         </div>
    </body>
</html>
