/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


/**
 *
 * @author Tino
 */
@Entity
public class Notebook implements Serializable{
    
    @Id
    @GeneratedValue
    private long id;
    private String name;
    private String seriennummer;
    private int klasse;
    private int leihdauer;
    //mögliche Eingaben: defekt, verliehen, bestätigungAustehend, verfügbar, inBearbeitung,
    private String notebookStatus;

    public Notebook(String name, String seriennummer, int klasse, int leihdauer, String notebookStatus) {
        
        this.name = name;
        this.seriennummer = seriennummer;
        this.klasse = klasse;
        this.leihdauer = leihdauer;
        this.notebookStatus = notebookStatus;
    }

    

    public Notebook() {
    }
    
    public static void deleteNotebookByID(long id){
        
        DAO.NotebookDAO.deleteNotebookByIDDAO(id);
    }
    
    public static List<Notebook> getNotebookList (){
        List<Notebook> notebooklist = DAO.NotebookDAO.getNotebookListDAO();
        return notebooklist;
    }
    
    
    
    public static void saveNotebook(Notebook n){
        DAO.NotebookDAO.createNotebook(n);
        
    }

    public static Integer[] countNotebooks(){
        Integer[] feld = DAO.NotebookDAO.countNotebooks();
        return feld; 
    }
    
    public static void updateNotebookStatus(Notebook nid, String s){
        DAO.NotebookDAO.updateNotebookStatus(nid, s);
    }
    
    public static Notebook getNotebookById(long id){
        List<Notebook> erg = DAO.NotebookDAO.getNotebookListDAO();
        Notebook notebook = new Notebook();
        for(Notebook element : erg){
            if(element.getId()==id){
               notebook.setId(element.getId());
               notebook.setKlasse(element.getKlasse());
               notebook.setLeihdauer(element.getLeihdauer());
               notebook.setName(element.getName());
               notebook.setNotebookStatus(element.getNotebookStatus());
               notebook.setSeriennummer(element.getSeriennummer());
               
                break; 
            }
        }
        return notebook;
    }
    

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSeriennummer() {
        return seriennummer;
    }

    public void setSeriennummer(String seriennummer) {
        this.seriennummer = seriennummer;
    }

    public int getKlasse() {
        return klasse;
    }

    public void setKlasse(int klasse) {
        this.klasse = klasse;
    }

    public int getLeihdauer() {
        return leihdauer;
    }

    public void setLeihdauer(int leihdauer) {
        this.leihdauer = leihdauer;
    }

    public String getNotebookStatus() {
        return notebookStatus;
    }

    public void setNotebookStatus(String notebookStatus) {
        this.notebookStatus = notebookStatus;
    }
    
        
   
    
}
