/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BL.Ausleihe;
import BL.Notebook;
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
public class NotebookDAO {

    public static void createNotebook(Notebook n) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(n);
        transaction.commit();

    }

    public static void updateNotebookStatus(Notebook nid, String s) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Notebook notebook = (Notebook) HibernateUtil.getSessionFactory().getCurrentSession().load(Notebook.class, nid.getId());
        HibernateUtil.getSessionFactory().getCurrentSession().update(notebook);
        notebook.setNotebookStatus(s);
        
        tx.commit();


    }

    public static Integer[] countNotebooks() {

        String sql0 = "select count (*) as c from notebook where leihdauer=7 AND Klasse = 1 AND notebookstatus='verfügbar'";
        String sql1 = "select count (*) as c from notebook where leihdauer=30 AND Klasse = 1 AND Notebookstatus ='verfügbar'";
        String sql2 = "select count (*) as c from notebook where leihdauer = 90 AND Klasse = 1 AND Notebookstatus ='verfügbar'";
        String sql3 = "select count (*) as c from notebook where leihdauer = 180 AND Klasse = 1 AND Notebookstatus ='verfügbar'";
        String sql4 = "select count (*) as c from notebook where leihdauer=7 AND Klasse = 2 AND Notebookstatus ='verfügbar'";
        String sql5 = "select count (*) as c from notebook where leihdauer=30 AND Klasse = 2 AND Notebookstatus ='verfügbar'";
        String sql6 = "select count (*) as c from notebook where leihdauer = 90 AND Klasse = 2 AND Notebookstatus ='verfügbar'";
        String sql7 = "select count (*) as c from notebook where leihdauer = 180 AND Klasse = 2 AND Notebookstatus ='verfügbar'";
        String sql8 = "select count (*) as c from notebook where leihdauer=7 AND Klasse = 3 AND Notebookstatus ='verfügbar'";
        String sql9 = "select count (*) as c from notebook where leihdauer=30 AND Klasse = 3 AND Notebookstatus ='verfügbar'";
        String sql10 = "select count (*) as c from notebook where leihdauer = 90 AND Klasse = 3 AND Notebookstatus ='verfügbar'";
        String sql11 = "select count (*) as c from notebook where leihdauer = 180 AND Klasse = 3 AND Notebookstatus ='verfügbar'";

        Integer[] feld = new Integer[12];

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createSQLQuery(sql0).addScalar("c");
        Query query1 = session.createSQLQuery(sql1).addScalar("c");
        Query query2 = session.createSQLQuery(sql2).addScalar("c");
        Query query3 = session.createSQLQuery(sql3).addScalar("c");
        Query query4 = session.createSQLQuery(sql4).addScalar("c");
        Query query5 = session.createSQLQuery(sql5).addScalar("c");
        Query query6 = session.createSQLQuery(sql6).addScalar("c");
        Query query7 = session.createSQLQuery(sql7).addScalar("c");
        Query query8 = session.createSQLQuery(sql8).addScalar("c");
        Query query9 = session.createSQLQuery(sql9).addScalar("c");
        Query query10 = session.createSQLQuery(sql10).addScalar("c");
        Query query11 = session.createSQLQuery(sql11).addScalar("c");

        Integer erg = (Integer) query.uniqueResult();
        Integer erg1 = (Integer) query1.uniqueResult();
        Integer erg2 = (Integer) query2.uniqueResult();
        Integer erg3 = (Integer) query3.uniqueResult();
        Integer erg4 = (Integer) query4.uniqueResult();
        Integer erg5 = (Integer) query5.uniqueResult();
        Integer erg6 = (Integer) query6.uniqueResult();
        Integer erg7 = (Integer) query7.uniqueResult();
        Integer erg8 = (Integer) query8.uniqueResult();
        Integer erg9 = (Integer) query9.uniqueResult();
        Integer erg10 = (Integer) query10.uniqueResult();
        Integer erg11 = (Integer) query11.uniqueResult();

        feld[0] = erg;
        feld[1] = erg1;
        feld[2] = erg2;
        feld[3] = erg3;
        feld[4] = erg4;
        feld[5] = erg5;
        feld[6] = erg6;
        feld[7] = erg7;
        feld[8] = erg8;
        feld[9] = erg9;
        feld[10] = erg10;
        feld[11] = erg11;

        tx.commit();

        return feld;
    }

    public static List<Notebook> getNotebookListDAO() {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        List<Notebook> notebookListe = session.createQuery("from Notebook").list();
        tx.commit();

        return notebookListe;
    }

    public static void deleteNotebookByIDDAO(long id) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Notebook notebook = (Notebook) HibernateUtil.getSessionFactory().getCurrentSession().load(Notebook.class, id);
        HibernateUtil.getSessionFactory().getCurrentSession().delete(notebook);
        transaction.commit();

    }

}
