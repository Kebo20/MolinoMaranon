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
import modelo.agricultor;

/**
 *
 * @author kevin
 */
public class agricultorDao {

    public static boolean insertar(agricultor a) {

        try {
            String sql = "insert into agricultor(codigo,dni,nombre,celular,descripcion) values (?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, a.getCodigo());
            ps.setString(2, a.getDni());
            ps.setString(3, a.getNombre());
            ps.setString(4, a.getCelular());
            ps.setString(5, a.getDescripcion());

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

    public static boolean actualizar(agricultor a) {

        try {
            String sql = "update agricultor set codigo=?, dni=?, nombre=?, celular=? , descripcion=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, a.getCodigo());
            ps.setString(2, a.getDni());
            ps.setString(3, a.getNombre());
            ps.setString(4, a.getCelular());
            ps.setString(5, a.getDescripcion());
            ps.setInt(6, a.getId());

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

    public static ArrayList<agricultor> listar() {

        try {
            String sql = "select * from agricultor order by nombre ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            agricultor a;
            ArrayList<agricultor> l = new ArrayList<>();

            while (rs.next()) {

                a = new agricultor();
                a.setId(rs.getInt("id"));
                a.setDni(rs.getString("dni"));
                a.setCodigo(rs.getString("codigo"));
                a.setNombre(rs.getString("nombre"));
                a.setCelular(rs.getString("celular"));
                a.setDescripcion(rs.getString("descripcion"));

                l.add(a);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }

    public static boolean eliminar(agricultor a) {

        try {
            String sql = "delete from agricultor where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, a.getId());

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

    public static String agricultor_nombre(String id) {

        try {
            String sql = "select * from agricultor where id=" + id;

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
