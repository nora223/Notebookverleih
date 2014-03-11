/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

import com.sun.org.apache.xml.internal.security.signature.ObjectContainer;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Boss
 */
@WebServlet(description = "Benutzer ein- und ausloggen", urlPatterns = {"/servlets/login"})
public class Login {
    
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Datenströme und Datenbank öffnen
        response.setContentType("text/plain");

        BufferedReader in = new BufferedReader(new InputStreamReader(request.getInputStream()));
        PrintWriter out = new PrintWriter(response.getOutputStream());
        ObjectContainer db = (ObjectContainer) request.getAttribute("db");

        // Benutzer ein- oder ausloggen
        String command = in.readLine();

        if (command.equalsIgnoreCase("LOGIN")) {
            // Benutzer einloggen
            String email = in.readLine();
            String passwort1 = in.readLine();

            boolean erg = Student.loginStudent(email, passwort1);
            
            if (erg == true){
                    System.out.print("Passwort richtig!");
              }else{
                    System.out.print("Passwort falsch!");
              }
            
        } else {
            // Ungültiges Kommando
            response.setStatus(400);
            out.println("UNKNOWN_COMMAND");
            out.flush();
            return;
        }

        out.println("OK");
        out.flush();
    }

    
}
