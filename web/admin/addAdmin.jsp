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
         <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css"/>
         <!--<script type="text/javascript" src="../js/bootstrap.js"></script>-->
         <link rel="stylesheet" href ="../calender/3-dynamically-created/tcal.css" type ="text/css"/>
         <script type="text/javascript" src="../calender/3-dynamically-created/tcal.js" language="JavaScript"></script>
                <script type="text/javascript">

            var validatePassword = function() {
                //alert("PW");
                // document.forms.adr.passwort1 
                //var passwort = document.getElementById("t4").value;
                var passwort = document.getElementById("t4").value;
                var passwort2 = document.getElementById("t5").value;
                //alert(passwort);
                //alert(passwort2);
                if (passwort == passwort2) {
                    // Passwörter stimmen nicht überein
                    //alert("true");
                } else {
                    //alert("password ");
                    document.getElementById("passwordError").style.visibility = 'visible';
                    document.getElementById("passwordError").innerHTML = '<p style="text-align:center; color: red"><b>Passwort stimmt nicht überein!</b></p>';
                    document.getElementById("t4").style.border = "solid red 2px";
                    document.getElementById("t5").style.border = "solid red 2px";
                    return false;
                }
            }

            var checkEntry = function(element) {
                id = element.id;
                //alert("checkentry" + id);
                temp = document.getElementById(id).value.length;
                //alert (temp);
                //sofern value DD.MM.YYYY ist und das derzeitige element t6 ist, dann Roter Rand!!

                /*if (element.value == "dd.mm.YYYY") { // }*/
                if ((document.getElementById(id) == "t6") && (document.getElementById(id).value == "DD.MM.YYYY")) {
                    alert("t6");
                    document.getElementById(id).style.border = "solid red 2px";
                    document.getElementById(id).title = "Eintrag erforderlich!";
                    return false;
                }
                else if (temp == 0) { // ... so. Korrekte Abfrage sofern keine Angaben getätigt wurden, soll ein roter Rand erscheinen.
                    document.getElementById(id).style.border = "solid red 2px";
                    document.getElementById(id).title = "Eintrag erforderlich!";
                    return false;
                } else {
                    //alert("true");
                    return true;
                }
            }

            var checkForm = function() {
                //Prüfung des Form-Tags ob die Felder befüllt wurden
                retValue = true;
                //temp = document.adr.elements.length;
                // document.adr.elements.length gibt die anzahl der Elemente die in diesem Form-Tag vorhanden sind.
                for (var i = 0; i < document.adr.elements.length; i++) {
                    element = document.adr.elements[i];
                    // bei diesen ID's springt das Prog in die Methode CheckEntry, die ID's müssen unterschiedlich sein damit dem Programm die unterschiede bekannt werden, sonst behandelt es es nur als eins
                    if ((element.id == 't') || (element.id == 't2') || (element.id == 't3') || (element.id == 't4') || (element.id == 't5') || (element.id == 't6') || (element.id == 't7') || (element.id == 't8')) {
                        checkEntry(element);
                        if (checkEntry(element) == false) {
                            //alert("temp");
                            retValue = false;
                        }
                    }
                    //retValue = validatePassword();
                }
                validatePassword();
                    if (validatePassword() == false) {
                        retValue = false;
                    }
                return retValue;
            }

            //Courser wird ins erste Feld gesetzt
            function setFocus() {
                if (document.forms.length > 0) {
                    var field = document.forms[0];
                    for (i = 0; i < field.length; i++) {
                        if ((field.elements[i].type == "text") || (field.elements[i].type == "textarea") || (field.elements[i].type.toString().charAt(0) == "s")) {
                            document.forms[0].elements[i].focus();
                            break;
                        }
                    }
                }
            }
        </script>
         
    <div>
        <div class="col-md-2"><a href='admin.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a></div>
        <div id="logout" class="col-md-2"> <a id="logout" href="../logout.jsp"> (Logout) </a></div> 
        <hr>
        <p id="pic"><img src="../pic/dh.jpg" alt="dh" />
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
                    <h1> Administrator anlegen </h1>
                    <p> Bitte f&uuml;llen Sie das folgende Formular aus um einen Administrator zu registrieren</p>

                    <div id="login">
                        <form name="adr" action="saveAdmin.jsp" methode="POST" onsubmit="javascript:return checkForm()"> 
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

