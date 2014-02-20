package BL;

import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.mail.Authenticator.*;
import javax.mail.PasswordAuthentication.*;
import javax.mail.PasswordAuthentication.*;



/**
 *
 * @author Alex
 */
public class Mail {
    
    
  public static void eMailcreateStudent(Student s){
      
   String result;
   String from = "Buchausleihe.wwi12b3@gmail.com";
   String to   = s.geteMail();
    

   String host = "smtp.gmail.com";
   String login = "Buchausleihe.wwi12b3";
   String passwort = "buchausleihe";

   
   Properties props =  new Properties();

   props.setProperty("mail.smtp.host", "smtp.gmail.com");
   props.setProperty("mail.smtp.port", "587");
   props.setProperty("mail.smtp.auth", "true");
   props.setProperty ("mail.smtp.starttls.enable", "true");
   
   
   Session mailSession = Session.getInstance(props, new javax.mail.Authenticator()
     {protected PasswordAuthentication getPasswordAuthentication() 
     {return new PasswordAuthentication("Buchausleihe.wwi12b3","buchausleihe");}
     });
   try{
      
      MimeMessage message = new MimeMessage(mailSession);
      message. setHeader ( "Content-Type" ,  "text/html; charset=UTF-8" );
      message.setFrom(new InternetAddress(from));
      
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      
      message.setSubject("Antrag Bestätigen","UTF-8");
     
String messageContent =
 "<img src="+"http://i.imgur.com/9LHtHp3.png"+"/><br>"      
+"<h1 style="+"text-align:"+"center;"+"color:"+"#0101DF"+"> Wiwi-IT Geräteausleihe</h1><br>"
+"<p><font size="+3+ ">Guten Tag " + s.getName()+ ","+ "</p><br>" +

"<p>"+s.getName()+" hat Sie bei unserem Geräteverleih als Mitarbeiter ausgewählt,<br>um ihm/ihr zu bestätigen,"
+ "dass das folgende Gerät für die Fortführung des Studium benötigt wird.</p><br>"            
              
+ "<table border="+8+"cellspacing="+10+"cellpadding="+20+"> "
+ "<tr><th align="+"left"+">Antragssteller: </th> <th>" + s.getName() + "</th> "
+ "<tr><th align="+"left"+">Antrag vom: </th> <th>" + s.getName() + "</th> "
+ "<tr><th align="+"left"+">Mitarbeiter: </th> <th>" + s.getName() + "</th> </tr>"
+ "<tr><th align="+"left"+">Bemerkung: </th><th>Auswahlverfahren</th> </tr>"
+ "<tr><th align="+"left"+">Gerätetyp: </th> <th>" + s.getName() + "</th> </tr>"
+ "<tr><th align="+"left"+">Dauer: </th> <th>" + s.getName() + "</th> </tr>"
+ "<tr><th align="+"left"+">Status: </th> <th>Wartet auf bestätigung durch Mitarbeiter</th> </tr></table><br>"
+"<p>Auf der folgenden Webseite können Sie den Antrag bestätigen oder ablehnen:</p><br>"        
+" <li><a href="+"http://localhost:8080/Notebookverleih/Login_Start.jsp"+">"+"links"+"</a></li>"       
       
        ;
     
     
      message.setContent(messageContent, "text/html;charset = UTF-8");
      //message.setText("Guten Tag" +s.getName());
      
      Transport.send(message);
      result = "successfully";
       }catch (MessagingException mex) {
          mex.printStackTrace();
            result = "Error";
        } 
      
     System.out.println(result);
      
  }  
}
