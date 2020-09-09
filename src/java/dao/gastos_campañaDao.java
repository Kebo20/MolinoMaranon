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
import modelo.gastos_campaña;


/**
 *
 * @author kevin
 */
public class gastos_campañaDao {

    public static boolean insertar(gastos_campaña g) {

        try {
            String sql = "insert into gastos_campaña(concepto,valor,cantidad,total,id_campañag) values (?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, g.getConcepto());
            ps.setDouble(2, g.getValor());
            ps.setInt(3, g.getCantidad());
            ps.setDouble(4, g.getTotal());
            ps.setInt(5, g.getId_campañag());

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

    public static boolean actualizar(gastos_campaña g) {

        try {
            String sql = "update  gastos_campaña set concepto=?, valor=?,cantidad=?, total=? ,id_campañag=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, g.getConcepto());
            ps.setDouble(2, g.getValor());
            ps.setInt(3, g.getCantidad());
            ps.setDouble(4, g.getTotal());
            ps.setInt(5, g.getId_campañag());
            ps.setInt(6, g.getId());

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

    public static ArrayList<gastos_campaña> listar(String id) {

        try {
            String sql = "select * from gastos_campaña where id_campañag= " + id;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            gastos_campaña g;
            ArrayList<gastos_campaña> l = new ArrayList<>();

            while (rs.next()) {

                g = new gastos_campaña();

                g.setId(rs.getInt("id"));
                g.setConcepto(rs.getString("concepto"));
                g.setValor(rs.getDouble("valor"));
                g.setCantidad(rs.getInt("cantidad"));
                g.setTotal(rs.getDouble("total"));
                g.setId_campañag(rs.getInt("id_campañag"));

                l.add(g);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }

    public static boolean eliminar(gastos_campaña g) {

        try {
            String sql = "delete from gastos_campaña where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, g.getId());

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
