<%-- 
    Document   : notebookausleihe
    Created on : 
    Author     : cara123
--%>

<%@page import="BL.Student"%>
<%@page import="java.util.List"%>
<%@page import="BL.Ausleihe"%>
<%@page import= "java.text.DateFormat"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import= "java.util.Calendar"%>
<%@page import= "java.util.Date"%>
<%@page import= "java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href=".../pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href =".../css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src=".../js/bootstrap.js"></script>
        <title>Notebook ausleihen</title>
    <div>
        <div>
            <a href='../student.jsp'><img id="pic" src="../pic/logo.png" alt="Logo"/></a>
        </div>
        <div id="logout" > 
            <a style="color: grey" href="../logout.jsp"> (Logout) </a>
        </div> <!-- Link für Logout-->
        <hr>
        <p><img id="pic2" src="../pic/dh.jpg" alt="dh" /></p>
    </div>
    
     <%
        String t = session.getAttribute("typ").toString();
        if (t.equals("Student")){
           
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/unauthorized.jsp" );
            dispatcher.forward ( request, response );
        }
        
        String s = session.getAttribute("id").toString();
        long i = Long.parseLong(s);
        
        List<Ausleihe> listAusleihe = Ausleihe.getAusleiheList();
        for(Ausleihe element : listAusleihe){
            int n = 0;
            Student neu = new Student();
            neu = element.getAntragssteller();
            if(i == neu.getId()){
    %>
    <script>
            window.alert("Sie haben bereits ein Notebook ausgeliehen!");
            window.location = '.../student/student.jsp';
    </script>
    <%
                break;
            }
            if(n >= listAusleihe.size()){
                    out.println("Student hat noch kein Notebook ausgeliehen");
                    break;
                }
            if(n <= listAusleihe.size()){
                    n++;
            }
            
        }
        
    %>
    
    <%--
         Date d= new Date();
        
         List<Ausleihe> listeAusleihe = Ausleihe.getAusleiheList();
            
           for(Ausleihe element : listeAusleihe){
            
           String Status = element.getLeihNotebook().getNotebookStatus();
           Date auftragsdatum = element.getAuftragsdatum();
           
           long id = element.getId();
           
           long auftragsdatumMS = auftragsdatum.getTime();
           auftragsdatumMS = auftragsdatumMS + 7*86400000;
           Date auftragsdatumPlus7 = new Date(auftragsdatumMS);
           
           If(Status == bestätigungAustehend){
            if ( d.compareTo(auftragsdatumPlus7)>0)
              BL.Ausleihe.deleteAusleiheByID(id);
        }
           
        }
        }




--%>
</head>
<body>
    <%

        Integer[] feld = BL.Notebook.countNotebooks();
        
        Integer k1ld7 = feld[0];
        Integer k1ld30 = feld[1];
        Integer k1ld90 = feld[2];
        Integer k1ld180 = feld[3];
        Integer k2ld7 = feld[4];
        Integer k2ld30 = feld[5];
        Integer k2ld90 = feld[6];
        Integer k2ld180 = feld[7];
        Integer k3ld7 = feld[8];
        Integer k3ld30 = feld[9];
        Integer k3ld90 = feld[10];
        Integer k3ld180 = feld[11];
        
        int leihdauer = 0;
        
        int klasse= 0 ; 
        
        
        String b = "nicht im Angebot";
        String c = "ab sofort (";
        String d = " verfügbar)";
        String nichtvorhanden ="ab ";
        String nichtvorhanden2 = " wieder verfügbar";
    %>
    <div> <!-- Navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href=".../student/student.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href=".../student/notebookausleihe.jsp" class="list-group-item">Notebooks ausleihen</a>
                    <a href=".../student/uebersicht.jsp" class="list-group-item">&Uuml;bersicht</a>
                    <a href=".../student/account.jsp" class="list-group-item">Benutzerkontoeinstellungen</a>
                </div>
            </div>
<!--<form action="notebookauswahl.jsp" methode="GET">-->
            <div class="col-md-8">
                <div class="area">
                    <h1> Ausleihverwaltung </h1>
                    <p> Sie befinden sich im Ausleihverwaltung der Notebookausleihe!</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Modell</th>
                                <th>bis 7 Tage</th>
                                <th>bis 30 Tage</th>
                                <th>bis 90 Tage</th>
                                <th>bis 180 Tage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Notebook &starf;</td> <!-- Das Modell -->
                                <td>
                                    <%
                                        out.println(b);
                                    %> 
                                </td> <!--bis 7 Klasse 1  -->
                                <td>

                                   <a href="notebookauswahl.jsp?leihdauer=30&klasse=1"> <button class="white">
                                                                                
                                        <%
                                        if(k1ld30==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(30, 1)+nichtvorhanden2);
                                        }else{
                                          out.println(c + k1ld30 + d);
                                          
                                        }
                                        
                                        leihdauer = 30;
                                        klasse =  1;
                                                                

                                        %></button></a> 
                                </td> <!--bis 30 Klasse 1-->
                                <td>
                                    <a href="notebookauswahl.jsp?leihdauer=90&klasse=1"><button class="white">
                                        <%
                                            if(k1ld90==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(90, 1)+nichtvorhanden2);
                                        }else{
                                          out.println(c + k1ld90 + d);  
                                        } 
 
                                                                                    
                                        leihdauer = 90;
                                        klasse =  1;
                                            
                                        %> </button></a>
                                </td> <!--bis 90 Klasse 1-->
                                <td>

                                    <a href="notebookauswahl.jsp?leihdauer=180&klasse=1"><button class="white"><%
                                         if(k1ld180==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(180, 1)+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k1ld180 + d);  
                                        }
                                            
                                         leihdauer=180;
                                         klasse=1;
                                         
                                         %> </button></a>
                                </td> <!--bis 180 Klasse 1 -->
                            </tr>
                            <tr> 
                                <td>Notebook &starf;&starf;</td> <!--Modell -->
                                <td> 
                                    <a href="notebookauswahl.jsp?leihdauer=7&klasse=2"><button class="white"><%
                                         if(k2ld7==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(7, 2)+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k2ld7 + d);  
                                        }
                                         klasse=2;
                                         leihdauer=7;
                                         
                                         %> </button></a>
                                </td> <!--bis 7 Klasse 2 -->
                                <td>
                                    <a href="notebookauswahl.jsp?leihdauer=30&klasse=2"><button class="white"><%
                                         
                                          if(k2ld30==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(30,2)+nichtvorhanden2);; 
                                        }else{
                                          out.println(c + k2ld30 + d);  
                                        }
                                          
                                          leihdauer = 30;
                                          klasse=  2;
                                      
                                          %> </button></a>
                                </td> <!--bis 30 Klasse 2-->
                                <td>
                                    <a href="notebookauswahl.jsp?leihdauer=90&klasse=2"><button class="white"><%
                                         if(k2ld90==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(90, 2)+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k2ld90 + d);  
                                        }
                                          
                                         leihdauer = 90;
                                         klasse = 2;

                                         %> </button></a>
                                </td> <!--bis 90 Klasse 2-->
                                <td>
                                    <%
                                        out.println(b);
                                        

                                    %> </button>
                                </td> <!--bis 180 Klasse 2-->
                            </tr>
                            <tr>
                                <td>Notebook &starf;&starf;&starf;</td> <!--Modell -->
                                <td>
                                    <a href="notebookauswahl.jsp?leihdauer=7&klasse=3"><button class="white"><%
                                         if(k3ld7==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(7, 3)+nichtvorhanden2);
                                        }else{
                                          out.println(c + k3ld7 + d);  
                                        }
                                        
                                         leihdauer = 7;
                                         klasse = 3;

                                         %> </button></a>
                                </td> <!--bis 7 Klasse 3 -->
                                <td>
                                    <a href="notebookauswahl.jsp?leihdauer=30&klasse=3"><button class="white"><%
                                         if(k3ld30==0){
                                           out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(30, 3)+nichtvorhanden2); 
                                        }else{
                                          out.println(c + k3ld30 + d);  
                                        }
                                         
                                         leihdauer = 30;
                                         klasse= 3;

                                         %> </button></a>
                                </td> <!--bis 30 Klasse 3 -->
                                <td>
                                    <a href="notebookauswahl.jsp?leihdauer=90&klasse=3"><button class="white"><%
                                         if(k3ld90==0){
                                             out.println(nichtvorhanden+BL.Ausleihe.getNextFreeDate(90, 3)+nichtvorhanden2);
                                        }else{
                                          out.println(c + k3ld90 + d);  
                                        }
                                         
                                         leihdauer = 90;
                                         klasse = 3;
                                         
                                         %> </button></a>
                                </td> <!--bis 90 Klasse 3 -->
                                <td>
                                    <%
                                        out.println(b);
                                        
                                    %> </button>
                                </td> <!--bis 180 Klasse 3-->
                            </tr>




                        </tbody>
                    </table>

                       
                                
                                
                </div>
            </div>

        </div>    
                                    <!--</form>-->
</body>
</html>

