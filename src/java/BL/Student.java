/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import NotebookVerleih.HibernateUtil;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import BL.Mail_arts;
import BL.Mail;
@Entity
public class Student implements Serializable{
    
    @Id
    @GeneratedValue
    private long id;
    private String geschlecht;
    private String vorname;
    private String name;
    private String eMail;
    
    @Temporal (javax.persistence.TemporalType.DATE)
    private Date gebDat;
    
    private int matNr;
    private String kurs;
    private String passwort;
    private String username;

    public Student(String geschlecht, String vorname, String name, String eMail, Date gebDat, int matNr, String kurs, String passwort, String username) {
        this.geschlecht = geschlecht;
        this.vorname = vorname;
        this.name = name;
        this.eMail = eMail;
        this.gebDat = gebDat;
        this.matNr = matNr;
        this.kurs = kurs;
        this.passwort = passwort;
        this.username = eMail;
    }

    public Student() {
    }
    
    public static void deleteStudentByID(long id){
        
        DAO.StudentDAO.deleteStudentByIDDAO(id);
    }
    
    public static void saveStudent(Student s){
        DAO.StudentDAO.createStudent(s);
        
        String messageContent = BL.Mail_arts.Student_welcome(s);
        BL.Mail.eMailcreate(messageContent, s.geteMail());
          
    }
    
    public static List<Student> getStudentList () {
        
        List<Student> listStudent = DAO.StudentDAO.getStudentListDAO();
                       
        return listStudent;
        
    }
    
    public static Student getStudentbyUsername(String username, String passwort){
        
        List<Student> listStudent = DAO.StudentDAO.getStudentListDAO();
        Student a = new Student();
        for (Student element : listStudent){
            if(element.username == username){
                if(element.passwort == passwort){
                    a.eMail = element.eMail;
                    a.gebDat = element.gebDat;
                    a.geschlecht = element.geschlecht;
                    a.id = element.id;
                    a.kurs = element.kurs;
                    a.matNr = element.matNr;
                    a.name = element.name;
                    a.passwort = element.passwort;
                    a.username = element.username;
                    a.vorname = element.vorname;
                    
                }
            }else{ 
                return a;
            }
            
           
            
        }
        return a; 
        
         
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

    public int getMatNr() {
        return matNr;
    }

    public void setMatNr(int matNr) {
        this.matNr = matNr;
    }

    public String getKurs() {
        return kurs;
    }

    public void setKurs(String kurs) {
        this.kurs = kurs;
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

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", geschlecht=" + geschlecht + ", vorname=" + vorname + ", name=" + name + ", eMail=" + eMail + ", gebDat=" + gebDat + ", matNr=" + matNr + ", kurs=" + kurs + ", passwort=" + passwort + ", username=" + username + '}';
    }
    
    
    

    
    
}
