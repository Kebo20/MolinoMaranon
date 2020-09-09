
package dao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author kevin
 */
public class Conexion {

  
    private static   Connection con = null;
  
    
 public static java.sql.Connection getConexion()
    {
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
//            con= (Connection) DriverManager.getConnection("jdbc:mysql://node25613-pollosdbruno.jelastic.cloudhosted.es:3306/polleria","root","1qFBafRdbl"); 
            con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/molino","root","200397"); 
           
            return  con;
            
        } catch (ClassNotFoundException | SQLException ex) { 
            return null;
        }
    }
    
}


