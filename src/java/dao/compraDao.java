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
import modelo.compra;


/**
 *
 * @author kevin
 */
public class compraDao {
    
     public static boolean insertar(compra c) {

        try {
            String sql = "insert into compra(fecha,comprobante_tipo,comprobante_numero,tipo,importe,descripcion) values (?,?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, c.getFecha());
            ps.setString(2, c.getComprobante_tipo());
            ps.setString(3, c.getComprobante_numero());
            ps.setString(4, c.getTipo());
            ps.setDouble(5, c.getImporte());
            ps.setString(6, c.getDescripcion());
          

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

    public static boolean actualizar(compra c) {

        try {
            String sql = "update compra set  fecha=?,comprobante_tipo=?,comprobante_numero=?,tipo=?, importe=? , descripcion=?  where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
              ps.setString(1, c.getFecha());
            ps.setString(2, c.getComprobante_tipo());
            ps.setString(3, c.getComprobante_numero());
            ps.setString(4, c.getTipo());
            ps.setDouble(5, c.getImporte());
            ps.setString(6, c.getDescripcion());
            ps.setInt(7, c.getId());

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

    public static ArrayList<compra> listar() {

        try {
            String sql = "select * from compra order by fecha desc ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            compra c;
            ArrayList<compra> l = new ArrayList<>();

            while (rs.next()) {

                c = new compra();
                c.setId(rs.getInt("id"));
                c.setFecha(rs.getString("fecha"));
                c.setImporte(rs.getDouble("importe"));
                c.setDescripcion(rs.getString("descripcion"));
                c.setComprobante_tipo(rs.getString("comprobante_tipo"));
                c.setComprobante_numero(rs.getString("comprobante_numero"));
                c.setTipo(rs.getString("tipo"));
                        

                l.add(c);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }
    public static ArrayList<compra> listar(String mes,String dia) {

        try {
            String sql = "select * from compra where month(fecha)="+mes+ " and day(fecha)="+dia;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            compra c;
            ArrayList<compra> l = new ArrayList<>();

            while (rs.next()) {

                c = new compra();
                c.setId(rs.getInt("id"));
                c.setFecha(rs.getString("fecha"));
                c.setImporte(rs.getDouble("importe"));
                c.setDescripcion(rs.getString("descripcion"));
                c.setComprobante_tipo(rs.getString("comprobante_tipo"));
                c.setComprobante_numero(rs.getString("comprobante_numero"));
                c.setTipo(rs.getString("tipo"));
                        

                l.add(c);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }
    public static ArrayList<compra> listar(String mes) {

        try {
            String sql = "select * from compra where month(fecha)="+mes;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            compra c;
            ArrayList<compra> l = new ArrayList<>();

            while (rs.next()) {

                c = new compra();
                c.setId(rs.getInt("id"));
                c.setFecha(rs.getString("fecha"));
                c.setImporte(rs.getDouble("importe"));
                c.setDescripcion(rs.getString("descripcion"));
                c.setComprobante_tipo(rs.getString("comprobante_tipo"));
                c.setComprobante_numero(rs.getString("comprobante_numero"));
                c.setTipo(rs.getString("tipo"));
                        

                l.add(c);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }

    public static boolean eliminar(compra c) {

        try {
            String sql = "delete from compra where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, c.getId());

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
