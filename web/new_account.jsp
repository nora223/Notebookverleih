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
    <title>Create new Account</title>
          <div>
            <img id="pic" src="pic/logo.png" alt="Logo"/>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        <div>
            
        </div>
        <div id="login">
         <form action="savestudent.jsp" methode="POST">
              <p> <input type="radio" name="radio" value="weiblich">weiblich&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</input>
                  <input type="radio" name="radio" value="männlich">männlich</input></p>
              <p>Nachname<br><input name="nachname" type="text" size="30" maxlength="40"></p>
              <p>Vorname<br><input name="vorname" type="text" size ="30" maxlength="40"></p>
              <p>E-mail<br><input name="e_mail" type="text" size ="30" maxlength="40"></p>
              <p>Passwort<br><input name="passwort" type="password" size ="30" maxlength="40"></p>
              <p>Passwort<br><input name="passwort2" type="password" size ="30" maxlength="40"></p>
              <p>Geburtsdatum<br><input name="gebDat" type="text" size ="30" maxlength="40"></p>
              <p>Matrikelnummer<br><input name="matNr" type="text" size ="30" maxlength="40"></p>
              <p>Kursnummer<br><input name="kurs" type="text" size ="30" maxlength="40"></p>
              <p><input name="button" type="submit" value="anlegen"></p>
        </form>
        </div>
    </body>
</html>
