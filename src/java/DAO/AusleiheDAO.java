/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Ausleihe;
import NotebookVerleih.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tino
 */
public class AusleiheDAO {
     public static void createAusleihe(Ausleihe aus){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(aus);
        transaction.commit();    
        
    }
  public static List getausleiheListDAO() {

      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
      Transaction tx = session.beginTransaction();
      List ausleiheListe = session.createQuery("from Ausleihe").list();
      tx.commit();
      
      return  ausleiheListe;  
}
}