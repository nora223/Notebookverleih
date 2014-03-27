/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Tino
 */
public class Warteschlange {

    @Id
    @GeneratedValue
    private long id;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date auftragsdatum;
    @OneToOne(cascade = CascadeType.ALL)
    private Dozent mitarbeiter;
    @OneToOne(cascade = CascadeType.ALL)
    private Student antragssteller;
    int kategorie;
    int leihdauer;

    public Warteschlange(long id, Date auftragsdatum, Dozent mitarbeiter, Student antragssteller, int kategorie, int leihdauer) {
        this.id = id;
        this.auftragsdatum = auftragsdatum;
        this.mitarbeiter = mitarbeiter;
        this.antragssteller = antragssteller;
        this.kategorie = kategorie;
        this.leihdauer = leihdauer;
    }

    public Warteschlange() {
    }

    
    public static void saveWarteschlange(Warteschlange ws){
        DAO.WarteschlangeDAO.createWarteschlagne(ws);
        
    }
    
     public static List<Warteschlange> getListWarteschlange(){
        
        List<Warteschlange> listWarteschlange = DAO.WarteschlangeDAO.getWarteschlangeDAO();
        
        return listWarteschlange;
    }
     
     public static void deleteWarteschlangeByID(long id){
        
        DAO.WarteschlangeDAO.deleteWarteschlangeByIDDAO(id);
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

    public Dozent getMitarbeiter() {
        return mitarbeiter;
    }

    public void setMitarbeiter(Dozent mitarbeiter) {
        this.mitarbeiter = mitarbeiter;
    }

    public Student getAntragssteller() {
        return antragssteller;
    }

    public void setAntragssteller(Student antragssteller) {
        this.antragssteller = antragssteller;
    }

    public int getKategorie() {
        return kategorie;
    }

    public void setKategorie(int kategorie) {
        this.kategorie = kategorie;
    }

    public int getLeihdauer() {
        return leihdauer;
    }

    public void setLeihdauer(int leihdauer) {
        this.leihdauer = leihdauer;
    }
    
    
}
