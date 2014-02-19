
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
      
      message.setFrom(new InternetAddress(from));
      
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      
      message.setSubject("Buch");
     
      String messageContent = "<h1>Guten Tag " + s.getName() + "</h1>";
      message.setContent(messageContent, "text/html");
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
