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
import modelo.inventario;


/**
 *
 * @author kevin
 */
public class inventarioDao {
    
       public static boolean insertar(inventario i) {

        try {
            String sql = "insert into inventario(nombre,marca,ubicacion,precio,cantidad,valor_inventario,descripcion,id_proveedori) values (?,?,?,?,?,?,?,?)";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, i.getNombre() );
            ps.setString(2, i.getMarca());
            ps.setString(3, i.getUbicacion());
            ps.setDouble(4, i.getPrecio());
            ps.setInt(5, i.getCantidad() );
            ps.setDouble(6, i.getValor_inventario() );
            ps.setString(7, i.getDescripcion() );
            ps.setInt(8, i.getId_proveedori() );
      

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

    public static boolean actualizar(inventario i) {

        try {
            String sql = "update inventario set  nombre=?, marca=? , ubicacion=? ,precio=?,cantidad=?,valor_inventario=?,descripcion=?,id_proveedori=?  where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

             ps.setString(1, i.getNombre() );
            ps.setString(2, i.getMarca());
            ps.setString(3, i.getUbicacion());
            ps.setDouble(4, i.getPrecio());
            ps.setInt(5, i.getCantidad() );
            ps.setDouble(6, i.getValor_inventario() );
            ps.setString(7, i.getDescripcion() );
            ps.setInt(8, i.getId_proveedori() );
            ps.setInt(9, i.getId() );
            

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
    public static boolean actualizar_sacos(inventario i) {

        try {
            String sql = "update inventario set  nombre=?, marca=? , ubicacion=? ,precio=?,cantidad=cantidad + ?,valor_inventario=?,descripcion=?,id_proveedori=?  where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

             ps.setString(1, i.getNombre() );
            ps.setString(2, i.getMarca());
            ps.setString(3, i.getUbicacion());
            ps.setDouble(4, i.getPrecio());
            ps.setInt(5, i.getCantidad() );
            ps.setDouble(6, i.getValor_inventario() );
            ps.setString(7, i.getDescripcion() );
            ps.setInt(8, i.getId_proveedori() );
            ps.setInt(9, i.getId() );
            

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

    public static ArrayList<inventario> listar() {

        try {
            String sql = "select * from inventario order by nombre ";
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            inventario i;
            ArrayList<inventario> l = new ArrayList<>();

            while (rs.next()) {

                i = new inventario();
                i.setId(rs.getInt("id"));
                i.setNombre(rs.getString("nombre"));
                i.setMarca(rs.getString("marca"));
                i.setCantidad(rs.getInt("cantidad"));
                i.setDescripcion(rs.getString("descripcion"));
                i.setPrecio(rs.getDouble("precio"));
                i.setUbicacion(rs.getString("ubicacion"));
                i.setValor_inventario(rs.getDouble("valor_inventario"));
                i.setId_proveedori(rs.getInt("id_proveedori"));
               

                l.add(i);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }
    public static ArrayList<inventario> listar_saco(int saco) {

        try {
            String sql = "select * from inventario  where nombre='"+saco+"' ";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            inventario i;
            ArrayList<inventario> l = new ArrayList<>();

            while (rs.next()) {

                i = new inventario();
                i.setId(rs.getInt("id"));
                i.setNombre(rs.getString("nombre"));
                i.setMarca(rs.getString("marca"));
                i.setCantidad(rs.getInt("cantidad"));
                i.setDescripcion(rs.getString("descripcion"));
                i.setPrecio(rs.getDouble("precio"));
                i.setUbicacion(rs.getString("ubicacion"));
                i.setValor_inventario(rs.getDouble("valor_inventario"));
                i.setId_proveedori(rs.getInt("id_proveedori"));
               

                l.add(i);
            }

            rs.close();
            ps.close();
            con.close();
            return l;

        } catch (SQLException ex) {
            return null;
        }

    }

    public static boolean eliminar(inventario i) {

        try {
            String sql = "delete from inventario where id=?";

            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, i.getId());

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
