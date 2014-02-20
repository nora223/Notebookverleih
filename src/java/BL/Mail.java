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
    
Student s;
Dozent d;
Administrator a;
String mail;   

public Mail(Student s){
  this.s=s;  
  String mail= s.geteMail();
 }
 
public Mail(Dozent d){
  this.d=d;  
  String mail= d.geteMail();
 }
  
public Mail(Administrator a ){
  this.a=a;  
  String mail= a.geteMail();
 }
    
  public static void eMailcreate(String messageContent,String mail){
      
   String result;
   String from = "Buchausleihe.wwi12b3@gmail.com";
   String to   =  mail;
    

   //String host = "smtp.gmail.com";
   //String login = "Buchausleihe.wwi12b3";
   //String passwort = "buchausleihe";

   
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
      
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
      
        message.setSubject("von NotebookVerleih","UTF-8");
      
        message.setContent(messageContent, "text/html;charset = UTF-8");
      
      
          Transport.send(message);
          result = "successfully";
       }
    catch (MessagingException mex) {
          mex.printStackTrace();
          result = "Error";
        } 
      
    System.out.println(result);
      
  }  
}
