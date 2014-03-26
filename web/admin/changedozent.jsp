<%-- 
    Document   : new_account
    Created on : 11.02.2014, 14:54:21
    Author     : CaReich
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="BL.Dozent" %>
<%@page import="DAO.DozentDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <link rel="stylesheet" href =".../calender/3-dynamically-created/tcal.css" type ="text/css" />
        <script type="text/javascript" src=".../calender/3-dynamically-created/tcal.js" language="JavaScript"></script>

        <title>Change Student</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div class="row">
        <div class="col-md-3">
            <div class="list-group">
                <a href="#" class="list-group-item active" >
                    NAVIGATION
                </a>
                  <a href="admin/admin.jsp" class="list-group-item">Startseite</a> 
                <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                <a href="list_notebook.jsp" class="list-group-item">Notebook Verwaltung</a>
                <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>

            </div>
        </div>

        <div class="col-md-6">
            <div class="area">
                <h1> User &Auml;nderungen </h1>
                <p> Es handelt sich hierbei um einen bereits registrierten Benutzer. Seien Sie vorsichtig bei der Bearbeitung dieser Daten!</p>


                <%
                    String id = request.getParameter("id");
                    String name = request.getParameter("name");
                    String vorname = request.getParameter("vorname");
                    String geschlecht = request.getParameter("geschlecht");
                    String eMail = request.getParameter("eMail");
                    String x = request.getParameter("geburtsdatum");
                    DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = new Date();
                    date = df.parse(x);
                %>

                <div id="login">

                    <form action="saveChangeD.jsp" methode="POST">
                        <p><input name="id" type="hidden" value="<%=id%>" size="30" maxlength="40"></p>

                        <% if (geschlecht.equals("weiblich")) {%> 
                        <p>
                            <input type="radio" name="radio" value="weiblich" checked>weiblich
                            <input   type="radio" name="radio" value="m&auml;nnlich">m&auml;nnlich</p> 
                            <% } else {%>
                        <p>
                            <input type="radio" name="radio" value="weiblich" >weiblich
                            <input   type="radio" name="radio" value="m&auml;nnlich" checked>m&auml;nnlich</p> 

                        <%    }%>
                        <p>Nachname<br><input name="name" type="text" value="<%=name%>" size="30" maxlength="40"></p>
                        <p>Vorname<br><input name="vorname" type="text" value="<%=vorname%>" size ="30" maxlength="40"></p>
                        <p>E-mail<br><input name="e_Mail" type="text" value="<%=eMail%>"  size ="30" maxlength="40"></p>
                        <p>Geburtsdatum<br><input class="tcal tcalInput" name="gebDat" type="text" value="<%=x%>"  size ="30" maxlength="40"></p>

                        <p><input name="button" type="submit" value="anlegen"></p>
                    </form>
                 
                </div>
            </div>
        </div>
    </div>
</body>
</html>
