<%-- 
    Document   : testausleihen
    Created on : 29.03.2014, 10:09:35
    Author     : Nora
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="BL.Dozent"%>
<%@page import="BL.Notebook"%>
<%@page import="java.util.Date"%>
<%@page import="BL.Student"%>
<%@page import="BL.Ausleihe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
             String s = "verliehen";
            
            Student s1 = new Student();
            s1.setGebDat(new Date());
            s1.setGeschlecht("weiblich");
            s1.setKurs("wwi12b3");
            s1.setMatNr(1234567);
            s1.setName("schwuli");
            s1.setVorname("spast");
            s1.seteMail("a@web.de");
            s1.setPasswort("12");
            s1.setUsername("a@web.de");
            BL.Student.saveStudent(s1);
            
             Student s2 = new Student();
            s2.setGebDat(new Date());
            s2.setGeschlecht("weiblich");
            s2.setKurs("wwi12b3");
            s2.setMatNr(1234567);
            s2.setName("schwuli");
            s2.setVorname("spast");
            s2.seteMail("a2@web.de");
            s2.setPasswort("12");
            s2.setUsername("a2@web.de");
            BL.Student.saveStudent(s2);
             Student s3 = new Student();
            s3.setGebDat(new Date());
            s3.setGeschlecht("weiblich");
            s3.setKurs("wwi12b3");
            s3.setMatNr(1234567);
            s3.setName("schwuli");
            s3.setVorname("spast");
            s3.seteMail("a3@web.de");
            s3.setPasswort("12");
            s3.setUsername("a3@web.de");
            BL.Student.saveStudent(s3);
             Student s4 = new Student();
            s4.setGebDat(new Date());
            s4.setGeschlecht("weiblich");
            s4.setKurs("wwi12b3");
            s4.setMatNr(1234567);
            s4.setName("schwuli");
            s4.setVorname("spast");
            s4.seteMail("a4@web.de");
            s4.setPasswort("12");
            s4.setUsername("a4@web.de");
            BL.Student.saveStudent(s4);
             Student s5 = new Student();
            s5.setGebDat(new Date());
            s5.setGeschlecht("weiblich");
            s5.setKurs("wwi12b3");
            s5.setMatNr(1234567);
            s5.setName("schwuli");
            s5.setVorname("spast");
            s5.seteMail("a5@web.de");
            s5.setPasswort("12");
            s5.setUsername("a5@web.de");
            BL.Student.saveStudent(s5);
             Student s6 = new Student();
            s6.setGebDat(new Date());
            s6.setGeschlecht("weiblich");
            s6.setKurs("wwi12b3");
            s6.setMatNr(1234567);
            s6.setName("schwuli");
            s6.setVorname("spast");
            s6.seteMail("a6@web.de");
            s6.setPasswort("12");
            s6.setUsername("a6@web.de");
            BL.Student.saveStudent(s6);
             Student s7 = new Student();
            s7.setGebDat(new Date());
            s7.setGeschlecht("weiblich");
            s7.setKurs("wwi12b3");
            s7.setMatNr(1234567);
            s7.setName("schwuli");
            s7.setVorname("spast");
            s7.seteMail("a7@web.de");
            s7.setPasswort("12");
            s7.setUsername("a7@web.de");
            BL.Student.saveStudent(s7);
             Student s8 = new Student();
            s8.setGebDat(new Date());
            s8.setGeschlecht("weiblich");
            s8.setKurs("wwi12b3");
            s8.setMatNr(1234567);
            s8.setName("schwuli");
            s8.setVorname("spast");
            s8.seteMail("a8@web.de");
            s8.setPasswort("12");
            s8.setUsername("a8@web.de");
            BL.Student.saveStudent(s8);
             Student s9 = new Student();
            s9.setGebDat(new Date());
            s9.setGeschlecht("weiblich");
            s9.setKurs("wwi12b3");
            s9.setMatNr(1234567);
            s9.setName("schwuli");
            s9.setVorname("spast");
            s9.seteMail("a9@web.de");
            s9.setPasswort("12");
            s9.setUsername("a9@web.de");
            BL.Student.saveStudent(s9);
             Student s0 = new Student();
            s0.setGebDat(new Date());
            s0.setGeschlecht("weiblich");
            s0.setKurs("wwi12b3");
            s0.setMatNr(1234567);
            s0.setName("schwuli");
            s0.setVorname("spast");
            s0.seteMail("a0@web.de");
            s0.setPasswort("12");
            s0.setUsername("a0@web.de");
            BL.Student.saveStudent(s0);
             Student s11 = new Student();
            s11.setGebDat(new Date());
            s11.setGeschlecht("weiblich");
            s11.setKurs("wwi12b3");
            s11.setMatNr(1234567);
            s11.setName("schwuli");
            s11.setVorname("spast");
            s11.seteMail("a@web.de");
            s11.setPasswort("12");
            s11.setUsername("a11@web.de");
            BL.Student.saveStudent(s11);
             Student s12 = new Student();
            s12.setGebDat(new Date());
            s12.setGeschlecht("weiblich");
            s12.setKurs("wwi12b3");
            s12.setMatNr(1234567);
            s12.setName("schwuli");
            s12.setVorname("spast");
            s12.seteMail("a12@web.de");
            s12.setPasswort("12");
            s12.setUsername("a12@web.de");
            BL.Student.saveStudent(s12);
             
             Notebook n1 = new Notebook();

    n1.setName("NB1");
    n1.setKlasse(1);
    n1.setLeihdauer(30);
    n1.setSeriennummer("123456asdasdf");
    n1.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n1);
   
    Notebook n2 = new Notebook();

    n2.setName("NB1");
    n2.setKlasse(1);
    n2.setLeihdauer(30);
    n2.setSeriennummer("123456asdasdf");
    n2.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n2);
    Notebook n3 = new Notebook();

    n3.setName("NB1");
    n3.setKlasse(1);
    n3.setLeihdauer(30);
    n3.setSeriennummer("123456asdasdf");
    n3.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n3);
   
   Notebook n4 = new Notebook();

    n4.setName("NB1");
    n4.setKlasse(1);
    n4.setLeihdauer(90);
    n4.setSeriennummer("123456asdasdf");
    n4.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n4);
   Notebook n5 = new Notebook();

    n5.setName("NB1");
    n5.setKlasse(1);
    n5.setLeihdauer(90);
    n5.setSeriennummer("123456asdasdf");
    n5.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n5);
   Notebook n6 = new Notebook();

    n6.setName("NB1");
    n6.setKlasse(1);
    n6.setLeihdauer(90);
    n6.setSeriennummer("123456asdasdf");
    n6.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n6);
   Notebook n7 = new Notebook();

    n7.setName("NB1");
    n7.setKlasse(1);
    n7.setLeihdauer(90);
    n7.setSeriennummer("123456asdasdf");
    n7.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n7);
   Notebook n8 = new Notebook();

    n8.setName("NB1");
    n8.setKlasse(1);
    n8.setLeihdauer(90);
    n8.setSeriennummer("123456asdasdf");
    n8.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n8);
   Notebook n9 = new Notebook();

    n9.setName("NB1");
    n9.setKlasse(1);
    n9.setLeihdauer(180);
    n9.setSeriennummer("123456asdasdf");
    n9.setNotebookStatus(s);
  
    
   BL.Notebook.saveNotebook(n9);
   
   Notebook n10 = new Notebook();

    n10.setName("NB1");
    n10.setKlasse(1);
    n10.setLeihdauer(180);
    n10.setSeriennummer("123456asdasdf");
    n10.setNotebookStatus(s);
    
   BL.Notebook.saveNotebook(n10);
  
     Dozent d = new Dozent();
            d.setGebDat(new Date());
            d.setGeschlecht("weiblich");
            d.setName("Wengler");
            d.setVorname("Katja");
            d.seteMail("example@web.de");
            d.setUsername("example@web.de");
            d.setPasswort("12");
            
            BL.Dozent.saveDozent(d);
            
            Dozent d1 = new Dozent();
            d1.setGebDat(new Date());
            d1.setGeschlecht("weiblich");
            d1.setName("Korn");
            d1.setVorname("Lothar");
            d1.seteMail("korn@web.de");
            d1.setUsername("korn@web.de");
            d1.setPasswort("12");
            
            BL.Dozent.saveDozent(d1);
            
            
            
            Ausleihe a1 = new Ausleihe();
            a1.setAntragssteller(s1);
            a1.setLeihNotebook(n1);
            a1.setMitarbeiter(d);
            a1.setDauer(30);
            a1.setAuftragsdatum(new Date());
            a1.setStatus(s);
            a1.setBetriebssystem("Linux");
            Date von = new Date();
            GregorianCalendar cal = new GregorianCalendar();
            cal.setTime(new Date());
            cal.add(Calendar.DAY_OF_MONTH, 30);
            Date bis = cal.getTime();
            a1.setVon(von);
            a1.setBis(bis);
            BL.Ausleihe.saveAusleihe(a1);
            Ausleihe a2 = new Ausleihe();
            a2.setAntragssteller(s2);
            a2.setLeihNotebook(n2);
            a2.setMitarbeiter(d);
            a2.setDauer(30);
            a2.setAuftragsdatum(new Date());
            a2.setStatus(s);
            a2.setBetriebssystem("Linux");
            Date von1 = new Date();
            GregorianCalendar cal1 = new GregorianCalendar();
            cal1.setTime(new Date());
            cal1.add(Calendar.DAY_OF_MONTH, 30);
            Date bis1 = cal1.getTime();
            a2.setVon(von1);
            a2.setBis(bis1);
            
            BL.Ausleihe.saveAusleihe(a2);
            Ausleihe a3 = new Ausleihe();
            a3.setAntragssteller(s3);
            a3.setLeihNotebook(n3);
            a3.setMitarbeiter(d);
            a3.setDauer(30);
            a3.setAuftragsdatum(new Date());
            a3.setStatus(s);
            a3.setBetriebssystem("Linux");
            Date von2 = new Date();
            GregorianCalendar cal2 = new GregorianCalendar();
            cal2.setTime(new Date());
            cal2.add(Calendar.DAY_OF_MONTH, 30);
            Date bis2 = cal2.getTime();
            a3.setVon(von2);
            a3.setBis(bis2);
            BL.Ausleihe.saveAusleihe(a3);
            
            Ausleihe a4 = new Ausleihe();
            a4.setAntragssteller(s4);
            a4.setLeihNotebook(n4);
            a4.setMitarbeiter(d);
            a4.setDauer(90);
            a4.setAuftragsdatum(new Date());
            a4.setStatus(s);
            a4.setBetriebssystem("Linux");
            Date von3 = new Date();
            GregorianCalendar cal3 = new GregorianCalendar();
            cal3.setTime(new Date());
            cal3.add(Calendar.DAY_OF_MONTH, 90);
            Date bis3 = cal3.getTime();
            a4.setVon(von3);
            a4.setBis(bis3);
            BL.Ausleihe.saveAusleihe(a4);
            
            Ausleihe a5 = new Ausleihe();
            a5.setAntragssteller(s5);
            a5.setLeihNotebook(n5);
            a5.setMitarbeiter(d);
            a5.setDauer(90);
            a5.setAuftragsdatum(new Date());
            a5.setStatus(s);
            a5.setBetriebssystem("Linux");
            Date von5 = new Date();
            GregorianCalendar cal5 = new GregorianCalendar();
            cal5.setTime(new Date());
            cal5.add(Calendar.DAY_OF_MONTH, 90);
            Date bis5 = cal5.getTime();
            a5.setVon(von5);
            a5.setBis(bis5);
            BL.Ausleihe.saveAusleihe(a5);
            
            Ausleihe a6 = new Ausleihe();
            a6.setAntragssteller(s6);
            a6.setLeihNotebook(n6);
            a6.setMitarbeiter(d);
            a6.setDauer(90);
            a6.setAuftragsdatum(new Date());
            a6.setStatus(s);
            a6.setBetriebssystem("Linux");
            Date von6 = new Date();
            GregorianCalendar cal6 = new GregorianCalendar();
            cal6.setTime(new Date());
            cal6.add(Calendar.DAY_OF_MONTH, 90);
            Date bis6 = cal6.getTime();
            a6.setVon(von6);
            a6.setBis(bis6);
            BL.Ausleihe.saveAusleihe(a6);
            
            Ausleihe a7 = new Ausleihe();
            a7.setAntragssteller(s7);
            a7.setLeihNotebook(n7);
            a7.setMitarbeiter(d);
            a7.setDauer(90);
            a7.setAuftragsdatum(new Date());
            a7.setStatus(s);
            a7.setBetriebssystem("Linux");
            Date von7 = new Date();
            GregorianCalendar cal7 = new GregorianCalendar();
            cal7.setTime(new Date());
            cal7.add(Calendar.DAY_OF_MONTH, 90);
            Date bis7 = cal7.getTime();
            a7.setVon(von7);
            a7.setBis(bis7);
            BL.Ausleihe.saveAusleihe(a7);
            
            Ausleihe a8 = new Ausleihe();
            a8.setAntragssteller(s8);
            a8.setLeihNotebook(n8);
            a8.setMitarbeiter(d);
            a8.setDauer(90);
            a8.setAuftragsdatum(new Date());
            a8.setStatus(s);
            a8.setBetriebssystem("Linux");
            Date von8 = new Date();
            GregorianCalendar cal8 = new GregorianCalendar();
            cal8.setTime(new Date());
            cal8.add(Calendar.DAY_OF_MONTH, 90);
            Date bis8 = cal8.getTime();
            a8.setVon(von8);
            a8.setBis(bis8);
            BL.Ausleihe.saveAusleihe(a8);
            
            Ausleihe a9 = new Ausleihe();
            a9.setAntragssteller(s9);
            a9.setLeihNotebook(n9);
            a9.setMitarbeiter(d);
            a9.setDauer(180);
            a9.setAuftragsdatum(new Date());
            a9.setStatus(s);
            a9.setBetriebssystem("Linux");
            Date von9 = new Date();
            GregorianCalendar cal9 = new GregorianCalendar();
            cal9.setTime(new Date());
            cal9.add(Calendar.DAY_OF_MONTH, 180);
            Date bis9 = cal9.getTime();
            a9.setVon(von9);
            a9.setBis(bis9);
            BL.Ausleihe.saveAusleihe(a9);
            
            Ausleihe a0 = new Ausleihe();
            a0.setAntragssteller(s0);
            a0.setLeihNotebook(n10);
            a0.setMitarbeiter(d);
            a0.setDauer(180);
            a0.setAuftragsdatum(new Date());
            a0.setStatus(s);
            a0.setBetriebssystem("Linux");
            Date von0 = new Date();
            GregorianCalendar cal0 = new GregorianCalendar();
            cal0.setTime(new Date());
            cal0.add(Calendar.DAY_OF_MONTH, 180);
            Date bis0 = cal0.getTime();
            a0.setVon(von0);
            a0.setBis(bis0);
            BL.Ausleihe.saveAusleihe(a0);
            
            
            %>
        
    </body>
</html>
