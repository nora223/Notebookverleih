<%-- 
    Document   : änderungen
    Created on : 04.03.2014, 16:28:21
    Author     : CaReich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

Student.java
     try {

            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] digest = md.digest(passwort1.getBytes());
            
             StringBuffer sb = new StringBuffer();
        for (int i = 0; i < digest.length; i++) {
          sb.append(Integer.toString((digest[i] & 0xff) + 0x100, 16).substring(1));
        }
            
            passwort1 = sb.toString();

        } catch (Exception e) {
        }
        
        
StudentDAO.java

    public static String loginStudent(String email) {
        String sql = "select passwort from student where email = :email";

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        //Kommentar wie genau addscalar und setstring funtkioniert
        Query query = session.createSQLQuery(sql).addScalar("passwort", Hibernate.STRING).setString("email", email);
        
        String result = (String) query.uniqueResult();
        
        transaction.commit();
        
        return result;

        
        <%-- 
    Document   : new_account
    Created on : 11.02.2014, 14:54:21
    Author     : CaReich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pic/logo.JPG" type="image/JPG" />
        <link rel="stylesheet" href ="css/bootstrap.css" type ="text/css" />
        <link rel="stylesheet" href ="calender/3-dynamically-created/tcal.css" type ="text/css" />
        <script type="text/javascript" src="calender/3-dynamically-created/tcal.js" language="JavaScript"></script>
        <script type="text/javascript">
          var  validatePassword =function() {
              document.getElementById("passwordError").style.visibility = 'visible';
              document.getElementById("passwordError").innerHTML = 'Password not match';
                //alert('dfdsgdhflkgfdhgsl');
                return true;
            }
        </script>
    <title>Create new Student</title>
          <div>
            <a href='index.jsp'><img id="pic" src="pic/logo.png" alt="Logo"/></a>
            <hr>
            <p><img id="pic2" src=".../pic/dh.jpg" alt="dh" />
           </div>
    </head>
    <body>
        <div  class="row">
            <div class="col-md-3">
                 <div class="list-group">
                    <a href="#" class="list-group-item active" >
                    NAVIGATION
                    </a>
                    <a href="ausleihverwaltung.jsp" class="list-group-item" style="padding: 20px 5px 10px 10px">Ausleih Verwaltung</a>
                    <a href="notebookverwaltung.jsp" class="list-group-item">Notebook Verwaltung</a>
                    <a href="userverwaltung.jsp" class="list-group-item">User Verwaltung</a>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="area">
                    <h1> Herzlich Willkommen! </h1>
                    <p> Bitte füllen Sie das folgende Formular aus um sich als User zu registrieren</p>
                             
                <div id="login">
                    <form action="savestudent.jsp" methode="POST" onsubmit="return validatePassword();">
                      <p> <input type="radio" name="radio" value="weiblich">weiblich&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</input>
                          <input type="radio" name="radio" value="männlich">männlich</input></p>
                      <p>Nachname<br><input name="nachname" type="text" size="30" maxlength="40"></p>
                      <p>Vorname<br><input name="vorname" type="text" size ="30" maxlength="40"></p>
                      <p>E-mail<br><input name="e_mail" type="email" placeholder="me@example.com" size ="30" maxlength="40"></p>
                      <p>Passwort<br><input name="passwort" type="password" size ="30" maxlength="40"></p>
                      <p>Passwort<br><input name="passwort2" type="password" size ="30" maxlength="40"></p>
                      <p><div id="passwordError" style="visibility: hidden;"></div></p>
                      <p>Geburtsdatum<br><input class="tcal tcalInput" name="gebDat" value="dd:mm:yyyy" size ="30" maxlength="40" onkeypress="return false"></p>
                      <p>Matrikelnummer<br><input name="matNr" type="text" size ="30" maxlength="40"></p>
                      <p>Kursnummer<br><input name="kurs" type="text" size ="30" maxlength="40"></p>
                      <p><input name="button" type="submit" value="anlegen" ></p>
                </form>
                </div>
                </div>
            </div>
         </div>
    </body>
</html>
