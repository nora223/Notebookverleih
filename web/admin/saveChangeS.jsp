

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="BL.Student" %>
<%@page import="DAO.StudentDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Student &auml;ndern</title>
    <div>
        <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
        <hr>
        <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div  class="row">
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
                <p>Hallo, du hast erfolgreich einen Student ge&auml;ndert und angelegt</p>
            </div>         
            <%
                String id = request.getParameter("id");
                long longid = Long.parseLong(id);
                String name = request.getParameter("name");
                String vorname = request.getParameter("vorname");
                String e_Mail = request.getParameter("e_Mail");
                String x = request.getParameter("geburtsdatum");
                DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                Date date = new Date();
                String kurs = request.getParameter("kurs");
                Integer matNr = Integer.parseInt(request.getParameter("matNr"));
                String geschlecht = request.getParameter("geschlecht");


                Student s = new Student();

                s.setId(longid);
                s.setName(name);
                s.setVorname(vorname);
                s.seteMail(e_Mail);
                s.setGebDat(date);
                s.setKurs(kurs);
                s.setMatNr(matNr);
                s.setGeschlecht(geschlecht);

                Student.saveStudent(s);
            %>
        </div>
    </div>
</body>
</html>
