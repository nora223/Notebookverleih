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
import org.hibernate.Hibernate;
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
    
  public static String loginStudent(String email) {
      
        String sql = "select passwort from student where email = :email";

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createSQLQuery(sql).addScalar("passwort", Hibernate.STRING).setString("email", email);
        
        String result = (String) query.uniqueResult();
        
        transaction.commit();
        return result;
  }
  
  public static List getStudentListDAO () {
        
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        List<Student> resultListStudent = session.createQuery("from Student").list();
        transaction.commit();
        
        return resultListStudent;
        
    }
    
}
