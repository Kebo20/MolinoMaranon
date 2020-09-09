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
import modelo.sueldo;

/**
 *
 * @author kevin
 */
public class sueldoDao {

    public static boolean insertar(sueldo s) {

        try {
            String sql = "insert into sueldo(fecha,mes,comprobante,monto,id_trabajador) values (?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getFecha());
            ps.setString(2, s.getMes());
            ps.setString(3, s.getComprobante());
            ps.setDouble(4, s.getMonto());
            ps.setInt(5, s.getId_trabajador());

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

    public static boolean actualizar(sueldo s) {

        try {
            String sql = "update trabajador set  fecha=?, mes=? ,comprobante=?, monto=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getFecha());
            ps.setString(2, s.getMes());
            ps.setDouble(4, s.getMonto());
            ps.setInt(5, s.getId());

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

    public static ArrayList<sueldo> listar() {

        try {
            String sql = "select * from sueldo order by fecha ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            sueldo s;
            ArrayList<sueldo> l = new ArrayList<>();

            while (rs.next()) {

                s = new sueldo();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setMes(rs.getString("mes"));
                s.setMonto(rs.getDouble("monto"));
                s.setComprobante(rs.getString("comprobante"));
                s.setId_trabajador(rs.getInt("id_trabajador"));

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
    public static ArrayList<sueldo> listar(String mes,String dia) {

        try {
            String sql = "select * from sueldo where month(fecha)="+mes+ " and day(fecha)="+dia;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            sueldo s;
            ArrayList<sueldo> l = new ArrayList<>();

            while (rs.next()) {

                s = new sueldo();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setMes(rs.getString("mes"));
                s.setMonto(rs.getDouble("monto"));
                s.setComprobante(rs.getString("comprobante"));
                s.setId_trabajador(rs.getInt("id_trabajador"));

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
    public static ArrayList<sueldo> listar(String mes) {

        try {
            String sql = "select * from sueldo where month(fecha)="+mes;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            sueldo s;
            ArrayList<sueldo> l = new ArrayList<>();

            while (rs.next()) {

                s = new sueldo();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setMes(rs.getString("mes"));
                s.setMonto(rs.getDouble("monto"));
                s.setComprobante(rs.getString("comprobante"));
                s.setId_trabajador(rs.getInt("id_trabajador"));

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

    public static boolean eliminar(sueldo s) {

        try {
            String sql = "delete from sueldo where id=?";

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
