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
import modelo.venta;

/**
 *
 * @author kevin
 */
public class ventaDao {
    
            
    public static boolean insertar(venta v){
        
        try {
            String sql= "insert into venta(numero_orden,fecha,producto,saco,precio,cantidad,total,id_campañav) values (?,?,?,?,?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, v.getNumero_orden());
            ps.setString(2, v.getFecha());
            ps.setString(3, v.getProducto());
            ps.setInt(4, v.getSaco());
            ps.setDouble(5, v.getPrecio());
            ps.setInt(6, v.getCantidad());
          
           ps.setDouble(7, v.getTotal());
           ps.setInt(8, v.getId_campañav());
            
           
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            }else{
                return false;
            }
             
              
        } catch (SQLException ex) {
            return false;
        }
    }
    
       
    public static boolean actualizar(venta v){
        
        try {
            String sql= "update venta set numero_orden=?, fecha=?, producto=?,saco=?, precio=?,cantidad=?,total=?,id_campañav=?  where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, v.getNumero_orden());
            ps.setString(2, v.getFecha());
            ps.setString(3, v.getProducto());
            ps.setInt(4, v.getSaco());
            ps.setDouble(5, v.getPrecio());
            ps.setInt(6, v.getCantidad());
           
           ps.setDouble(7, v.getTotal());
           ps.setInt(8, v.getId_campañav());
           ps.setInt(9, v.getId());
           
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            }else{
                return false;
            }
             
              
        } catch (SQLException ex) {
            return false;
        }
    }
    
     public static ArrayList<venta> listar(){
        
        try {
            String sql= "select * from venta order by numero_orden ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                v.setId(rs.getInt("id"));
                v.setNumero_orden(rs.getString("numero_orden"));
                v.setFecha(rs.getDate("fecha").toString());
                v.setProducto(rs.getString("producto"));
                v.setPrecio(rs.getDouble("precio"));
                v.setCantidad(rs.getInt("cantidad"));
                v.setKilo(rs.getDouble("kilo"));
                v.setTotal(rs.getDouble("total"));
                v.setSaco(rs.getInt("saco"));
                v.setId_campañav(rs.getInt("id_campañav"));
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }   
     
     
      public static ArrayList<venta> listar_numero_orden(String mes,String dia){
        
        try {
            String sql= "select numero_orden from venta where month(fecha)="+mes+" and day(fecha)="+dia+"  group by numero_orden";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                
                v.setNumero_orden(rs.getString("numero_orden"));
               
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  } 
     public static ArrayList<venta> listar(String mes, String dia,String numero_orden){
        
        try {
            String sql= "select * from venta  where month(fecha)="+mes+" and day(fecha)="+dia+" and numero_orden='"+numero_orden+"'";        
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                v.setId(rs.getInt("id"));
                v.setNumero_orden(rs.getString("numero_orden"));
                v.setFecha(rs.getDate("fecha").toString());
                v.setProducto(rs.getString("producto"));
                v.setPrecio(rs.getDouble("precio"));
                v.setCantidad(rs.getInt("cantidad"));
                v.setKilo(rs.getDouble("kilo"));
                v.setTotal(rs.getDouble("total"));
                v.setSaco(rs.getInt("saco"));
                v.setId_campañav(rs.getInt("id_campañav"));
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
      public static ArrayList<venta> listar_numero_orden(String mes){
        
        try {
            String sql= "select numero_orden from venta where month(fecha)="+mes+"  group by numero_orden";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                
                v.setNumero_orden(rs.getString("numero_orden"));
               
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  } 
     public static ArrayList<venta> listar(String mes,String numero_orden){
        
        try {
            String sql= "select * from venta  where month(fecha)="+mes+"  and numero_orden='"+numero_orden+"'";        
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                v.setId(rs.getInt("id"));
                v.setNumero_orden(rs.getString("numero_orden"));
                v.setFecha(rs.getDate("fecha").toString());
                v.setProducto(rs.getString("producto"));
                v.setPrecio(rs.getDouble("precio"));
                v.setCantidad(rs.getInt("cantidad"));
                v.setKilo(rs.getDouble("kilo"));
                v.setTotal(rs.getDouble("total"));
                v.setSaco(rs.getInt("saco"));
                v.setId_campañav(rs.getInt("id_campañav"));
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
     
     
      public static boolean eliminar(venta v){
        
        try {
            String sql= "delete from venta where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setInt(1, v.getId());
           
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            }else{
                return false;
            }
             
              
        } catch (SQLException ex) {
            return false;
        }
    }
    
      
      public static int cantidad(String campaña,String producto){
        
        try {
            String sql= "SELECT sum(cantidad) as suma FROM venta where id_campañav="+campaña+" and producto='"+producto+"'";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            int resultado=0;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
               
                resultado=rs.getInt("suma");
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return resultado;
            
              
        } catch (SQLException ex) {
             return 0;
        }
  
  }   
      public static int cantidad_sacos(int saco){
        
        try {
            String sql= "SELECT sum(cantidad) as suma FROM venta where saco='"+saco+"'";
            
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
      public static ArrayList<venta> listar_numero_orden(){
        
        try {
            String sql= "select numero_orden,fecha from venta group by numero_orden order by numero_orden desc ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                
                v.setNumero_orden(rs.getString("numero_orden"));
                v.setFecha(rs.getString("fecha"));
               
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }   
      
       public static ArrayList<venta> listar(String numero_orden){
        
        try {
            String sql= "select * from venta where numero_orden="+numero_orden+" order by fecha desc";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                v.setId(rs.getInt("id"));
                v.setNumero_orden(rs.getString("numero_orden"));
                v.setFecha(rs.getDate("fecha").toString());
                v.setProducto(rs.getString("producto"));
                v.setPrecio(rs.getDouble("precio"));
                v.setCantidad(rs.getInt("cantidad"));
                v.setKilo(rs.getDouble("kilo"));
                v.setTotal(rs.getDouble("total"));
                v.setSaco(rs.getInt("saco"));
                v.setId_campañav(rs.getInt("id_campañav"));
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  
       }
       
       public static ArrayList<venta> listar(int producto,String campaña){
        
        try {
            String sql= "select * from venta  where producto='"+producto+"' and id_campañav="+campaña+"";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            venta v ;
            ArrayList<venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new venta();
                
                v.setId(rs.getInt("id"));
                v.setNumero_orden(rs.getString("numero_orden"));
                v.setFecha(rs.getDate("fecha").toString());
                v.setProducto(rs.getString("producto"));
                v.setPrecio(rs.getDouble("precio"));
                v.setCantidad(rs.getInt("cantidad"));
                v.setKilo(rs.getDouble("kilo"));
                v.setTotal(rs.getDouble("total"));
                v.setSaco(rs.getInt("saco"));
                v.setId_campañav(rs.getInt("id_campañav"));
                
                l.add(v);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  } 
      
    
}
