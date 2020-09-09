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
import modelo.trabajador;

/**
 *
 * @author kevin
 */
public class trabajadorDao {

    public static boolean insertar(trabajador t) {

        try {
            String sql = "insert into trabajador(nombre,cargo,celular) values (?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, t.getNombre());
            ps.setString(2, t.getCargo());
            ps.setString(3, t.getCelular());

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

    public static boolean actualizar(trabajador t) {

        try {
            String sql = "update trabajador set  nombre=?, celular=? , cargo=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, t.getNombre());
            ps.setString(2, t.getCelular());
            ps.setString(3, t.getCargo());
            ps.setInt(4, t.getId());

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

    public static ArrayList<trabajador> listar() {

        try {
            String sql = "select * from trabajador order by nombre ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            trabajador t;
            ArrayList<trabajador> l = new ArrayList<>();

            while (rs.next()) {

                t = new trabajador();
                t.setId(rs.getInt("id"));
                t.setNombre(rs.getString("nombre"));
                t.setCargo(rs.getString("cargo"));
                t.setCelular(rs.getString("celular"));

                l.add(t);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }

    public static boolean eliminar(trabajador t) {

        try {
            String sql = "delete from trabajador where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, t.getId());

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
    
    

   public static String nombre(int id) {

        try {
            String sql = "select * from trabajador where id=" + id;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            String resultado = "";

            while (rs.next()) {
                resultado = rs.getString("nombre");

            }

            rs.close();
            ps.close();
            con.close();
            return resultado;

        } catch (SQLException ex) {
            return null;
        }

    }

}
