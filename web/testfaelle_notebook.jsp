

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
    Notebook s = new Notebook();

    s.setName("NB1");
    s.setKlasse(1);
    s.setLeihdauer(7);
    s.setSeriennummer("123456asdasdf");
    s.setVerliehen(false);
    
   BL.Notebook.saveNotebook(s);
   
Notebook a = new Notebook();

    a.setName("NB3");
    a.setKlasse(2);
    a.setLeihdauer(30);
    a.setSeriennummer("123456asdasdf");
    a.setVerliehen(false);
    
   BL.Notebook.saveNotebook(a);
   
   Notebook b = new Notebook();

    b.setName("NB2");
    b.setKlasse(3);
    b.setLeihdauer(90);
    b.setSeriennummer("123456asdasdf");
    b.setVerliehen(false);
    
   BL.Notebook.saveNotebook(b);


    Dozent d = new Dozent();

    d.setGeschlecht("Maenlich");
    d.setVorname("Karl");
    d.setName("Mueller");
    d.seteMail("solfit@web.de");
    d.setGebDat(new Date());
    d.setPasswort("admin");
    Dozent.saveDozent(d);

    Dozent dd = new Dozent();

    dd.setGeschlecht("Maenlich");
    dd.setVorname("Kurt");
    dd.setName("Mueller1");
    dd.seteMail("solfit@web.de");
    dd.setGebDat(new Date());
    dd.setPasswort("admin");
    Dozent.saveDozent(dd);

    Administrator ad = new Administrator();

    ad.setGeschlecht("Maenlich");
    ad.setVorname("Karl");
    ad.setName("Mueller");
    ad.seteMail("solfit@web.de");
    ad.setGebDat(new Date());
    ad.setPasswort("admin");
    BL.Administrator.saveAdministrator(ad);

    Administrator aa = new Administrator();

    aa.setGeschlecht("Maenlich");
    aa.setVorname("Kurt");
    aa.setName("Mueller1");
    aa.seteMail("solfit@web.de");
    aa.setGebDat(new Date());
    aa.setPasswort("admin");
    aa.saveAdministrator(aa);



    Notebook n = new Notebook();

    n.setSeriennummer("1");
    n.setLeihdauer(7);
    n.setKlasse(2);
    n.setVerliehen(false);
    Notebook.saveNotebook(n);

    Notebook nn = new Notebook();

    nn.setSeriennummer("2");
    nn.setLeihdauer(12);
    nn.setKlasse(3);
    nn.setVerliehen(false);
    Notebook.saveNotebook(nn);

    Student.getStudentList();

   
    //String messageContenta= BL.Mail_arts.notebook_ready(a,n,s);
    //BL.Mail.eMailcreate(messageContenta,ss.geteMail());
    //BL.Mail.eMailcreate(messageContenta,DAO.DozentDAO.all_name());  
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