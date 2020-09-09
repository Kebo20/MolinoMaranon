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
import modelo.campaña;

/**
 *
 * @author kevin
 */
public class campañaDao {
    
        
    public static boolean insertar(campaña c){
        
        try {
            String sql= "insert into campaña(codigo,fecha,numero_sacos,prestamo,id_agricultor) values (?,?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, c.getCodigo());
            ps.setString(2, c.getFecha());
            ps.setInt(3, c.getNumero_sacos());
            ps.setDouble(4, c.getPrestamo());
            ps.setInt(5, c.getAgricultor());
            
           
            
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
    
       
    public static boolean actualizar(campaña c){
        
        try {
            String sql= "update campaña set codigo=?, fecha=?, numero_sacos=?, prestamo=?  where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, c.getCodigo());
            ps.setString(2, c.getFecha());
            ps.setInt(3, c.getNumero_sacos());
            ps.setDouble(4, c.getPrestamo());
            ps.setInt(5, c.getId());
           
            
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
    
     public static ArrayList<campaña> listar(int id){
        
        try {
            String sql= "select * from campaña where id_agricultor="+id+"  order by fecha ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            campaña c ;
            ArrayList<campaña> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new campaña();
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setFecha(rs.getString("fecha"));
                c.setNumero_sacos(rs.getInt("numero_sacos"));
                c.setPrestamo(rs.getDouble("prestamo"));
                c.setEstado(rs.getString("estado"));
                
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
     public static ArrayList<campaña> listar_activos(int id){
        
        try {
            String sql= "select * from campaña where id_agricultor="+id+" and estado='activo' order by fecha ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            campaña c ;
            ArrayList<campaña> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new campaña();
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setFecha(rs.getString("fecha"));
                c.setNumero_sacos(rs.getInt("numero_sacos"));
                c.setPrestamo(rs.getDouble("prestamo"));
                
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
     public static ArrayList<campaña> listar(String id){
        
        try {
            String sql= "select * from campaña where id="+id+"  order by fecha ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            campaña c ;
            ArrayList<campaña> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new campaña();
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setFecha(rs.getString("fecha"));
                c.setNumero_sacos(rs.getInt("numero_sacos"));
                c.setPrestamo(rs.getDouble("prestamo"));
                
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
     
      public static ArrayList<campaña> listar(){
        
        try {
            String sql= "select * from campaña where  order by fecha ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
        
            ResultSet rs= ps.executeQuery();
            campaña c ;
            ArrayList<campaña> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new campaña();
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setFecha(rs.getString("fecha"));
                c.setNumero_sacos(rs.getInt("numero_sacos"));
                c.setPrestamo(rs.getDouble("prestamo"));
                
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
     
         
     public static ArrayList<campaña> listar_ultimo(){
        
        try {
            String sql= "SELECT * FROM campaña where id=(select max(id) from campaña) ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            campaña c ;
            ArrayList<campaña> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new campaña();
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setFecha(rs.getString("fecha"));
                c.setNumero_sacos(rs.getInt("numero_sacos"));
                c.setPrestamo(rs.getDouble("prestamo"));
                
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
     
      public static boolean eliminar(campaña c){
        
        try {
            String sql= "delete from campaña where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setInt(1, c.getId());
           
            
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
      
      public static boolean liquidar(campaña c){
        
        try {
            String sql= "update campaña set estado='inactivo'  where id=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
          
            ps.setInt(1, c.getId());
           
            
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
      
       public static int campaña(String agricultor){
        
        try {
            String sql= "SELECT * FROM campaña where  estado='activo' and id_agricultor="+agricultor;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            campaña c ;
            int resultado=0;
            ArrayList<campaña> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new campaña();
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setFecha(rs.getString("fecha"));
                c.setNumero_sacos(rs.getInt("numero_sacos"));
                c.setPrestamo(rs.getDouble("prestamo"));
                resultado=rs.getInt("id");
                
                l.add(c);
            }
            
            rs.close();
            ps.close();
            con.close();
            return resultado;
            
              
        } catch (SQLException ex) {
             return 0;
        }
  
  }
       
       public static String campaña_agricultor(int id){
        
        try {
            String sql= "SELECT * FROM campaña where id="+id;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            String resultado="";
            
            while(rs.next()){
                resultado=String.valueOf(rs.getInt("id_agricultor"));
           
            }
            
            rs.close();
            ps.close();
            con.close();
            return resultado;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
       
   public static String campaña_codigo(String id){
        
        try {
            String sql= "SELECT * FROM campaña where id="+id;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            String resultado="";
            
            while(rs.next()){
                resultado=String.valueOf(rs.getString("codigo"));
           
            }
            
            rs.close();
            ps.close();
            con.close();
            return resultado;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
   public static String campaña_estado(String id){
        
        try {
            String sql= "SELECT * FROM campaña where id="+id;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            String resultado="";
            
            while(rs.next()){
                resultado=String.valueOf(rs.getString("estado"));
           
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
