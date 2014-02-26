

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
    Student s = new Student();

    s.setName("Alex");
    s.setVorname("Karl");
    s.seteMail("solfit@web.de");
    s.setPasswort("solfit");
    s.setGeschlecht("Maenlich");
    s.setMatNr(123);
    s.setKurs("wwi");
    s.setGebDat(new Date());
    Student.saveStudent(s);


    Student ss = new Student();

    ss.setName("Alex1");
    ss.setVorname("Gudrun");
    ss.seteMail("solfit@web.de");
    ss.setPasswort("solfit1");
    ss.setGeschlecht("Maenlich");
    ss.setMatNr(1234);
    ss.setKurs("wwi");
    ss.setGebDat(new Date());
    Student.saveStudent(ss);


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

    Administrator a = new Administrator();

    a.setGeschlecht("Maenlich");
    a.setVorname("Karl");
    a.setName("Mueller");
    a.seteMail("solfit@web.de");
    a.setGebDat(new Date());
    a.setPasswort("admin");
    a.saveAdministrator(a);

    Administrator aa = new Administrator();

    aa.setGeschlecht("Maenlich");
    aa.setVorname("Kurt");
    aa.setName("Mueller1");
    aa.seteMail("solfit@web.de");
    aa.setGebDat(new Date());
    aa.setPasswort("admin");
    aa.saveAdministrator(aa);



    Notebook n = new Notebook();
    n.setId(12345);
    n.setName("ND1");
    n.setSeriennummer("1");
    n.setLeihdauer(7);
    n.setKlasse(2);
    n.setVerliehen(false);
    Notebook.saveNotebook(n);
    
    

    Notebook nn = new Notebook();
    nn.setId(6789);
    n.setName("ND2");
    n.setSeriennummer("2");
    n.setLeihdauer(7);
    n.setKlasse(1);
    n.setVerliehen(false);
    Notebook.saveNotebook(nn);

    Student.getStudentList();

    Ausleihe aus = new Ausleihe();

    aus.setAntragssteller(s);
    aus.setDauer(7);
    aus.setMitarbeiter(d);
    aus.setLeihNotebook(n);
    Ausleihe.saveAusleihe(aus);
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