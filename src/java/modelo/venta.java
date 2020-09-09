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
public class venta {
    
    private int id;
    private String numero_orden;
    private String fecha;
    private String producto;
    private int saco;
    private Double precio;
    private int cantidad;
    private Double kilo;
    private Double total;
    private int id_campañav;

    public venta() {
    }

    public venta(int id, String numero_orden, String fecha, String producto, int saco, Double precio, int cantidad, Double kilo, Double total, int id_campañav) {
        this.id = id;
        this.numero_orden = numero_orden;
        this.fecha = fecha;
        this.producto = producto;
        this.saco = saco;
        this.precio = precio;
        this.cantidad = cantidad;
        this.kilo = kilo;
        this.total = total;
        this.id_campañav = id_campañav;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumero_orden() {
        return numero_orden;
    }

    public void setNumero_orden(String numero_orden) {
        this.numero_orden = numero_orden;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getSaco() {
        return saco;
    }

    public void setSaco(int saco) {
        this.saco = saco;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getKilo() {
        return kilo;
    }

    public void setKilo(Double kilo) {
        this.kilo = kilo;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public int getId_campañav() {
        return id_campañav;
    }

    public void setId_campañav(int id_campañav) {
        this.id_campañav = id_campañav;
    }

        
    
}
