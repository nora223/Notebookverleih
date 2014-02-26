/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Notebook;
import NotebookVerleih.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tino
 */
public class NotebookDAO {
    
     public static void createNotebook(Notebook n){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(n);
        transaction.commit();    
        
    }
     
     public static List<?> countNotebooks(){
               
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Query query = session.createQuery("select * from notebook");
        List<?> result = query.list();
        return result;
     }
    

   
   public static List getNotebookListDAO() {

      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
      Transaction tx = session.beginTransaction();
      List notebookListe = session.createQuery("select* from Notebook").list();
      tx.commit();
      
      return  notebookListe;
   


} 
  
}