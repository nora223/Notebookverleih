/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Boss
 */
@WebServlet(urlPatterns = {"/servlets/passwortVergessen"})
public class PasswortVergessen extends HttpServlet {

  /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
                    String nachname = request.getParameter("nachname");
                    String vorname = request.getParameter("vorname");
                    String email = request.getParameter("e_mail");
                    
                    List<Student> listStudent =  Student.getStudentList();
                    List<Dozent> listDozent = Dozent.getDozentList();
                    List<Administrator> listAdmin =  Administrator.getAdministratorList();

                    boolean hit = false;
                    String passwort;
                    String newPW;
                    
                    if (hit == false){
                        for(Student element : listStudent){
                            
                            if(nachname.equals(element.getName()) && vorname.equals(element.getVorname()) && email.equals(element.geteMail())){
                                passwort = element.getPasswort();
                                
                                //neues Passwort erzeugen
                                String x = passwort;
                                DateFormat df = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
                                Date date = new Date();
                                String s = (String) df.format(date);
                                newPW = passwort + s;
                                newPW = newPW.replaceAll(" ", "");
                                
                                //E-Mail mit dem Passwort an die obige Variable "email" senden
                                
                                
                                //Weiterleitung auf PW_sent_Admin.jsp
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/PW_sent_Admin.jsp" );
                                dispatcher.forward ( request, response );
                        
                                hit = true;
                                break;
                            }
                            
                        }
                    }

                    if (hit == false){
                        for(Dozent element : listDozent){
                             
                            if(nachname.equals(element.getName()) && vorname.equals(element.getVorname()) && email.equals(element.geteMail())){
                                passwort = element.getPasswort();
                                
                                //neues Passwort erzeugen
                                String x = passwort;
                                DateFormat df = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
                                Date date = new Date();
                                String s = (String) df.format(date);
                                newPW = passwort + s;
                                newPW = newPW.replaceAll(" ", "");
                                
                                //E-Mail mit dem Passwort an die obige Variable "email" senden
                                
                                
                                //Weiterleitung auf PW_sent_Admin.jsp
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/PW_sent_Admin.jsp" );
                                dispatcher.forward ( request, response );
                                
                                hit = true;
                                break;
                            }
                            
                    }

                    if(hit == false){
                        for(Administrator element : listAdmin){
                            
                            if(nachname.equals(element.getName()) && vorname.equals(element.getVorname()) && email.equals(element.geteMail())){
                                passwort = element.getPasswort();
                                
                                //neues Passwort erzeugen
                                String x = passwort;
                                DateFormat df = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
                                Date date = new Date();
                                String s = (String) df.format(date);
                                newPW = passwort + s;
                                newPW = newPW.replaceAll(" ", "");
                                
                                //E-Mail mit dem Passwort an die obige Variable "email" senden
                                
                                
                                //Weiterleitung auf PW_sent_Admin.jsp
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/PW_sent_Admin.jsp" );
                                dispatcher.forward ( request, response );
                                
                                hit = true;
                                break;
                            }
                            
                        } 
                    }
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/UserNotFound.jsp" );
                        dispatcher.forward ( request, response );
                    }

        
        
        
    }

}
