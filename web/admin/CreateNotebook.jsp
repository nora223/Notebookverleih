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
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="../js/bootstrap.js"></script>
        <title>Notebook erstellen</title>
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
</head>
<body>
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
         <h1 id="formular">Notebook erstellen </h1>
        <div class="col-md-8">
            <div id="login">      

                 <form action="admin/saveNB.jsp" methode="POST" >
            
             <table> 
                  <tr>
                   <td><p>Antragsdatum: </td><td><input name="a_date" type="text" size="30" maxlength="40"></p></td>
                  </tr>
                  <tr>
                  <td><p>Antragsteller: </td><td><input name="a_name" type="text" size ="30" maxlength="40"></p</td>
                  </tr>
                  <tr>
                    <td><p>Mitarbeiter: </td><td><input name="a_pers" type="text" size ="30" maxlength="40"></p></td>
                  </tr>
                  <tr>  
                    <td><p>Best&auml;tigungs-ID: </td><td><input name="best_ID" type="password" size ="30" maxlength="40"></p></td>
                  </tr>
                  <tr>
                      <td><p>Ger&auml;teklasse</td>
                      <td><select name="geraetclass" maxlenght="40">
                            <option>Notebook&starf; </option>
                            <option>Notebook&starf;&starf; </option>
                            <option>Notebook&starf;&starf;&starf;</option>
                          </select></p></td>
                  </tr>
                  <tr>
                      <td><p>Ger&auml;t: </td><td><input name="geraetname" maxlenght="40"></p></td>
                  </tr>
                  <tr><td> <p>Dauer: </td>
                      <td><select name="dauer" maxlenght="40">
                            <option>lang</option>
                            <option>mittel</option>
                            <option>kurz</option>
                          </select></p></td>
                 </tr>
                 <tr><td><p>Leihbeginn: </td><td><input name="beginn" type="text" size ="30" ></p></td>
                 </tr>
                 <tr><td><p>Leihend: </td><td><input name="ende" type="text" size ="30" maxlength="40"></p></td>
                 </tr>
                 <tr><td><p>Abholung: </td><td><input name="abholung" type="text" size ="30" maxlength="40"></p></td>
                 </tr>
                 <tr><td><p>R&uuml;ckgabe: </td><td><input name="back" type="text" size ="30" maxlength="40"></p></td>
                 </tr>
                 <tr><td><p>Bemerkung: </td><td><input name="bemerkung" type="text" size ="30" maxlength="40"></p></td>
                 </tr>
                 <tr><td><p>Status: </td>
                     <td><select name="status" maxlenght="40">
                          <option>frei</option>
                          <option>ausgeliehen</option>
                          <option>unbest&auml;tigt</option>
                         </select></p></td>
                 </tr>
                 <tr><td><input class="blue" id="button" name="button" type="submit" value="Speichern">
                         <input class="white" name="button" type="button" value="Zur&uuml;ck" onClick="self.location.href='admin.jsp'"></td>
                 </tr>
                
                    
              </p>
        </form>

            </div>
        </div>
</body>
</html>
