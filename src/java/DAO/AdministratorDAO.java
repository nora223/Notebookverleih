/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Administrator;
import BL.Student;
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
    
    public static List<Administrator> getAdministratorListDAO () {
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
           
        List<Administrator> resultListAdministrator = session.createQuery("from Administrator").list();;
        
        transaction.commit();
        
        return resultListAdministrator;
        
    }

     public static void deleteAdministratorByIDDAO(long id){
      
      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
      Transaction transaction = session.beginTransaction();
      Administrator administrator = (Administrator)HibernateUtil.getSessionFactory().getCurrentSession().load(Administrator.class, id);
      HibernateUtil.getSessionFactory().getCurrentSession().delete(administrator);
      transaction.commit();
    
     }
    
    
}
