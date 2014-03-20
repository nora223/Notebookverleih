/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Boss
 */
@WebServlet(urlPatterns = {"/servlets/login"})
public class LoginServlet extends HttpServlet {
       
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String typ = ""; //Kategorie des Users (Student, Dozent oder ADMIN)
        long id = 0;
        
        //eingegebene E-Mail und Passwort auslesen
        String email = request.getParameter("e_mail");
        String passwort = request.getParameter("passwort");
        System.out.println("E-Mail: " + email + " Passwort: " + passwort);
        
        //ID des Users herausfinden (getID)
        //id = DAO.StudentDAO.getID(email, passwort);
        
        List<Student> listStudent =  Student.getStudentList();
        List<Dozent> listDozent = Dozent.getDozentList();
        List<Administrator> listAdmin =  Administrator.getAdministratorList();
        
        for(Student element : listStudent){
            int i = 0;
            if(email.equals(element.geteMail()) && passwort.equals(element.getPasswort())){
                id = element.getId();
                System.out.println("Student: Passwort richtig");
                typ = "Student";
                System.out.println("Typ: " + typ);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/student/student.jsp" );
                dispatcher.forward ( request, response );                
                break;
            }
            if(i < listStudent.size()){
                i++;
            }
            if(i == listStudent.lastIndexOf(element)){
                System.out.print("Student: Passwort falsch!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/loginError.jsp" );
                dispatcher.forward ( request, response );
                break;
            }
        }
        
        for(Dozent element : listDozent){
            int x = 0;
            if(email.equals(element.geteMail()) && passwort.equals(element.getPasswort())){
                id = element.getId();
                System.out.println("Dozent: Passwort richtig");
                typ = "Dozent";
                RequestDispatcher dispatcher = request.getRequestDispatcher("/dozent/notebookausleihedozent.jsp" );
                dispatcher.forward ( request, response ); 
                break;
            }
            if(x < listDozent.size()){
                x++;
            }
            if(x == listDozent.lastIndexOf(element)){
                System.out.print("Dozent: Passwort falsch!");
                break;
            }
        }
        
        for(Administrator element : listAdmin){
            int y = 0;
            if(email.equals(element.geteMail()) && passwort.equals(element.getPasswort())){
                 id = element.getId();
                 System.out.println("Admin: Passwort richtig");
                 typ = "Admin";
                 RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/admin.jsp" );
                 dispatcher.forward ( request, response );
                 break;
            }
            if(y < listAdmin.size()){
                y++;
            }
            if(y == listAdmin.lastIndexOf(element)){
                System.out.print("Admin: Passwort falsch!");
                 RequestDispatcher dispatcher = request.getRequestDispatcher("/loginError.jsp" );
                 dispatcher.forward ( request, response );
                break;
            }   
        }
        
        //Passwort kontrollieren (getPasswort)
        /*String pwDB = DAO.StudentDAO.getPasswort(email);
        if (pwDB.equals(email)){
            System.out.print("Passwort richtig!");
        }else{
            System.out.print("Passwort falsch!");
        }*/
        
        // Session erzeugen und die ID des Users und einer Kategorie zuweisen (Student, Dozent oder ADMIN)
        boolean create = true;         
        HttpSession session = request.getSession(create);
        ServletContext context = this.getServletContext();
        session.setAttribute("id", id);
        session.setAttribute("typ", typ);
        
    }
    
}


 

    