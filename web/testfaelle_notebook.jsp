

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
  /*Notebook a1 = new Notebook();

    a1.setName("NB1");
    a1.setKlasse(1);
    a1.setLeihdauer(7);
    a1.setSeriennummer("123456asdasdf");
    a1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a1);*/

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
   Notebook a3_2 = new Notebook();

    a3_2.setName("NB1");
    a3_2.setKlasse(3);
    a3_2.setLeihdauer(7);
    a3_2.setSeriennummer("123456asdasdf");
    a3_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a3_2);
   Notebook a4 = new Notebook();

    a4.setName("NB1");
    a4.setKlasse(1);
    a4.setLeihdauer(30);
    a4.setSeriennummer("123456asdasdf");
    a4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a4);
    Notebook a4_2 = new Notebook();

    a4_2.setName("NB1");
    a4_2.setKlasse(1);
    a4_2.setLeihdauer(30);
    a4_2.setSeriennummer("123456asdasdf");
    a4_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a4_2);
    Notebook a4_3 = new Notebook();

    a4_3.setName("NB1");
    a4_3.setKlasse(1);
    a4_3.setLeihdauer(30);
    a4_3.setSeriennummer("123456asdasdf");
    a4_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a4_3);
   Notebook a5 = new Notebook();

    a5.setName("NB1");
    a5.setKlasse(2);
    a5.setLeihdauer(30);
    a5.setSeriennummer("123456asdasdf");
    a5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a5);
     Notebook a5_1 = new Notebook();

    a5_1.setName("NB1");
    a5_1.setKlasse(2);
    a5_1.setLeihdauer(30);
    a5_1.setSeriennummer("123456asdasdf");
    a5_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a5_1);
     Notebook a5_2 = new Notebook();

     a5_2.setName("NB1");
    a5_2.setKlasse(2);
    a5_2.setLeihdauer(30);
    a5_2.setSeriennummer("123456asdasdf");
    a5_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a5_2);
     Notebook a5_3 = new Notebook();

    a5_3.setName("NB1");
    a5_3.setKlasse(2);
    a5_3.setLeihdauer(30);
    a5_3.setSeriennummer("123456asdasdf");
    a5_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a5_3);
   Notebook a6 = new Notebook();

    a6.setName("NB1");
    a6.setKlasse(3);
    a6.setLeihdauer(30);
    a6.setSeriennummer("123456asdasdf");
    a6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a6);
   Notebook a6_1 = new Notebook();

    a6_1.setName("NB1");
    a6_1.setKlasse(3);
    a6_1.setLeihdauer(30);
    a6_1.setSeriennummer("123456asdasdf");
    a6_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a6_1);
   Notebook a6_2 = new Notebook();

    a6_2.setName("NB1");
    a6_2.setKlasse(3);
    a6_2.setLeihdauer(30);
    a6_2.setSeriennummer("123456asdasdf");
    a6_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a6_2);
   Notebook a6_3 = new Notebook();

    a6_3.setName("NB1");
    a6_3.setKlasse(3);
    a6_3.setLeihdauer(30);
    a6_3.setSeriennummer("123456asdasdf");
    a6_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a6_3);
   Notebook a6_4 = new Notebook();

    a6_4.setName("NB1");
    a6_4.setKlasse(3);
    a6_4.setLeihdauer(30);
    a6_4.setSeriennummer("123456asdasdf");
    a6_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a6_4);
   Notebook a7 = new Notebook();

    a7.setName("NB1");
    a7.setKlasse(1);
    a7.setLeihdauer(90);
    a7.setSeriennummer("123456asdasdf");
    a7.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7);
   Notebook a7_1 = new Notebook();

    a7_1.setName("NB1");
    a7_1.setKlasse(1);
    a7_1.setLeihdauer(90);
    a7_1.setSeriennummer("123456asdasdf");
    a7_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7_1);
   Notebook a7_2 = new Notebook();

    a7_2.setName("NB1");
    a7_2.setKlasse(1);
    a7_2.setLeihdauer(90);
    a7_2.setSeriennummer("123456asdasdf");
    a7_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7_2);
   Notebook a7_3 = new Notebook();

    a7_3.setName("NB1");
    a7_3.setKlasse(1);
    a7_3.setLeihdauer(90);
    a7_3.setSeriennummer("123456asdasdf");
    a7_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7_3);
   Notebook a7_4 = new Notebook();

    a7_4.setName("NB1");
    a7_4.setKlasse(1);
    a7_4.setLeihdauer(90);
    a7_4.setSeriennummer("123456asdasdf");
    a7_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7_4);
   Notebook a7_5 = new Notebook();

    a7_5.setName("NB1");
    a7_5.setKlasse(1);
    a7_5.setLeihdauer(90);
    a7_5.setSeriennummer("123456asdasdf");
    a7_5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a7_5);
   Notebook a8 = new Notebook();

    a8.setName("NB1");
    a8.setKlasse(2);
    a8.setLeihdauer(90);
    a8.setSeriennummer("123456asdasdf");
    a8.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8);
   Notebook a8_1 = new Notebook();

    a8_1.setName("NB1");
    a8_1.setKlasse(2);
    a8_1.setLeihdauer(90);
    a8_1.setSeriennummer("123456asdasdf");
    a8_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8_1);
   Notebook a8_2 = new Notebook();

    a8_2.setName("NB1");
    a8_2.setKlasse(2);
    a8_2.setLeihdauer(90);
    a8_2.setSeriennummer("123456asdasdf");
    a8_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8_2);
   Notebook a8_3 = new Notebook();

    a8_3.setName("NB1");
    a8_3.setKlasse(2);
    a8_3.setLeihdauer(90);
    a8_3.setSeriennummer("123456asdasdf");
    a8_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8_3);
   Notebook a8_4 = new Notebook();

    a8_4.setName("NB1");
    a8_4.setKlasse(2);
    a8_4.setLeihdauer(90);
    a8_4.setSeriennummer("123456asdasdf");
    a8_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8_4);
   Notebook a8_5 = new Notebook();

    a8_5.setName("NB1");
    a8_5.setKlasse(2);
    a8_5.setLeihdauer(90);
    a8_5.setSeriennummer("123456asdasdf");
    a8_5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8_5);
   Notebook a8_6 = new Notebook();

    a8_6.setName("NB1");
    a8_6.setKlasse(2);
    a8_6.setLeihdauer(90);
    a8_6.setSeriennummer("123456asdasdf");
    a8_6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a8_6);
   Notebook a9 = new Notebook();

    a9.setName("NB1");
    a9.setKlasse(3);
    a9.setLeihdauer(90);
    a9.setSeriennummer("123456asdasdf");
    a9.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9);
     Notebook a9_1 = new Notebook();

    a9_1.setName("NB1");
    a9_1.setKlasse(3);
    a9_1.setLeihdauer(90);
    a9_1.setSeriennummer("123456asdasdf");
    a9_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_1);
     Notebook a9_2 = new Notebook();

    a9_2.setName("NB1");
    a9_2.setKlasse(3);
    a9_2.setLeihdauer(90);
    a9_2.setSeriennummer("123456asdasdf");
    a9_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_2);
     Notebook a9_3 = new Notebook();

    a9_3.setName("NB1");
    a9_3.setKlasse(3);
    a9_3.setLeihdauer(90);
    a9_3.setSeriennummer("123456asdasdf");
    a9_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_3);
     Notebook a9_4 = new Notebook();

    a9_4.setName("NB1");
    a9_4.setKlasse(3);
    a9_4.setLeihdauer(90);
    a9_4.setSeriennummer("123456asdasdf");
    a9_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_4);
     Notebook a9_5 = new Notebook();

    a9_5.setName("NB1");
    a9_5.setKlasse(3);
    a9_5.setLeihdauer(90);
    a9_5.setSeriennummer("123456asdasdf");
    a9_5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_5);
     Notebook a9_6 = new Notebook();

    a9_6.setName("NB1");
    a9_6.setKlasse(3);
    a9_6.setLeihdauer(90);
    a9_6.setSeriennummer("123456asdasdf");
    a9_6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_6);
     Notebook a9_7 = new Notebook();

    a9_7.setName("NB1");
    a9_7.setKlasse(3);
    a9_7.setLeihdauer(90);
    a9_7.setSeriennummer("123456asdasdf");
    a9_7.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a9_7);
   
   Notebook a10 = new Notebook();

    a10.setName("NB1");
    a10.setKlasse(1);
    a10.setLeihdauer(180);
    a10.setSeriennummer("123456asdasdf");
    a10.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10);
   Notebook a10_1 = new Notebook();

    a10_1.setName("NB1");
    a10_1.setKlasse(1);
    a10_1.setLeihdauer(180);
    a10_1.setSeriennummer("123456asdasdf");
    a10_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_1);
   Notebook a10_2 = new Notebook();

    a10_2.setName("NB1");
    a10_2.setKlasse(1);
    a10_2.setLeihdauer(180);
    a10_2.setSeriennummer("123456asdasdf");
    a10_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_2);
   Notebook a10_3 = new Notebook();

    a10_3.setName("NB1");
    a10_3.setKlasse(1);
    a10_3.setLeihdauer(180);
    a10_3.setSeriennummer("123456asdasdf");
    a10_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_3);
   Notebook a10_4 = new Notebook();

    a10_4.setName("NB1");
    a10_4.setKlasse(1);
    a10_4.setLeihdauer(180);
    a10_4.setSeriennummer("123456asdasdf");
    a10_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_4);
   Notebook a10_5 = new Notebook();

    a10_5.setName("NB1");
    a10_5.setKlasse(1);
    a10_5.setLeihdauer(180);
    a10_5.setSeriennummer("123456asdasdf");
    a10_5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_5);
   Notebook a10_6 = new Notebook();

    a10_6.setName("NB1");
    a10_6.setKlasse(1);
    a10_6.setLeihdauer(180);
    a10_6.setSeriennummer("123456asdasdf");
    a10_6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_6);
   Notebook a10_7 = new Notebook();

    a10_7.setName("NB1");
    a10_7.setKlasse(1);
    a10_7.setLeihdauer(180);
    a10_7.setSeriennummer("123456asdasdf");
    a10_7.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_7);
   Notebook a10_8 = new Notebook();

    a10_8.setName("NB1");
    a10_8.setKlasse(1);
    a10_8.setLeihdauer(180);
    a10_8.setSeriennummer("123456asdasdf");
    a10_8.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a10_8);
     
   Notebook a11= new Notebook();

    a11.setName("NB1");
    a11.setKlasse(2);
    a11.setLeihdauer(180);
    a11.setSeriennummer("123456asdasdf");
    a11.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11);
   Notebook a11_1= new Notebook();

    a11_1.setName("NB1");
    a11_1.setKlasse(2);
    a11_1.setLeihdauer(180);
    a11_1.setSeriennummer("123456asdasdf");
    a11_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_1);
   Notebook a11_2= new Notebook();

    a11_2.setName("NB1");
    a11_2.setKlasse(2);
    a11_2.setLeihdauer(180);
    a11_2.setSeriennummer("123456asdasdf");
    a11_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_2);
   Notebook a11_3= new Notebook();

    a11_3.setName("NB1");
    a11_3.setKlasse(2);
    a11_3.setLeihdauer(180);
    a11_3.setSeriennummer("123456asdasdf");
    a11_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_3);
   Notebook a11_4= new Notebook();

    a11_4.setName("NB1");
    a11_4.setKlasse(2);
    a11_4.setLeihdauer(180);
    a11_4.setSeriennummer("123456asdasdf");
    a11_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_4);
   Notebook a11_5= new Notebook();

    a11_5.setName("NB1");
    a11_5.setKlasse(2);
    a11_5.setLeihdauer(180);
    a11_5.setSeriennummer("123456asdasdf");
    a11_5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_5);
   Notebook a11_6= new Notebook();

    a11_6.setName("NB1");
    a11_6.setKlasse(2);
    a11_6.setLeihdauer(180);
    a11_6.setSeriennummer("123456asdasdf");
    a11_6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_6);
   Notebook a11_7= new Notebook();

    a11_7.setName("NB1");
    a11_7.setKlasse(2);
    a11_7.setLeihdauer(180);
    a11_7.setSeriennummer("123456asdasdf");
    a11_7.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_7);
   Notebook a11_8= new Notebook();

    a11_8.setName("NB1");
    a11_8.setKlasse(2);
    a11_8.setLeihdauer(180);
    a11_8.setSeriennummer("123456asdasdf");
    a11_8.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_8);
   Notebook a11_9= new Notebook();

    a11_9.setName("NB1");
    a11_9.setKlasse(2);
    a11_9.setLeihdauer(180);
    a11_9.setSeriennummer("123456asdasdf");
    a11_9.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a11_9);
   Notebook a12= new Notebook();

    a12.setName("NB1");
    a12.setKlasse(3);
    a12.setLeihdauer(180);
    a12.setSeriennummer("123456asdasdf");
    a12.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12);
    Notebook a12_1= new Notebook();

    a12_1.setName("NB1");
    a12_1.setKlasse(3);
    a12_1.setLeihdauer(180);
    a12_1.setSeriennummer("123456asdasdf");
    a12_1.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_1);
    Notebook a12_2= new Notebook();

    a12_2.setName("NB1");
    a12_2.setKlasse(3);
    a12_2.setLeihdauer(180);
    a12_2.setSeriennummer("123456asdasdf");
    a12_2.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_2);
    Notebook a12_3= new Notebook();

    a12_3.setName("NB1");
    a12_3.setKlasse(3);
    a12_3.setLeihdauer(180);
    a12_3.setSeriennummer("123456asdasdf");
    a12_3.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_3);
    Notebook a12_4= new Notebook();

    a12_4.setName("NB1");
    a12_4.setKlasse(3);
    a12_4.setLeihdauer(180);
    a12_4.setSeriennummer("123456asdasdf");
    a12_4.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_4);
    Notebook a12_5= new Notebook();

    a12_5.setName("NB1");
    a12_5.setKlasse(3);
    a12_5.setLeihdauer(180);
    a12_5.setSeriennummer("123456asdasdf");
    a12_5.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_5);
    Notebook a12_6= new Notebook();

    a12_6.setName("NB1");
    a12_6.setKlasse(3);
    a12_6.setLeihdauer(180);
    a12_6.setSeriennummer("123456asdasdf");
    a12_6.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_6);
    Notebook a12_7= new Notebook();

    a12_7.setName("NB1");
    a12_7.setKlasse(3);
    a12_7.setLeihdauer(180);
    a12_7.setSeriennummer("123456asdasdf");
    a12_7.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_7);
    Notebook a12_8= new Notebook();

    a12_8.setName("NB1");
    a12_8.setKlasse(3);
    a12_8.setLeihdauer(180);
    a12_8.setSeriennummer("123456asdasdf");
    a12_8.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_8);
    Notebook a12_9= new Notebook();

    a12_9.setName("NB1");
    a12_9.setKlasse(3);
    a12_9.setLeihdauer(180);
    a12_9.setSeriennummer("123456asdasdf");
    a12_9.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_9);
    Notebook a12_0= new Notebook();

    a12_0.setName("NB1");
    a12_0.setKlasse(3);
    a12_0.setLeihdauer(180);
    a12_0.setSeriennummer("123456asdasdf");
    a12_0.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a12_0);

   
    
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