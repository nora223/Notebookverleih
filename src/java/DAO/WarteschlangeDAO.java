/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Ausleihe;
import BL.Warteschlange;
import NotebookVerleih.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tino
 */
public class WarteschlangeDAO {

    public static void createWarteschlagne(Warteschlange ws) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(ws);
        transaction.commit();

    }

    public static List<Warteschlange> getWarteschlangeDAO() {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Warteschlange> warteschlangeListe = session.createQuery("from Warteschlange").list();
        tx.commit();

        return warteschlangeListe;
    }

    public static void deleteWarteschlangeByIDDAO(long id) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Warteschlange warteschlange = (Warteschlange) HibernateUtil.getSessionFactory().getCurrentSession().load(Ausleihe.class, id);
        HibernateUtil.getSessionFactory().getCurrentSession().delete(warteschlange);
        transaction.commit();

    }
}
