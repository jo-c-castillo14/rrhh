/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author PC
 */
public class Conexion {
      Connection conexion;
    
    public Conexion(){
        try {
           Class.forName("com.mysql.jdbc.Driver");
           conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/empresa","root","");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public Connection getConexion(){
        return conexion;
    }
}
