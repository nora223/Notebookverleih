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
    
    public static void saveNotebook(Notebook n){
        DAO.NotebookDAO.createNotebook(n);
        
    }

    public static int countNotebooks(){
        List<?> liste = DAO.NotebookDAO.countNotebooks();
            
        
        return 1; 
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
