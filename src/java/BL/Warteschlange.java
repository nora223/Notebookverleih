/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

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
    @OneToOne(cascade = CascadeType.ALL)
    private Dozent mitarbeiter;
    @OneToOne(cascade = CascadeType.ALL)
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
     
    public static void checkWarteschlange(long id){
        
        List<Warteschlange> erg = DAO.WarteschlangeDAO.getWarteschlangeDAO();
        List<Notebook> notebook = BL.Notebook.getNotebookList();
        Notebook note = null;
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
        List <Warteschlange> warte = null;
        for(Warteschlange element : erg){
            if(element.getLeihdauer() <= note.getLeihdauer() && element.getKategorie()==note.getKlasse()){
                warte.add(element);
            }
        }
       
            GregorianCalendar cal1 = new GregorianCalendar();
            cal1.setTime(new Date());
            cal1.add(Calendar.DAY_OF_MONTH, 190);
            Date firstDate = cal1.getTime();
            Ausleihe a = new Ausleihe();
            long wid = 0;
        for(Warteschlange element: warte){
            if(firstDate.after(element.getAuftragsdatum())){
                firstDate = element.getAuftragsdatum();
                a.setAntragssteller(element.getAntragssteller());
                a.setAuftragsdatum(new Date());
                a.setBermerkung("Der Student wartet bereits längere Zeit um das Notebook daher bitten wir den Dozent um zugügige Bearbeitung.");
                a.setBetriebssystem(element.getBs());
                a.setDauer(element.getLeihdauer());
                a.setLeihNotebook(note);
                a.setMitarbeiter(element.getMitarbeiter());
                a.setStatus("bestätigungAusstehend");
                wid = element.getId();
                
      
            }
            
        }
        BL.Ausleihe.saveAusleihe(a);
        BL.Warteschlange.deleteWarteschlangeByID(wid);
                                    
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
