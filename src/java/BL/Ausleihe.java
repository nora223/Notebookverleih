/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Tino
 */
@Entity
public class Ausleihe implements Serializable {

    @Id
    @GeneratedValue
    private long id;

    @Temporal(javax.persistence.TemporalType.DATE)
    private Date auftragsdatum;
    @OneToOne//(cascade = CascadeType.ALL)
    private Student antragssteller;

    @OneToOne//(cascade = CascadeType.ALL)
    private Dozent mitarbeiter;
    private int dauer;

    @Temporal(javax.persistence.TemporalType.DATE)
    private Date von;

    @Temporal(javax.persistence.TemporalType.DATE)
    private Date bis;

    private String bermerkung;
    private String status;

    @OneToOne//(cascade = CascadeType.ALL)
    private Notebook leihNotebook;
    private String betriebssystem;

    public Ausleihe(Date auftragsdatum, Student antragssteller, Dozent mitarbeiter, int dauer, Date von, Date bis, String bermerkung, String status, Notebook leihNotebook, String betriebssystem) {

        this.auftragsdatum = auftragsdatum;
        this.antragssteller = antragssteller;
        this.mitarbeiter = mitarbeiter;
        this.dauer = dauer;
        this.von = von;
        this.bis = bis;
        this.bermerkung = bermerkung;
        this.status = status;
        this.leihNotebook = leihNotebook;
        this.betriebssystem = betriebssystem;
    }

    public Ausleihe() {
    }

    public static void saveAusleihe(Ausleihe aus) {
        DAO.AusleiheDAO.createAusleihe(aus);

    }

    public static void updateAusleihe(long id, int dauer, Notebook nid) {
        Date von = new Date();
        GregorianCalendar cal = new GregorianCalendar();
        cal.setTime(von);
        cal.add(Calendar.DAY_OF_MONTH, dauer);
        Date bis = cal.getTime();

        BL.Notebook.updateNotebookStatus(nid, "verliehen");

        DAO.AusleiheDAO.updateAusleihe(id, von, bis);
    }

    public static Date getNextFreeDate(int dauer, int klasse) {
        List<Ausleihe> erg = DAO.AusleiheDAO.getAusleiheListDAO();
        GregorianCalendar cal1 = new GregorianCalendar();
        cal1.setTime(new Date());
        cal1.add(Calendar.DAY_OF_MONTH, 190);
        Date nextFreeDate = cal1.getTime();

        for (Ausleihe element : erg) {
            if (dauer == element.getLeihNotebook().getLeihdauer() && klasse == element.getLeihNotebook().getKlasse()) {

                Date a = element.getBis();

                if (a.before(nextFreeDate)) {
                    nextFreeDate = a;

                }

            }

        }

        return nextFreeDate;
    }

    public static List<Ausleihe> getListAusleihe() {

        List<Ausleihe> listAusleihe = DAO.AusleiheDAO.getAusleiheListDAO();

        return listAusleihe;
    }

    public static List<Ausleihe> getAusleiheList() {
        List<Ausleihe> ausleihelist = DAO.AusleiheDAO.getAusleiheListDAO();
        return ausleihelist;
    }

    public static void deleteAusleiheByID(long id) {

        DAO.AusleiheDAO.deleteAusleiheByIDDAO(id);
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

    public String getBetriebssystem() {
        return betriebssystem;
    }

    public void setBetriebssystem(String betriebssystem) {
        this.betriebssystem = betriebssystem;
    }

    @Override
    public String toString() {
        return "Ausleihe{" + "id=" + id + ", auftragsdatum=" + auftragsdatum + ", antragssteller=" + antragssteller + ", mitarbeiter=" + mitarbeiter + ", dauer=" + dauer + ", von=" + von + ", bis=" + bis + ", bermerkung=" + bermerkung + ", status=" + status + ", leihNotebook=" + leihNotebook + ", betriebssystem=" + betriebssystem + '}';
    }

    
}
