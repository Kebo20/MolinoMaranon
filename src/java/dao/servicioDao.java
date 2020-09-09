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

import modelo.servicio;

/**
 *
 * @author kevin
 */
public class servicioDao {

    public static boolean insertar(servicio s) {

        try {
            String sql = "insert into servicio(fecha,importe,descripcion,id_proveedor,comprobante) values (?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, s.getFecha());
            ps.setDouble(2, s.getImporte());
            ps.setString(3, s.getDescripcion());
            ps.setInt(4, s.getId_proveedor());
            ps.setString(5, s.getComprobante());

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

    public static boolean actualizar(servicio s) {

        try {
            String sql = "update servicio set  fecha=?, importe=? , descripcion=?,id_proveedor=?,comprobante=?  where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, s.getFecha());
            ps.setDouble(2, s.getImporte());
            ps.setString(3, s.getDescripcion());
            ps.setInt(4, s.getId_proveedor());
            ps.setString(5, s.getComprobante());
            ps.setInt(6, s.getId());

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

    public static ArrayList<servicio> listar() {

        try {
            String sql = "select * from servicio order by fecha desc ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            servicio s;
            ArrayList<servicio> l = new ArrayList<>();

            while (rs.next()) {

                s = new servicio();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setImporte(rs.getDouble("importe"));
                s.setDescripcion(rs.getString("descripcion"));
                s.setId_proveedor(rs.getInt("id_proveedor"));
                s.setComprobante(rs.getString("comprobante"));

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
    
     public static ArrayList<servicio> listar(String mes,String dia) {

        try {
            String sql = "select * from servicio where month(fecha)="+mes+ " and day(fecha)="+dia;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            servicio s;
            ArrayList<servicio> l = new ArrayList<>();

            while (rs.next()) {

                s = new servicio();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setImporte(rs.getDouble("importe"));
                s.setDescripcion(rs.getString("descripcion"));
                s.setId_proveedor(rs.getInt("id_proveedor"));
                s.setComprobante(rs.getString("comprobante"));

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
     public static ArrayList<servicio> listar(String mes) {

        try {
            String sql = "select * from servicio where month(fecha)="+mes;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            servicio s;
            ArrayList<servicio> l = new ArrayList<>();

            while (rs.next()) {

                s = new servicio();
                s.setId(rs.getInt("id"));
                s.setFecha(rs.getString("fecha"));
                s.setImporte(rs.getDouble("importe"));
                s.setDescripcion(rs.getString("descripcion"));
                s.setId_proveedor(rs.getInt("id_proveedor"));
                s.setComprobante(rs.getString("comprobante"));

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

    public static boolean eliminar(servicio s) {

        try {
            String sql = "delete from servicio where id=?";

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
