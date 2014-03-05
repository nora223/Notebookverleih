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
     
     public static Integer countNotebooks(){
       
               
        String sql ="select count (*) as c from notebook where leihdauer=7";
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createSQLQuery(sql).addScalar("c");
       
        Integer erg = (Integer) query.uniqueResult();
       
             
       tx.commit();
       System.out.println(erg);
       return erg;
     }
 public static List<Notebook> getNotebookListDAO() {

      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
      Transaction tx = session.beginTransaction();
      List<Notebook> notebookListe = session.createQuery("from Notebook").list();
      tx.commit();
      
      return  notebookListe;
}
}