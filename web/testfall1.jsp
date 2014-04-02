<%-- 
    Document   : testfall1
    Created on : 01.04.2014, 17:06:03
    Author     : Boss
--%>

<%@page import="BL.Notebook"%>
<%@page import="BL.Dozent"%>
<%@page import="BL.Administrator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="BL.Student" 
         import="java.util.*"
         import="java.text.DateFormat"
         %>
<!--<?xml-stylesheet type="text/xhtml" href="newshtml.xhtml" ?>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <title>Testfall 1</title>
    <div>
        <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
        <div id="logout"> <a id="logout" href="logout.jsp"> Logout </a></div>
        <hr>
        <p><img id="pic2" src="pic/dh.jpg" alt="dh" />
    </div>
</head>
<body>
    <div> <!-- navigationsbereich Menu-->
        <div  class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item active" >
                        NAVIGATION
                    </a>
                    <a href="index.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Startseite</a>
                    <a href="userinf.jsp" class="list-group-item" >User Informationen</a>
                    
                </div>
            </div>

            <%
                //Admin
                Administrator a = new Administrator();
                a.setGebDat(new Date());
                a.setGeschlecht("männlich");
                a.setName("Maier");
                a.setPasswort("123");
                a.setUsername("admin14@anonmails.de");
                a.setVorname("Hans");
                a.seteMail("admin14@anonmails.de");
                
                BL.Administrator.saveAdministrator(a);
                
                
                //3 Dozenten
                Dozent d = new Dozent();
                d.setGebDat(new Date());
                d.setGeschlecht("weiblich");
                d.setName("Wengler");
                d.setVorname("Katja");
                d.seteMail("dozent@anonmails.de");
                d.setUsername("dozent@anonmails.de");
                d.setPasswort("123");
                BL.Dozent.saveDozent(d);
                
                Dozent e = new Dozent();
                e.setGebDat(new Date());
                e.setGeschlecht("männlich");
                e.setName("Toussaint");
                e.setVorname("Frederic");
                e.seteMail("dozent1@anonmails.de");
                e.setUsername("dozent1@anonmails.de");
                e.setPasswort("123");
                BL.Dozent.saveDozent(e);
                
                Dozent f = new Dozent();
                f.setGebDat(new Date());
                f.setGeschlecht("männlich");
                f.setName("Korn");
                f.setVorname("Lothar");
                f.seteMail("dozent2@anonmails.de");
                f.setUsername("dozent2@anonmails.de");
                f.setPasswort("123");
                BL.Dozent.saveDozent(f);
                
                //24 Studenten
                Student  s = new Student();
                s.setGebDat(new Date());
                s.setGeschlecht("weiblich");
                s.setKurs("WWI12B3");
                s.setMatNr(1234567);
                s.setName("Reich");
                s.setVorname("Caroline");
                s.setPasswort("123");
                s.setUsername("student@anonmails.de");
                s.seteMail("student@anonmails.de");
                BL.Student.saveStudent(s);
                
                Student  t = new Student();
                t.setGebDat(new Date());
                t.setGeschlecht("männlich");
                t.setKurs("WWI12B3");
                t.setMatNr(2345678);
                t.setName("Leupolz");
                t.setVorname("Max");
                t.setPasswort("123");
                t.setUsername("student1@anonmails.de");
                t.seteMail("student1@anonmails.de");
                BL.Student.saveStudent(t);
                
                Student  u = new Student();
                u.setGebDat(new Date());
                u.setGeschlecht("weiblich");
                u.setKurs("WWI12B3");
                u.setMatNr(3456789);
                u.setName("Hoffmann");
                u.setVorname("Caroline");
                u.setPasswort("123");
                u.setUsername("student2@anonmails.de");
                u.seteMail("student2@anonmails.de");
                BL.Student.saveStudent(u);
                
                Student  v = new Student();
                v.setGebDat(new Date());
                v.setGeschlecht("männlich");
                v.setKurs("WWI12B3");
                v.setMatNr(4567890);
                v.setName("Tendyck");
                v.setVorname("Tino");
                v.setPasswort("123");
                v.setUsername("student3@anonmails.de");
                v.seteMail("student3@anonmails.de");
                BL.Student.saveStudent(v);
                
                Student  w = new Student();
                w.setGebDat(new Date());
                w.setGeschlecht("weiblich");
                w.setKurs("WWI12B3");
                w.setMatNr(5678901);
                w.setName("Kirchmeier");
                w.setVorname("Corinna");
                w.setPasswort("123");
                w.setUsername("student4@anonmails.de");
                w.seteMail("student4@anonmails.de");
                BL.Student.saveStudent(w);
                
                Student  x = new Student();
                x.setGebDat(new Date());
                x.setGeschlecht("männlich");
                x.setKurs("WWI12B3");
                x.setMatNr(6789012);
                x.setName("Grinberg");
                x.setVorname("Alexey");
                x.setPasswort("123");
                x.setUsername("student5@anonmails.de");
                x.seteMail("student5@anonmails.de");
                BL.Student.saveStudent(x);
                
                Student  y = new Student();
                y.setGebDat(new Date());
                y.setGeschlecht("weiblich");
                y.setKurs("WWI12B5");
                y.setMatNr(7890123);
                y.setName("Maier");
                y.setVorname("Doro");
                y.setPasswort("123");
                y.setUsername("student6@anonmails.de");
                y.seteMail("student6@anonmails.de");
                BL.Student.saveStudent(y);
                
                Student  z = new Student();
                z.setGebDat(new Date());
                z.setGeschlecht("männlich");
                z.setKurs("WWI12B3");
                z.setMatNr(8901234);
                z.setName("Maier");
                z.setVorname("Harald");
                z.setPasswort("123");
                z.setUsername("student7@anonmails.de");
                z.seteMail("student7@anonmails.de");
                BL.Student.saveStudent(z);
                
                Student b = new Student();
                b.setGebDat(new Date());
                b.setGeschlecht("weiblich");
                b.setKurs("WWI12B3");
                b.setMatNr(9012345);
                b.setName("Leupolz");
                b.setVorname("Marianne");
                b.setPasswort("123");
                b.setUsername("student8@anonmails.de");
                b.seteMail("student8@anonmails.de");
                BL.Student.saveStudent(b);
                
                Student  c = new Student();
                c.setGebDat(new Date());
                c.setGeschlecht("männlich");
                c.setKurs("WWI12B3");
                c.setMatNr(0123456);
                c.setName("Tendyck");
                c.setVorname("Albert");
                c.setPasswort("123");
                c.setUsername("student9@anonmails.de");
                c.seteMail("student9@anonmails.de");
                BL.Student.saveStudent(c);
                
                Student  g = new Student();
                g.setGebDat(new Date());
                g.setGeschlecht("weiblich");
                g.setKurs("WWI12B3");
                g.setMatNr(1111111);
                g.setName("Reich");
                g.setVorname("Jennifer");
                g.setPasswort("123");
                g.setUsername("student10@anonmails.de");
                g.seteMail("student10@anonmails.de");
                BL.Student.saveStudent(g);
                
                Student  h = new Student();
                h.setGebDat(new Date());
                h.setGeschlecht("männlich");
                h.setKurs("WWI12B3");
                h.setMatNr(2222222);
                h.setName("Flaig");
                h.setVorname("David");
                h.setPasswort("123");
                h.setUsername("student11@anonmails.de");
                h.seteMail("student11@anonmails.de");
                BL.Student.saveStudent(h);
                
                Student i = new Student();
                i.setGebDat(new Date());
                i.setGeschlecht("weiblich");
                i.setKurs("WWI12B3");
                i.setMatNr(3333333);
                i.setName("Müller");
                i.setVorname("Anne");
                i.setPasswort("123");
                i.setUsername("student12@anonmails.de");
                i.seteMail("student12@anonmails.de");
                BL.Student.saveStudent(i);
                
                Student  j = new Student();
                j.setGebDat(new Date());
                j.setGeschlecht("männlich");
                j.setKurs("WWI12B3");
                j.setMatNr(4444444);
                j.setName("Baumann");
                j.setVorname("David");
                j.setPasswort("123");
                j.setUsername("student13@anonmails.de");
                j.seteMail("student13@anonmails.de");
                BL.Student.saveStudent(j);
                
                Student  k = new Student();
                k.setGebDat(new Date());
                k.setGeschlecht("weiblich");
                k.setKurs("WWI12B3");
                k.setMatNr(5555555);
                k.setName("Berthold");
                k.setVorname("Maike");
                k.setPasswort("123");
                k.setUsername("student14@anonmails.de");
                k.seteMail("student14@anonmails.de");
                BL.Student.saveStudent(k);
                
                Student  l = new Student();
                l.setGebDat(new Date());
                l.setGeschlecht("männlich");
                l.setKurs("WWI12B3");
                l.setMatNr(6666666);
                l.setName("Blades");
                l.setVorname("Kevin");
                l.setPasswort("123");
                l.setUsername("student15@anonmails.de");
                l.seteMail("student15@anonmails.de");
                BL.Student.saveStudent(l);
                
                Student m = new Student();
                m.setGebDat(new Date());
                m.setGeschlecht("weiblich");
                m.setKurs("WWI12B3");
                m.setMatNr(44444444);
                m.setName("Schaper");
                m.setVorname("Ella");
                m.setPasswort("123");
                m.setUsername("student16@anonmails.de");
                m.seteMail("student16@anonmails.de");
                BL.Student.saveStudent(m);
                
                Student  n = new Student();
                n.setGebDat(new Date());
                n.setGeschlecht("männlich");
                n.setKurs("WWI12B3");
                n.setMatNr(5555555);
                n.setName("Kepp");
                n.setVorname("Kevin");
                n.setPasswort("123");
                n.setUsername("student17@anonmails.de");
                n.seteMail("student17@anonmails.de");
                BL.Student.saveStudent(n);
                
                Student  o = new Student();
                o.setGebDat(new Date());
                o.setGeschlecht("weiblich");
                o.setKurs("WWI12B3");
                o.setMatNr(6666666);
                o.setName("Krebs");
                o.setVorname("Doro");
                o.setPasswort("123");
                o.setUsername("student18@anonmails.de");
                o.seteMail("student18@anonmails.de");
                BL.Student.saveStudent(o);
                
                Student  p = new Student();
                p.setGebDat(new Date());
                p.setGeschlecht("männlich");
                p.setKurs("WWI12B1");
                p.setMatNr(7777777);
                p.setName("Schwarz-Fritz");
                p.setVorname("Fabian");
                p.setPasswort("123");
                p.setUsername("student19@anonmails.de");
                p.seteMail("student19@anonmails.de");
                BL.Student.saveStudent(p);
                
                Student q = new Student();
                q.setGebDat(new Date());
                q.setGeschlecht("weiblich");
                q.setKurs("WWI12B1");
                q.setMatNr(8888888);
                q.setName("Klein");
                q.setVorname("Hannah");
                q.setPasswort("123");
                q.setUsername("student20@anonmails.de");
                q.seteMail("student20@anonmails.de");
                BL.Student.saveStudent(q);
                
                Student  r = new Student();
                r.setGebDat(new Date());
                r.setGeschlecht("männlich");
                r.setKurs("WWI12B1");
                r.setMatNr(999999999);
                r.setName("Klein");
                r.setVorname("Dominik");
                r.setPasswort("123");
                r.setUsername("student21@anonmails.de");
                r.seteMail("student21@anonmails.de");
                BL.Student.saveStudent(r);
                
                Student  aa = new Student();
                aa.setGebDat(new Date());
                aa.setGeschlecht("weiblich");
                aa.setKurs("WWI12B2");
                aa.setMatNr(0000000);
                aa.setName("Roggisch");
                aa.setVorname("Angelika");
                aa.setPasswort("123");
                aa.setUsername("student22@anonmails.de");
                aa.seteMail("student22@anonmails.de");
                BL.Student.saveStudent(aa);
                
                Student  ab = new Student();
                ab.setGebDat(new Date());
                ab.setGeschlecht("männlich");
                ab.setKurs("WWI12B1");
                ab.setMatNr(1111222);
                ab.setName("Roggisch");
                ab.setVorname("Oliver");
                ab.setPasswort("123");
                ab.setUsername("student23@anonmails.de");
                ab.seteMail("student23@anonmails.de");
                BL.Student.saveStudent(ab);
                
                Student  ac = new Student();
                ac.setGebDat(new Date());
                ac.setGeschlecht("männlich");
                ac.setKurs("WWI12B2");
                ac.setMatNr(1111333);
                ac.setName("Ölschläger");
                ac.setVorname("Anne");
                ac.setPasswort("123");
                ac.setUsername("student24@anonmails.de");
                ac.seteMail("student24@anonmails.de");
                BL.Student.saveStudent(ac);
                
                //18 Notebook Leihdauer: 7,30,90,180
                String status = "verfügbar";
                
                //Kategorie 1
                Notebook n1 = new Notebook();
                n1.setName("Sony VPCSB");
                n1.setKlasse(1);
                n1.setLeihdauer(30);
                n1.setSeriennummer("VPCSB3X9B");
                n1.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n1);
                
                Notebook n2 = new Notebook();
                n2.setName("Lenovo ThinkPad");
                n2.setKlasse(1);
                n2.setLeihdauer(90);
                n2.setSeriennummer("1NZY6ZGEM");
                n2.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n2);
                
                Notebook n3 = new Notebook();
                n3.setName("Acer");
                n3.setKlasse(1);
                n3.setLeihdauer(180);
                n3.setSeriennummer("GH4FE34DF");
                n3.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n3);
                
                Notebook n4 = new Notebook();
                n4.setName("Samsung");
                n4.setKlasse(1);
                n4.setLeihdauer(30);
                n4.setSeriennummer("MHGHB6X9B");
                n4.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n4);
                
                Notebook n5 = new Notebook();
                n5.setName("Dell");
                n5.setKlasse(1);
                n5.setLeihdauer(90);
                n5.setSeriennummer("FRT59HJ3DG");
                n5.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n5);
                
                Notebook n6 = new Notebook();
                n6.setName("Fujitsu");
                n6.setKlasse(1);
                n6.setLeihdauer(180);
                n6.setSeriennummer("DLW34FBGH3");
                n6.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n6);
                
                //Kategorie 2
                Notebook n7 = new Notebook();
                n7.setName("Sony VPCSB");
                n7.setKlasse(2);
                n7.setLeihdauer(7);
                n7.setSeriennummer("VPBSB5X9C");
                n7.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n7);
                
                Notebook n8 = new Notebook();
                n8.setName("Lenovo ThinkPad");
                n8.setKlasse(2);
                n8.setLeihdauer(7);
                n8.setSeriennummer("3NZG6ZNEM");
                n8.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n8);
                
                Notebook n9 = new Notebook();
                n9.setName("Acer");
                n9.setKlasse(2);
                n9.setLeihdauer(30);
                n9.setSeriennummer("DH7FE14GF");
                n9.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n9);
                
                Notebook n10 = new Notebook();
                n10.setName("Samsung");
                n10.setKlasse(2);
                n10.setLeihdauer(30);
                n10.setSeriennummer("MHF4B3X9B");
                n10.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n10);
                
                Notebook n11 = new Notebook();
                n11.setName("Dell");
                n11.setKlasse(2);
                n11.setLeihdauer(90);
                n11.setSeriennummer("F3D5OHJ3DG");
                n11.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n11);
                
                Notebook n12 = new Notebook();
                n12.setName("Fujitsu");
                n12.setKlasse(2);
                n12.setLeihdauer(90);
                n12.setSeriennummer("DKW84FBJH3");
                n12.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n12);
                
                //Kategorie 3
                Notebook n13 = new Notebook();
                n13.setName("Fujitsu");
                n13.setKlasse(3);
                n13.setLeihdauer(7);
                n13.setSeriennummer("MLW23FBGD3");
                n13.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n13);
                                
                Notebook n14 = new Notebook();
                n14.setName("Sony VPCSB");
                n14.setKlasse(3);
                n14.setLeihdauer(7);
                n14.setSeriennummer("DKBSB2X10");
                n14.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n14);
                
                Notebook n15 = new Notebook();
                n15.setName("Lenovo ThinkPad");
                n15.setKlasse(3);
                n15.setLeihdauer(30);
                n15.setSeriennummer("9NTG5ZNLM");
                n15.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n15);
                
                Notebook n16 = new Notebook();
                n16.setName("Acer");
                n16.setKlasse(3);
                n16.setLeihdauer(30);
                n16.setSeriennummer("GG7TT34GF");
                n16.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n16);
                
                Notebook n17 = new Notebook();
                n17.setName("Samsung");
                n17.setKlasse(3);
                n17.setLeihdauer(90);
                n17.setSeriennummer("LLF5B3X9B");
                n17.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n17);
                
                Notebook n18 = new Notebook();
                n18.setName("Dell");
                n18.setKlasse(3);
                n18.setLeihdauer(90);
                n18.setSeriennummer("G3D9OKJ3IG");
                n18.setNotebookStatus(status);
                BL.Notebook.saveNotebook(n18);
                
            %>
            
            
            <div class="col-md-6">
                <div class="area">
                    <p>Der Testfall wurde erfolgreich angelegt!</p>
                </div>
            </div>
        </div>    



</body>
</html>
