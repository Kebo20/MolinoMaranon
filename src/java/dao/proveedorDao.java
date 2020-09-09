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
import modelo.proveedor;

/**
 *
 * @author kevin
 */
public class proveedorDao {

    public static boolean insertar(proveedor p) {

        try {
            String sql = "insert into proveedor(empresa,servicio,responsable,telefono1,telefono2) values (?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, p.getEmpresa());
            ps.setString(2, p.getServicio());
            ps.setString(3, p.getResponsable());

            ps.setString(4, p.getTelefono1());
            ps.setString(5, p.getTelefono2());

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

    public static boolean actualizar(proveedor p) {

        try {
            String sql = "update proveedor set  empresa=?, responsable=? , servicio=?,telefono1=?,telefono2=? where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getEmpresa());
            ps.setString(2, p.getResponsable());
            ps.setString(3, p.getServicio());
            ps.setString(4, p.getTelefono1());
            ps.setString(5, p.getTelefono2());
            ps.setInt(6, p.getId());

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

    public static ArrayList<proveedor> listar() {

        try {
            String sql = "select * from proveedor where empresa!='' order by empresa ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            proveedor p;
            ArrayList<proveedor> l = new ArrayList<>();

            while (rs.next()) {

                p = new proveedor();
                p.setId(rs.getInt("id"));
                p.setEmpresa(rs.getString("empresa"));
                p.setServicio(rs.getString("servicio"));
                p.setResponsable(rs.getString("responsable"));
                p.setTelefono1(rs.getString("telefono1"));
                p.setTelefono2(rs.getString("telefono2"));

                l.add(p);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }

    public static boolean eliminar(proveedor p) {

        try {
            String sql = "delete from proveedor where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, p.getId());

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

    public static String empresa(int id) {

        try {
            String sql = "select * from proveedor where id=" + id;

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            String resultado = "";

            while (rs.next()) {
                resultado = rs.getString("empresa");

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
