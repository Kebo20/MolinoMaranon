/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.entrada_saco;

/**
 *
 * @author kevin
 */
public class entrada_sacoDao {
    
      public static boolean insertar(entrada_saco s) {

        try {
            String sql = "insert into entrada_saco(fecha,cantidad,id_saco) values (?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getFecha());
           
            ps.setInt(2, s.getCantidad());
            ps.setInt(3, s.getId_saco());

            if (ps.executeUpdate() > 0) {
                ps.close();
                con.close();
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            return false;
        }
    }

    public static boolean actualizar(entrada_saco s) {

        try {
            String sql = "update trabajador set  fecha=?, cantidad=? ,id_saco=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getFecha());
            ps.setInt(2, s.getCantidad());
            ps.setInt(3, s.getId_saco());
            ps.setInt(4, s.getId());

            if (ps.executeUpdate() > 0) {
                ps.close();
                con.close();
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            return false;
        }
    }

    public static ArrayList<entrada_saco> listar() {

        try {
            String sql = "select * from entrada_saco  ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            entrada_saco s;
            ArrayList<entrada_saco> l = new ArrayList<>();

            while (rs.next()) {

                s = new entrada_saco();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setCantidad(rs.getInt("cantidad"));
               
                s.setId_saco(rs.getInt("id_saco"));

                l.add(s);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }
   

    public static boolean eliminar(entrada_saco s) {

        try {
            String sql = "delete from entrada_saco where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, s.getId());

            if (ps.executeUpdate() > 0) {
                ps.close();
                con.close();
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            return false;
        }
    }
     public static int cantidad_sacos(int saco){
        
        try {
            String sql= "SELECT sum(cantidad) as suma FROM entrada_saco where id_saco='"+saco+"'";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
         
            int resultado=0;
            
            
            while(rs.next()){
                
                resultado=rs.getInt("suma");
              
            }
            
            rs.close();
            ps.close();
            con.close();
            return resultado;
            
              
        } catch (SQLException ex) {
             return 0;
        }
  
  }   
}
