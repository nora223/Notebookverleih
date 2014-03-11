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
        <script type="text/javascript" src="js/bootstrap.js"></script>
            
        
        <!--
        <script type="text/javascript">
              function login(event) {
                    var email = document.getElementsByName("e_mail");
                    var passwort1 = document.getElementsByName("passwort");
                    
                    window.alert(email);

                    $.ajax("servlets/login", {
                        isLocal: true,
                        type: "POST",
                        contentType: "text/plain",
                        data: "LOGIN\n" + email + "\n" + passwort1,
                        dataType: "text",
                        success: function(data, status, xhr) {
                            show_boxes();
                            document.login_form.reset();
                        },
                        error: function(xhr) {
                            var error = $.trim(xhr.responseText);
                            show_message(get_error_text(error, "user"));
                        }
                    });

                    return false;
                }

    
       /*function checkPasswort(event) {
            var email = document.getElementById("e_mail");
            var passwort1 = document.getElementById("passwort");
            
            var erg = Student.loginStudent(email, passwort1);
            
            if (erg === true){
                    alert("Passwort richtig!");
                    return true;
              }else{
                    alert("Passwort falsch!");
                    return false;
              }
        }
            for (i = 0; i < document.forms[0].elements.length; ++i)
            if (document.forms[0].elements[i].value === "") {
            alert("Es wurden nicht alle Felder ausgefüllt!");
            document.forms[0].elements[i].focus();
            return false;
            }       
              
            var email = request.getParameter("e_mail");  
            var passwort1 = request.getParameter("passwort");

            var erg = Student.loginStudent(email, passwort1);
              
            if (erg === true){
                    alert("Passwort richtig!");
                    return true;
              }else{
                    alert("Passwort falsch!");
                    return false;
              }*/
            
       </script> 
       -->
        
        <title>Start</title>
           <div>
               <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
            <hr>
            <p id="pic"><img src="pic/dh.jpg" alt="dh" />
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
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>                     
                </div>
            </div>
            
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        LOGIN
                    </a>
                    <div class="list-group-item">
                        <form action="student.jsp" methode="POST">
                    <p>E-mail<br><input name="e_mail" type="text" maxlength="40"></p>
                    <p>Passwort<br><input name="passwort" type="password" maxlength="40"></p>
                    
                    <p><input name="button" type="submit" value="Login" <!--onclick="login();"--> </p>
                </form>
               <a href="create_student.jsp">Neuer Zugang anlegen?</a><br>
               <a href="forgotton_PW.jsp" >Passwort vergessen?</a>
               
                    </div>
                    <li><a href="admin/admin.jsp">Admin</a></li>
               <li><a href="testfaelle.jsp">Testf&auml;lle!</a></li>
               <li><a href="testfaelle_alexey.jsp">Testf&auml;lle_Aleksey!</a></li>
               <li><a href="testfaelle_notebook.jsp">Testf&auml;lle_notebook</a></li>
               <li><a href="student/student.jsp">Student</a></li>
               <li><a href="dozent/dozent.jsp">Dozent</a></li>
               </div> 
        </div>
        </div>
        </div>
    </body>
</html>
