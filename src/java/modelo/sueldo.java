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
public class sueldo {

    private int id;
    private String fecha;
    private String mes;
    private String comprobante;
    
    private double monto;
    private int id_trabajador;

    public sueldo() {
    }

    public sueldo(int id, String fecha, String mes, String comprobante, double monto, int id_trabajador) {
        this.id = id;
        this.fecha = fecha;
        this.mes = mes;
        this.comprobante = comprobante;
        this.monto = monto;
        this.id_trabajador = id_trabajador;
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

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getComprobante() {
        return comprobante;
    }

    public void setComprobante(String comprobante) {
        this.comprobante = comprobante;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public int getId_trabajador() {
        return id_trabajador;
    }

    public void setId_trabajador(int id_trabajador) {
        this.id_trabajador = id_trabajador;
    }

    

}
