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
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook anlegen</title>
           <div>
            <img id="pic" src=".../pic/logo.png" alt="Logo"/>
            <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
         
        <div id="login">
         <form action="admin/saveNB.jsp" methode="POST">
             <p> Bearbeiten /Erstellen </p>
              <p>Antragsdatum<input name="a_date" type="text" size="30" maxlength="40"></p>
              <p>Antragsteller<input name="a_name" type="text" size ="30" maxlength="40"></p>
              <p>Mitarbeiter<input name="a_pers" type="text" size ="30" maxlength="40"></p>
              <p>Bestätigungs-ID<input name="best_ID" type="password" size ="30" maxlength="40"></p>
              <p>Geräteklasse
              <select name="geraetclass" maxlenght="40">
                  <option>Notebook&starf; </option>
                    <option>Notebook&starf;&starf; </option>
                    <option>Notebook&starf;&starf;&starf;</option>
              </select></p>
              <p>Gerät<input name="geraetname" maxlenght="40"></p>
              <p>Dauer<select name="dauer" maxlenght="40">
                  <option>lang</option>
                    <option>mittel</option>
                    <option>kurz</option>
              </select></p>
              <p>Leihbeginn<input name="beginn" type="text" size ="30" ></p>
              <p>Leihend<input name="ende" type="text" size ="30" maxlength="40"></p>
              <p>abholung<input name="abholung" type="text" size ="30" maxlength="40"></p>
              <p>Rückgabe<input name="back" type="text" size ="30" maxlength="40"></p>
              <p>Bemerkung<input name="bemerkung" type="text" size ="30" maxlength="40"></p>
              <p>Status<select name="status" maxlenght="40">
                  <option>frei</option>
                    <option>ausgeliehen</option>
                    <option>unbestätigt</option>
              </select></p>
              <p><input id="button" name="button" type="submit" value="Speichern">
                  <input name="button" type="button" value="Zurück" onClick="self.location.href='admin.jsp'">
              </p>
        </form>
        </div>
    </body>
</html>
