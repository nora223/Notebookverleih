/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Ausleihe;
import BL.Notebook;
import NotebookVerleih.HibernateUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
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
public static List<Ausleihe> getAusleiheListDAO() {

      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
      Transaction tx = session.beginTransaction();
      List<Ausleihe> ausleiheListe = session.createQuery("from Ausleihe").list();
      tx.commit();
      
      return  ausleiheListe;
}

public static List<Date> getNextFreeDate(int dauer, int klasse){
    
    String sql = "select BIS from ausleihe where leihnotebook_id = (Select id from notebook where leihdauer ="+dauer+"AND klasse ="+klasse+")";
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    Transaction tx = session.beginTransaction();
    List<Date>  bla = session.createSQLQuery(sql).list();
    tx.commit();
    
    return bla;
}


}
