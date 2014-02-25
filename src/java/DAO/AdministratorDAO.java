/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Administrator;
import NotebookVerleih.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tino
 */
public class AdministratorDAO {
            
    public static void createAdmininstrator(Administrator a){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(a);
        transaction.commit();    
        
    }
    
    public static List getAdministratorListDAO () {
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
           
        Query query = session.createQuery("from Administrator");
        List resultListAdministraotr = query.list();
        
        transaction.commit();
        
        return resultListAdministraotr;
        
    }

    
}
