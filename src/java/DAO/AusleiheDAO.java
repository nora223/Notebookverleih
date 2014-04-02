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
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import sun.util.calendar.Gregorian;

/**
 *
 * @author Tino
 */
public class AusleiheDAO {

    public static void createAusleihe(Ausleihe aus) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(aus);
        transaction.commit();

    }

    

        public static void saveAusleiheDAO(Ausleihe aus) {

            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            session.save(aus);
            transaction.commit();

        }

        public static List<Ausleihe> getAusleiheListDAO() {

            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction tx = session.beginTransaction();
            List<Ausleihe> ausleiheListe = session.createQuery("from Ausleihe").list();
            tx.commit();

            return ausleiheListe;
        }

        public static void updateAusleihe(Long id, Date von, Date bis) {

            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction tx = session.beginTransaction();
            Ausleihe ausleihe = (Ausleihe) HibernateUtil.getSessionFactory().getCurrentSession().load(Ausleihe.class, id);
            HibernateUtil.getSessionFactory().getCurrentSession().update(ausleihe);

            ausleihe.setVon(von);
            ausleihe.setStatus("verliehen");
            ausleihe.setBis(bis);


            tx.commit();
        }

        public static void deleteAusleiheByIDDAO(long id) {

            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            Transaction transaction = session.beginTransaction();
            Ausleihe ausleihe = (Ausleihe) HibernateUtil.getSessionFactory().getCurrentSession().load(Ausleihe.class, id);
            HibernateUtil.getSessionFactory().getCurrentSession().delete(ausleihe);
            transaction.commit();

        }
    }
