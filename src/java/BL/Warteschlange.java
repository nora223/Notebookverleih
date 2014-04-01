/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
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
public class Warteschlange {

    @Id
    @GeneratedValue
    private long id;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date auftragsdatum;
    @OneToOne//(cascade = CascadeType.ALL)
    private Dozent mitarbeiter;
    @OneToOne//(cascade = CascadeType.ALL)
    private Student antragssteller;
    int kategorie;
    int leihdauer;
    String bs;

    public Warteschlange(long id, Date auftragsdatum, Dozent mitarbeiter, Student antragssteller, int kategorie, int leihdauer, String bs) {
        this.id = id;
        this.auftragsdatum = auftragsdatum;
        this.mitarbeiter = mitarbeiter;
        this.antragssteller = antragssteller;
        this.kategorie = kategorie;
        this.leihdauer = leihdauer;
        this.bs = bs;
    }

    public String getBs() {
        return bs;
    }

    public void setBs(String bs) {
        this.bs = bs;
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
     
    public static boolean checkWarteschlange(long id){
        
        List<Warteschlange> erg;
        erg = DAO.WarteschlangeDAO.getWarteschlangeDAO();
        
        System.out.println(erg.toString()+ " "+ erg.size());
       
        if(erg.size()== 0){
            System.out.println("WERt: "+false+" ID: "+id);
            return false;
        }else{
        System.out.println("HAAAAAAAAAAAAAAAAAAAAALLLLLLLLLLLLLLLLLLLLLLOOOOOOOOOOOOOO MAX");
        List<Notebook> notebook = BL.Notebook.getNotebookList();
        Notebook note = new Notebook();
        for (Notebook element : notebook) {
            if(element.getId()==id){
                note.setId(element.getId());
                note.setKlasse(element.getKlasse());
                note.setLeihdauer(element.getLeihdauer());
                note.setName(element.getName());
                note.setNotebookStatus("bestätigungAusstehend");
                note.setSeriennummer(element.getSeriennummer());
            }
        }
        Ausleihe warte = new Ausleihe();
        Date date = new Date();
        long wid = 0;
        for(Warteschlange element : erg){
            System.out.println("Zeile 106 for Schleife Warteschlange");
            if(element.getLeihdauer() <= note.getLeihdauer() && element.getKategorie()==note.getKlasse() && date.after(element.getAuftragsdatum())){
                System.out.println("Zeile 108 if Abfrage");
                Student s = element.getAntragssteller();
                Date auftragsdatum = element.getAuftragsdatum();
                String bs = element.getBs();
                long idWarteschlange = element.getId();
                int kategorie = element.getKategorie();
                int leihdauer = element.getLeihdauer();
                Dozent dozent = element.getMitarbeiter();
                
                warte.setAntragssteller(s);
                warte.setAuftragsdatum(auftragsdatum);
                warte.setBetriebssystem(bs);
                warte.setId(id);
                warte.setLeihNotebook(note);
                warte.setDauer(leihdauer);
                warte.setMitarbeiter(dozent);
                warte.setBermerkung("Student wartet schon länger auf das Notebook. Bitte um baldige Bestätigung.");
                warte.setStatus("bestätigungAusstehend");
                
                System.out.println(warte);
                wid = element.getId();
                
                date = element.getAuftragsdatum();
            }
        } 
       
            
            
       
        DAO.AusleiheDAO.saveAusleiheDAO(warte);
        BL.Warteschlange.deleteWarteschlangeByID(wid);
        
        return true;
        
        }                            
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
