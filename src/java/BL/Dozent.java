/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;


import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
/**
 *
 * @author Tino
 */

@Entity
public class Dozent implements Serializable{
    
    @Id
    @GeneratedValue
    private long id;
    private String geschlecht;
    private String vorname;
    private String name;
    private String eMail;
    
    @Temporal (javax.persistence.TemporalType.DATE)
    private Date gebDat;
    
    private String passwort;
    private String username;

    public Dozent(String geschlecht, String vorname, String name, String eMail, Date gebDat, String passwort, String username) {
        this.geschlecht = geschlecht;
        this.vorname = vorname;
        this.name = name;
        this.eMail = eMail;
        this.gebDat = gebDat;
        this.passwort = passwort;
        this.username = eMail;
    }

    public Dozent() {
    }
    
    public static void saveDozent(Dozent d){
        DAO.DozentDAO.createDozent(d);
         
        String messageContent = BL.Mail_arts.Dozent_welcome(d);
        BL.Mail.eMailcreate(messageContent, d.geteMail());
    }
    
    public static List<Dozent> getDozentList () {
        
        List<Dozent> listDozent = DAO.DozentDAO.getDozentListDAO();
                       
        return listDozent;
        
    }
    
    public static Dozent getDozentByName(String name){
         List<Dozent> listDozent = DAO.DozentDAO.getDozentListDAO();
        Dozent a = null;
        for (Dozent element : listDozent){
            if(element.name == name){
                
                    a.eMail = element.eMail;
                    a.gebDat = element.gebDat;
                    a.geschlecht = element.geschlecht;
                    a.id = element.id;
                    a.name = element.name;
                    a.passwort = element.passwort;
                    a.username = element.username;
                    a.vorname = element.vorname;
                    
                
            }else{ 
                return null;
            }
            
           
            
        }
        return a; 
        
       
    }
    
    public static void deleteDozentByID(long id){
        
        DAO.DozentDAO.deleteDozentByIDDAO(id);
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getGeschlecht() {
        return geschlecht;
    }

    public void setGeschlecht(String geschlecht) {
        this.geschlecht = geschlecht;
    }

    public String getVorname() {
        return vorname;
    }

    public void setVorname(String vorname) {
        this.vorname = vorname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public Date getGebDat() {
        return gebDat;
    }

    public void setGebDat(Date gebDat) {
        this.gebDat = gebDat;
    }

    public String getPasswort() {
        return passwort;
    }

    public void setPasswort(String passwort) {
        this.passwort = passwort;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
    
}
