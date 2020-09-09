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
import modelo.produccion;


/**
 *
 * @author kevin
 */
public class produccionDao {
    
        public static boolean insertar(produccion p){
        
        try {
            String sql= "insert into produccion(producto,numero_sacos,numero_kilos,subtotal,id_campaña) values (?,?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           ps.setString(1,p.getProducto());
           ps.setInt(2, p.getNumero_sacos());
           ps.setInt(3, p.getNumero_kilos());
           ps.setDouble(4, p.getSubtotal());
           ps.setInt(5,p.getId_campaña());
            
           
            
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
    
       
    public static boolean actualizar(produccion p){
        
        try {
           String sql= "update produccion set producto=?, numero_sacos=?, numero_kilos=?  where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
           ps.setString(1,p.getProducto());
           ps.setInt(2, p.getNumero_sacos());
           ps.setInt(3, p.getNumero_kilos());
           
          
           ps.setInt(4, p.getId());
           
            
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
    
     public static ArrayList<produccion> listar(String id){
        
        try {
            String sql= "select * from produccion where id_campaña= "+id;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            produccion p ;
            ArrayList<produccion> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new produccion();
                
                p.setId(rs.getInt("id"));
                p.setProducto(rs.getString("producto"));
                p.setNumero_sacos(rs.getInt("numero_sacos"));
                p.setNumero_kilos(rs.getInt("numero_kilos"));
                p.setSubtotal(rs.getDouble("subtotal"));
                p.setId_campaña(rs.getInt("id_campaña"));
               
                
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
     
     
     
      public static boolean eliminar(produccion p){
        
        try {
            String sql= "delete from produccion where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setInt(1, p.getId());
           
            
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
            String sql= "select numero_sacos from produccion where id_campaña ="+campaña+" and producto='"+producto+"'";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            produccion p ;
            int resultado=0;
            ArrayList<produccion> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new produccion();
                
               
                resultado=rs.getInt("numero_sacos");
               
               
                
                l.add(p);
            }
            
            rs.close();
            ps.close();
            con.close();
            return resultado;
            
              
        } catch (SQLException ex) {
             return 0;
        }
  
  } 
      
}
