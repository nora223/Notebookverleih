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
 * @author Tino
 */
@Entity
public class Ausleihe implements Serializable{
    
    @Id
    @GeneratedValue
    private long id;
    
     @Temporal (javax.persistence.TemporalType.DATE)
    private Date auftragsdatum;
    @OneToOne
    private Student antragssteller;
    
    @ManyToOne
    private Dozent mitarbeiter;
    private int dauer;
    
    @Temporal (javax.persistence.TemporalType.DATE)
    private Date von;
    
    @Temporal (javax.persistence.TemporalType.DATE)
    private Date bis;
    
    private String bermerkung;
    private String status;
    @OneToOne
    private Notebook leihNotebook;

    public Ausleihe(Date auftragsdatum, Student antragssteller, Dozent mitarbeiter, int dauer, Date von, Date bis, String bermerkung, String status, Notebook leihNotebook) {
        this.auftragsdatum = auftragsdatum;
        this.antragssteller = antragssteller;
        this.mitarbeiter = mitarbeiter;
        this.dauer = dauer;
        this.von = von;
        this.bis = bis;
        this.bermerkung = bermerkung;
        this.status = status;
        this.leihNotebook = leihNotebook;
    }

    public Ausleihe() {
    }
    
    public static void saveAusleihe(Ausleihe aus){
        DAO.AusleiheDAO.createAusleihe(aus);
        
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getAuftragsdatum() {
        return auftragsdatum;
    }

    public void setAuftragsdatum(Date auftragsdatum) {
        this.auftragsdatum = auftragsdatum;
    }

    public Student getAntragssteller() {
        return antragssteller;
    }

    public void setAntragssteller(Student antragssteller) {
        this.antragssteller = antragssteller;
    }

    public Dozent getMitarbeiter() {
        return mitarbeiter;
    }

    public void setMitarbeiter(Dozent mitarbeiter) {
        this.mitarbeiter = mitarbeiter;
    }

    public int getDauer() {
        return dauer;
    }

    public void setDauer(int dauer) {
        this.dauer = dauer;
    }

    public Date getVon() {
        return von;
    }

    public void setVon(Date von) {
        this.von = von;
    }

    public Date getBis() {
        return bis;
    }

    public void setBis(Date bis) {
        this.bis = bis;
    }

    public String getBermerkung() {
        return bermerkung;
    }

    public void setBermerkung(String bermerkung) {
        this.bermerkung = bermerkung;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Notebook getLeihNotebook() {
        return leihNotebook;
    }

    public void setLeihNotebook(Notebook leihNotebook) {
        this.leihNotebook = leihNotebook;
    }
    
    
    
}
