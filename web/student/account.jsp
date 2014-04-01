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
<!--<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="../css/bootstrap.css" type ="text/css" />
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

            var checkEntry = function(temp2) {
                //alert("checkentry " + temp2);
                var temp = document.getElementById(temp2).value.length;
                //alert(temp);
                var inhalt = document.getElementById(temp2).value;
                //alert(inhalt);
                if (temp2 == "t6") {
                    //alert("else if " + temp2);
                    a = inhalt.substring(4, 5);
                    //alert(a);
                    b = inhalt.substring(7, 8);
                    //alert(b);
                    if ((a != "-") || (b != "-")) {
                        //alert("if not");
                        document.getElementById("t6").style.border = "solid red 2px";
                        document.getElementById("t6").style.border = "solid red 2px";
                        return false;
                    }
                } else if (temp == 0) {
                    //alert("temp = 0");
                    document.getElementById(temp2).style.border = "solid red 2px";
                    document.getElementById(temp2).title = "Eintrag erforderlich!";
                    return false;
                }
                else {
                    //alert("return true");
                    document.getElementById(temp2).style.border = "";
                    return true;
                }
            }

            var checkForm = function() {
                retValue = true;
                //alert("checkForm");
                for (var i = 3; i < 11; i++) { //document.adr.elements.length
                    //alert("for")
                    //alert(i);
                    element = document.adr.elements[i];
                    //alert(element);
                    var temp2 = element.id;
                    //alert(temp2);
                    if ((temp2 == "t") || (temp2 == "t2") || (temp2 == "t3") || (temp2 == "t4") || (temp2 == "t5") || (temp2 == "t6") || (temp2 == "t7") || (temp2 == "t8")) {
                        //alert("if " + temp2);
                        var check = checkEntry(temp2);
                        //alert("check "+ check);
                        if (check == false) {
                            retValue = false;
                        }
                        if (temp2 == "t6") {
                            var o = gueltigesDatum(temp2);
                            if (o == false) {
                                retValue = false;
                            }
                        }
                        /*if(temp2 == "t8"){
                            var p = checkKurs(temp2);
                                if(p == false){
                                    retValue = false;
                            }
                        }*/
                    }
                    //alert("retValue " + retValue);
                }
                if (validatePassword() == false) {
                    //alert("validate");
                    retValue = false;
                }
                if ((a != "-") || (b != "-")) {
                    alert("Format YYYY-MM-DD beachten!");
                }
                return retValue;
            }

            var gueltigesDatum = function(temp2) {
                //alert("gültiges Datum");
                var datum = document.getElementById("t6").value;
                //alert(datum);
                if (!datum)
                    return false;
                datum = datum.split("-");
                //alert(datum);
                if (datum.length != 3) {
                    return false;
                }
                var Set = '1234567890';
                var test = element.value;
                for (i = 0; i <= 2; i++) {
                    //alert("for gültiges");
                    test = datum[i];
                    //alert(test);
                    for (j = 0; j < test.length; j++) {
                        zeichen = test.charAt(j);
                        //alert(zeichen);
                        var g = Set.indexOf(zeichen);
                        //alert("g " + g);
                        if (Set.indexOf(zeichen) == -1) {
                            alert('Bitte nur Ziffern eingeben');
                            document.getElementById("t6").style.border = "solid red 2px";
                            element.title = "Nur Zeichen erlaubt!";
                            element.focus();
                            return false;
                        }
                    }
                }
                if (datum[2].length == 2) {
                    //alert("if3");
                    return true;
                } else {
                    document.getElementById("t6").style.border = "solid red 2px";
                    alert("Format YYYY-MM-DD beachten!");
                    return false;
                }
            }

            var checkMatrikel = function(element) {
                var Feld = "t7";
                var Set = '1234567890';
                var anzahl = 7;
                var test = element.value;
                var laenge = test.length;

                if (laenge > 0) {
                    for (i = 0; i <= laenge; i++) {
                        zeichen = test.charAt(i);
                        //alert(zeichen);
                        if (Set.indexOf(zeichen) == -1) {
                            alert('Bitte nur Ziffern eingeben');
                            document.getElementById("t7").style.border = "solid red 2px";
                            element.title = "Nur Zeichen erlaubt!";
                            var g = "Eintrag erforderlich";
                            element.innerHTML = g;
                            element.focus();
                            return false;
                            i = test.length;
                        }
                    }
                }
                if (laenge < anzahl) {
                    alert("Bitte" + anzahl + " Zeichen für die Matrikelnummer eintragen!");
                    document.getElementById("t7").focus();
                    return;
                }
            }
            
            /*function checkKurs(){
                var kurs = document.getElementById("t8").value;
                alert(kurs);
                if (!kurs)
                    return false;
                fach = kurs.substring(0, 3);
                jahr = kurs.substring(3, 5);
                
            }*/
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
        <title>Benutzer Men&uuml;</title>
    <div>
        <div>
            <a href='../student/student.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>

    <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Student")) {
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp");
            dispatcher.forward(request, response);
        }

        //ID des aktuell eingelogten Studenten herausfinden
        String l = session.getAttribute("id").toString();
        long id = Long.parseLong(l);

        //Daten des eingeloggten Studenten aus der Datenbank abfragen
        String geschlecht;
        String vorname;
        String name;
        String e_Mail;
        Date date;
        int matNr;
        String kurs;
        String passwort;

        List<Student> listStudent = Student.getStudentList();
        for (Student element : listStudent) {
            if (id == element.getId()) {
                geschlecht = element.getGeschlecht();
                vorname = element.getVorname();
                name = element.getName();
                e_Mail = element.geteMail();
                date = element.getGebDat();
                matNr = element.getMatNr();
                kurs = element.getKurs();
                passwort = element.getPasswort();
    %>

</head>
<body onLoad="javascript:setFocus()">
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="../student/student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="../student/notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href="../student/uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href="../student/account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="area">
                    <h1> Benutzerkontoeinstellungen </h1>
                    <p>Sie können hier Ihre persönlichen Daten ändern!</p>
                    <div id="login">
                        <form name="adr" action="saveAccount.jsp" methode="POST" onsubmit="javascript:return checkForm();">
                            <p><input name="id" type="hidden" value="<%=id%>" size="30" maxlength="40"></p>
                                <% if (geschlecht.equals("weiblich")) {%> 
                            <p>
                                <input type="radio" name="radio" value="<%=geschlecht%>" checked>weiblich
                                <input type="radio" name="radio" value="<%=geschlecht%>">männlich</p> 
                                <% } else {%>
                            <p>
                                <input type="radio" name="radio" value="<%=geschlecht%>" >weiblich
                                <input type="radio" name="radio" value="<%=geschlecht%>" checked>männlich</p> 
                                <% }%>
                            <p>Nachname<br><input id="t" name="name" type="text" value="<%=name%>" size="30" maxlength="40"></p>
                            <p>Vorname<br><input id="t2" name="vorname" type="text" value="<%=vorname%>" size ="30" maxlength="40"></p>
                            <p>E-mail<br><input id="t3" name="e_Mail" type="email" value="<%=e_Mail%>"  size ="30" maxlength="40"></p>
                            <p>Passwort<br><input id="t4" name="passwort" type="password" value="<%=passwort%>" size ="30" maxlength="40"></p>
                            <p>Passwort<br><input id="t5" name="passwort2" type="password" value="<%=passwort%>" size ="30" maxlength="40"></p>
                            <p><div id="passwordError" style="visibility: hidden;"></div></p>
                            <p>Geburtsdatum<br><input id="t6" name="gebDat" type="text" value="<%=date%>" size ="30" maxlength="40"></p>
                            <p>Matrikelnummer<br><input id="t7" name="matNr" type="text"  value="<%=matNr%>"  size ="30" maxlength="40" onblur="javascript:checkMatrikel(this);"></p>
                            <p>Kursnummer<br><input id="t8" name="kurs" type="text"  value="<%=kurs%>"  size ="30" maxlength="40"></p>
                            <p><input name="button" type="submit" value="anlegen"></p>
                        </form>     
                        <%
                                }
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>    
</body>
</html>


