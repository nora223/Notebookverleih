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
        <title>Notebook hinzufügen</title>
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
                        <form name="adr" action=".../saveNB.jsp" methode="POST">
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
