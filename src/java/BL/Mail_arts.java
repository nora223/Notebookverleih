/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
/**
 *
 * @author Alex
 */
public class Mail_arts {
  
   
    
    public static String application_confirm(Ausleihe a,Notebook n,Dozent d,Student s){

    
     
String messageContent =
 "<img src="+"http://i.imgur.com/9LHtHp3.png"+"/><br>" 
+"<h1 style="+"text-align:"+"color:"+"## FF0000"+">Antrag Bestätigen</h1><br>"     
+"<h2 style="+"text-align:"+"center;"+"color:"+"#0101DF"+"> Wiwi-IT Geräteausleihe</h2><br>"
+"<p><font size="+3+ ">Guten Tag " + d.getName()+ ","+ "</p><br>" +

"<p>"+s.getName()+" hat Sie bei unserem Geräteverleih als Mitarbeiter ausgewählt,<br>um ihm/ihr zu bestätigen,"
+ "dass das folgende Gerät für die Fortführung des Studium benötigt wird.</p><br>"            
              
+ "<table border="+8+"cellspacing="+10+"cellpadding="+20+"> "
+ "<tr><th align="+"left"+">Antragssteller: </th> <th>" + s.getName() + "</th> "
+ "<tr><th align="+"left"+">Antrag vom: </th> <th>" + a.getAuftragsdatum() + "</th> "
+ "<tr><th align="+"left"+">Mitarbeiter: </th> <th>" + d.getName() + "</th> </tr>"
+ "<tr><th align="+"left"+">Bemerkung: </th><th>Auswahlverfahren</th> </tr>"
+ "<tr><th align="+"left"+">Gerätetyp: </th> <th>" + n.getKlasse() + "</th> </tr>"
+ "<tr><th align="+"left"+">Dauer: </th> <th>" + n.getLeihdauer() + "</th> </tr>"
+ "<tr><th align="+"left"+">Status: </th> <th>Wartet auf bestätigung durch Mitarbeiter</th> </tr></table><br>"
+"<p>Auf der folgenden Webseite können Sie den Antrag bestätigen oder ablehnen:</p><br>"        
+" <li><a href="+"http://localhost:8080/Notebookverleih/Login_Start.jsp"+">"+"links"+"</a></li>"       
       
        ;
  return messageContent;
    
    }
public static String Student_welcome(Student s){
    
String messageContent =
 "<img src="+"http://i.imgur.com/9LHtHp3.png"+"/><br>" 
+"<h1 style="+"text-align:"+"color:"+"## FF0000"+">Registrierung</h1><br>"     
+"<h2 style="+"text-align:"+"center;"+"color:"+"#0101DF"+"> Wiwi-IT Geräteausleihe</h2><br>"
+"<p><font size="+3+ ">Guten Tag " + s.getName()+ ","+ "</p><br>" 
+"<p>Vielen Danck  für ihre Rigestrierung.Ihre Daten wurden erfoglreich geschpeichert</p><br>" ; 
    
  return  messageContent;     
       
}
}

//String messageContent= BL.Mail_arts.Student_welcome(s);
//BL.Mail(messageContent,s);