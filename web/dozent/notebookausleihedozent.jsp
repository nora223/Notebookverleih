<%-- 
    Document   : notebookausleihedozent
    Created on : 
    Author     : cara123
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook best&auml;tigen</title>
           <div>
               
            <a href='.../index.jsp'><img id="pic" src=".../pic/logo.png" alt="Logo"/></a>
            <div id="logout"> <a id="logout" href=".../logout.jsp"> Logout </a></div>
            <hr>
            <p id="pic"><img src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
                    <div> <!-- Navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href="dozent.jsp" class="list-group-item">Startseite</a>
                    <a href="notebookausleihedozent.jsp" class="list-group-item">Notebooks best&auml;tigen</a>
           
                </div>
            </div>
            
            <div class="col-md-8">
                <div class="area">
                    
              
                    Diese Anfragen m&uuml;ssen noch best&auml;tigt oder abgelehnt werden:
                    <!-- Tabelle -->
                        <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>Student</th>
                            <th>Modell</th>
                            <th>Von</th>
                            <th>Bis</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td> </td> <!-- Student -->
                            <td> </td> <!-- Modell --> 
                            <td> </td> <!--von --> 
                            <td> </td> <!--bis -->
                            <td><button class="blue">Best&auml;tigen</button></td>
                            <td><button class="white">Ablehnen</button></td>
                          </tr>
                          <tr>
                            <td> </td> <!-- Student -->
                            <td> </td> <!-- Modell --> 
                            <td> </td> <!--von --> 
                            <td> </td> <!--bis -->
                            <td><button class="blue">Best&auml;tigen</button></td>
                            <td><button class="white">Ablehnen</button></td>
                          </tr>
                          <tr>
                            <td> </td> <!-- Student -->
                            <td> </td> <!-- Modell --> 
                            <td> </td> <!--von --> 
                            <td> </td> <!--bis -->
                            <td><button class="blue">Best&auml;tigen</button></td>
                            <td><button class="white">Ablehnen</button></td>
                          </tr>
                  
                          
                        </tbody>
                      </table>
                    
                </div>
            </div>
        </div>    
    </body>
</html>
