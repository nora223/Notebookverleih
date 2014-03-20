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
    private boolean verliehen;

    public Notebook(String name, String seriennummer, int klasse, int leihdauer, boolean verliehen) {
        this.name = name;
        this.seriennummer = seriennummer;
        this.klasse = klasse;
        this.leihdauer = leihdauer;
        this.verliehen = verliehen;
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
    
    public static Notebook getNotebookByDauerUndKlasse(Integer dauer, Integer klasse){
        List<Notebook> notebooklist = DAO.NotebookDAO.getNotebookListDAO();
        Notebook a = null;
        for (Notebook element : notebooklist){
            if(element.leihdauer == dauer){
                if(element.klasse == klasse){
                    a.id = element.id;
                    a.klasse = element.klasse;
                    a.leihdauer = element.leihdauer;
                    a.name = element.name;
                    a.seriennummer = element.seriennummer;
                    a.verliehen = element.verliehen;
                    
                    
                }
            }else{ 
                return null;
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

    public boolean isVerliehen() {
        return verliehen;
    }

    public void setVerliehen(boolean verliehen) {
        this.verliehen = verliehen;
    }
    
    
    
}
