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

import modelo.saco;

/**
 *
 * @author kevin
 */
public class sacoDao {
    
     public static boolean insertar(saco s) {

        try {
            String sql = "insert into saco(nombre) values (?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getNombre());
           

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

    public static boolean actualizar(saco s) {

        try {
            String sql = "update saco set  nombre=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getNombre());
           
            ps.setInt(2, s.getId());

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

    public static ArrayList<saco> listar() {

        try {
            String sql = "select * from saco  ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            saco s;
            ArrayList<saco> l = new ArrayList<>();

            while (rs.next()) {

                s = new saco();
                s.setId(rs.getInt("id"));
                s.setNombre(rs.getString("nombre"));

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
    
    public static String saco(int id){
         try {
             String sql = "select nombre from saco where id="+id;
             Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs=ps.executeQuery();
             String resultado="";
             while (rs.next()) {
                resultado = rs.getString("nombre");

            }
             return resultado;
         } catch (SQLException ex) {
             return null;
         }
     
     
     
        
    }
   

    public static boolean eliminar(saco s) {

        try {
            String sql = "delete from saco where id=?";

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
    
}
