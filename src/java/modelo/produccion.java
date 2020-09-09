/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author kevin
 */
public class produccion {
    
    private int id;
    private String producto;
    private int numero_sacos;
    private int numero_kilos;
    private double subtotal;
    private int id_campaña;

    public produccion(int id, String producto, int numero_sacos, int numero_kilos, double subtotal, int id_campaña) {
        this.id = id;
        this.producto = producto;
        this.numero_sacos = numero_sacos;
        this.numero_kilos = numero_kilos;
        this.subtotal = subtotal;
        this.id_campaña = id_campaña;
    }

    public produccion() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getNumero_sacos() {
        return numero_sacos;
    }

    public void setNumero_sacos(int numero_sacos) {
        this.numero_sacos = numero_sacos;
    }

    public int getNumero_kilos() {
        return numero_kilos;
    }

    public void setNumero_kilos(int numero_kilos) {
        this.numero_kilos = numero_kilos;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public int getId_campaña() {
        return id_campaña;
    }

    public void setId_campaña(int id_campaña) {
        this.id_campaña = id_campaña;
    }
    
    
    
}
