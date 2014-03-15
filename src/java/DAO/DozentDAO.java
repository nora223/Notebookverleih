/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import BL.Dozent;
import NotebookVerleih.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import java.util.List;
import java.util.Iterator;

/**
 *
 * @author Tino
 */
public class DozentDAO {
    
     public static void createDozent(Dozent d){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(d);
        transaction.commit();    
        
    }
    //TEST!!!!!!!!!!!!!!!!!!!!!!!!!
   public static void all_name() {
      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
      Transaction tx = session.beginTransaction();
      List dozents = session.createQuery("select d.email from Dozent as d where d.name = Mueller").list();
      for (Iterator iter = dozents.iterator(); iter.hasNext();) {
         Dozent element = (Dozent) iter.next();
         
             
        
      }
      
      tx.commit();
  
   } 
   //TEST!!!!!!!!!!!!!!!
   
    public static List<Dozent> getDozentListDAO () {
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Dozent> resultListDozent = session.createQuery("from Dozent").list();
        
        transaction.commit();
        
        return resultListDozent;
        
    }
}






