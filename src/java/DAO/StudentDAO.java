/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Student;
import BL.Mail;
import NotebookVerleih.HibernateUtil;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tino
 */
public class StudentDAO {
    
    public static void createStudent(Student s){
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(s);
        transaction.commit();    
        
    }
    
    public static String loginStudent(String email){
        String sql = "select passwort from STUDENT where email = :email";
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery(sql).setParameter(email, email);
        List<Student> erg = query.list();
        Student ergebnis=null;
        String ergebnisse=null;
        Iterator<Student> iterator = erg.iterator();
	while (iterator.hasNext()) {
		ergebnis = iterator.next();
                ergebnisse = ergebnis.toString();
	}
         
        tx.commit();
        
        return ergebnisse; 
    }
     public static List getStudentListDAO () {
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
           
        Query query = session.createQuery("from Student");
        List resultListStudent = query.list();
        
        transaction.commit();
        
        return resultListStudent;
        
    }
    
}
