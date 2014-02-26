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
   
}






