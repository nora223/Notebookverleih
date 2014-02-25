
   
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
     d.setName("Mueller");
     d.seteMail("solfit@web.de");
     Dozent.saveDozent(d);
      
   Dozent dd = new Dozent();
     
     dd.setGeschlecht("Maenlich");
     dd.setName("Mueller1");
     dd.seteMail("solfit@web.de");
     Dozent.saveDozent(dd);   
         
         
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
      
   Ausleihe a = new Ausleihe();
      
   a.setAntragssteller(s);
      a.setDauer(7);
      a.setMitarbeiter(d);
      a.setLeihNotebook(n);
      Ausleihe.saveAusleihe(a);
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