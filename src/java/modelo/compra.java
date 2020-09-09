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
public class compra {
    private int id;
    private String fecha;
    private String comprobante_tipo;
    private String comprobante_numero;
    private String tipo;
    private double importe;
    private String descripcion;

    public compra() {
    }

    public compra(int id, String fecha, String comprobante_tipo, String comprobante_numero, String tipo, double importe, String descripcion) {
        this.id = id;
        this.fecha = fecha;
        this.comprobante_tipo = comprobante_tipo;
        this.comprobante_numero = comprobante_numero;
        this.tipo = tipo;
        this.importe = importe;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getComprobante_tipo() {
        return comprobante_tipo;
    }

    public void setComprobante_tipo(String comprobante_tipo) {
        this.comprobante_tipo = comprobante_tipo;
    }

    public String getComprobante_numero() {
        return comprobante_numero;
    }

    public void setComprobante_numero(String comprobante_numero) {
        this.comprobante_numero = comprobante_numero;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getImporte() {
        return importe;
    }

    public void setImporte(double importe) {
        this.importe = importe;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
    
    
}
