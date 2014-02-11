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
import javax.persistence.Temporal;

@Entity
public class Student implements Serializable{
    
    @Id
    @GeneratedValue
    private long id;
    
    private String vorname;
    private String name;
    private String eMail;
    
    @Temporal (javax.persistence.TemporalType.DATE)
    private Date gebDat;
    
    private int matNr;
    private String kurs;

    public Student(String vorname, String name, String eMail, Date gebDat, int matNr, String kurs) {
        this.vorname = vorname;
        this.name = name;
        this.eMail = eMail;
        this.gebDat = gebDat;
        this.matNr = matNr;
        this.kurs = kurs;
    }

    public Student() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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
    
    
    
}
