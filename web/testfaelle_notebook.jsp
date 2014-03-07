

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.*" 
         import="java.util.*"
         import="java.text.DateFormat"
         import="DAO.*" 
         import= "NotebookVerleih.HibernateUtil"
         import= "org.hibernate.Session"
         import= "org.hibernate.Transaction"
         %>


<%
  Notebook a1 = new Notebook();

    a1.setName("NB1");
    a1.setKlasse(1);
    a1.setLeihdauer(7);
    a1.setSeriennummer("123456asdasdf");
    a1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a1);

    Notebook a2 = new Notebook();

    a2.setName("NB1");
    a2.setKlasse(2);
    a2.setLeihdauer(7);
    a2.setSeriennummer("123456asdasdf");
    a2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a2);
   
   Notebook a3 = new Notebook();

    a3.setName("NB1");
    a3.setKlasse(3);
    a3.setLeihdauer(7);
    a3.setSeriennummer("123456asdasdf");
    a3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a3);
   Notebook a4 = new Notebook();

    a4.setName("NB1");
    a4.setKlasse(1);
    a4.setLeihdauer(30);
    a4.setSeriennummer("123456asdasdf");
    a4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a4);
   Notebook a5 = new Notebook();

    a5.setName("NB1");
    a5.setKlasse(2);
    a5.setLeihdauer(30);
    a5.setSeriennummer("123456asdasdf");
    a5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a5);
   Notebook a6 = new Notebook();

    a6.setName("NB1");
    a6.setKlasse(3);
    a6.setLeihdauer(30);
    a6.setSeriennummer("123456asdasdf");
    a6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a6);
   Notebook a7 = new Notebook();

    a7.setName("NB1");
    a7.setKlasse(1);
    a7.setLeihdauer(90);
    a7.setSeriennummer("123456asdasdf");
    a7.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7);
   Notebook a8 = new Notebook();

    a8.setName("NB1");
    a8.setKlasse(2);
    a8.setLeihdauer(90);
    a8.setSeriennummer("123456asdasdf");
    a8.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8);
   Notebook a9 = new Notebook();

    a9.setName("NB1");
    a9.setKlasse(3);
    a9.setLeihdauer(90);
    a9.setSeriennummer("123456asdasdf");
    a9.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9);
   Notebook a10 = new Notebook();

    a10.setName("NB1");
    a10.setKlasse(1);
    a10.setLeihdauer(180);
    a10.setSeriennummer("123456asdasdf");
    a10.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10);
   Notebook a11= new Notebook();

    a11.setName("NB1");
    a11.setKlasse(2);
    a11.setLeihdauer(180);
    a11.setSeriennummer("123456asdasdf");
    a11.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11);
   Notebook a12= new Notebook();

    a12.setName("NB1");
    a12.setKlasse(3);
    a12.setLeihdauer(180);
    a12.setSeriennummer("123456asdasdf");
    a12.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12);

   
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ok</h1>

    </body>
</html> 