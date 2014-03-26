<%--Alexey--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Notebook" %>
<%@page import="DAO.NotebookDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <script type="text/javascript">

            var checkEntry = function(element) {
                id = element.id;
                //alert("checkentry" + id);
                temp = document.getElementById(id).value.length;
                if (temp == 0) { // ... so. Korrekte Abfrage sofern keine Angaben getätigt wurden, soll ein roter Rand erscheinen.
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
        <title>Notebook hinzufügen</title>
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
                    <a href=".../admin.jsp" class="list-group-item">Startseite</a> 
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>

                </div>
            </div>

            <div class="col-md-6">
                <div class="area">
                    <h1> Notebook hinzufügen! </h1>
                    <p> Bitte f&uuml;llen Sie das folgende Formular aus um ein Notebook hinzuzufügen.</p>

                    <div id="login">
                        <form name="adr" action=".../saveNB.jsp" methode="POST" onsubmit="javascript:return checkForm()">
                            <p>Name<br><input id="t" name="name" type="text" size="30" maxlength="40"></p>
                            <p>Seriennummer<br><input id="t2" name="seriennummer" type="text" size ="30" maxlength="40"></p>
                            <p>Klasse   
                                <select maxlenght="40" widht="40" name="status">
                                    <option>&starf;</option>
                                    <option>&starf;&starf;</option>
                                    <option>&starf;&starf;&starf;</option>
                                </select>
                            </p>
                            <p>Leihdauer
                                <select maxlenght="40" widht="40" name="status">
                                 
                                    <option>7 Tage</option>
                                    <option>14 Tage</option>
                                    <option>30 Tage</option>
                                    <option>90 Tage</option>
                                </select>
                            </p>
                            <p>Status<br><input id="t5" name="Status" type="text" size ="30" maxlength="40"></p>
                            <p><input name="button" type="submit" value="anlegen"></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<!--<body>
   <div>
     <p>Hallo du hast erfolgreich einen NB geändert und angelegt</p>
    </div>
<%                               /* String id = request.getParameter("id");
     long longid = Long.parseLong(id);
     String name = request.getParameter("name");
     String seriennummer = request.getParameter("seriennummer");
     Integer klasse = Integer.parseInt(request.getParameter("klasse"));
     Integer leihdauer = Integer.parseInt(request.getParameter("leihdauer"));
     String verliehen = request.getParameter("verliehen");
                              
     boolean status;
                              
                              
     if(verliehen.equals("true")){
     status = true;
     }
     else{
                               
     status = false;
                              
     }
                              
                              
                        
     Notebook n = new Notebook();
                        
     n.setId(longid);
     n.setName(name);
     n.setSeriennummer(seriennummer);
     n.setKlasse(klasse);
     n.setLeihdauer(leihdauer);
     n.setVerliehen(status);
                               
     Notebook.saveNotebook(n);*/
%>

</body>
</html>-->