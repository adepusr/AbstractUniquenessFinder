/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author alekhya rao
 */
public class MyDBBean {
    
    
    public static java.sql.Connection getConnection() throws Exception
    {
    
    Class.forName("com.mysql.jdbc.Driver");
    
    java.sql.Connection mycon= java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/abstractuniqness","root","");
    
    return mycon;
           
    }
    
}
