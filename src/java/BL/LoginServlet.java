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
        
        //Variablendeklaration
        String typ = ""; //Kategorie des Users (Student, Dozent oder ADMIN)
        long id = 0;
        boolean hit = false;
        String email;
        String passwort;
        
        // Session erzeugen und die ID des Users und einer Kategorie zuweisen (Student, Dozent oder ADMIN)         
        ServletContext context = this.getServletContext();
        HttpSession session = request.getSession(true);       
        
        //eingegebene E-Mail und Passwort auslesen
        email = request.getParameter("e_mail");
        passwort = request.getParameter("passwort");
        System.out.println("E-Mail: " + email + " Passwort: " + passwort);
        
        //ID des Users herausfinden (getID)
        //id = DAO.StudentDAO.getID(email, passwort);
        
        //Passwort überprüfen
        List<Student> listStudent =  Student.getStudentList();
        List<Dozent> listDozent = Dozent.getDozentList();
        List<Administrator> listAdmin =  Administrator.getAdministratorList();
        
        if (hit == false){
            for(Student element : listStudent){
                int i = 0;
                if(email.equals(element.geteMail()) && passwort.equals(element.getPasswort())){
                    id = element.getId();
                    session.setAttribute("id", id);
                    System.out.println("Student: Passwort richtig");
                    typ = "Student";
                    session.setAttribute("typ", typ);
                    System.out.println("Typ: " + typ);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/student/student.jsp" );
                    dispatcher.forward ( request, response );                
                    hit = true;
                    break;
                }
                if(i >= listStudent.size()){
                    System.out.print("Student: Passwort falsch!");
                    break;
                }
                if(i <= listStudent.size()){
                    i++;
                }
                
            }
        }
        
        if (hit == false){
            for(Dozent element : listDozent){
                int x = 0;
                if(email.equals(element.geteMail()) && passwort.equals(element.getPasswort())){
                    id = element.getId();
                    session.setAttribute("id", id);
                    System.out.println("Dozent: Passwort richtig");
                    typ = "Dozent";
                    session.setAttribute("typ", typ);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/dozent/notebookausleihedozent.jsp" );
                    dispatcher.forward ( request, response ); 
                    hit = true;
                    break;
                }
                if(x >= listDozent.size()){
                    System.out.print("Dozent: Passwort falsch!");
                    break;
                }
                if(x <= listDozent.size()){
                    x++;
                }
            }
        }
        
        if(hit == false){
            for(Administrator element : listAdmin){
                int y = 0;
                if(email.equals(element.geteMail()) && passwort.equals(element.getPasswort())){
                     id = element.getId();
                     session.setAttribute("id", id);
                     System.out.println("Admin: Passwort richtig");
                     typ = "Admin";
                     session.setAttribute("typ", typ);
                     RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/admin.jsp" );
                     dispatcher.forward ( request, response );
                     hit = true;
                     break;
                }
                if(y >= listAdmin.size()){
                    System.out.print("Admin: Passwort falsch!");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/loginError.jsp" );
                    dispatcher.forward ( request, response );
                    break;
                }
                if(y <= listAdmin.size()){
                    y++;
                }
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("/loginError.jsp" );
            dispatcher.forward ( request, response );
        }
        
    }
    
}


 

    