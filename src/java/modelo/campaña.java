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
public class campaña {
    private int id;
    private String codigo;
    private String fecha;
    private int numero_sacos;
    private double prestamo;
    private String estado;
    private int agricultor;

    public campaña() {
    }

    public campaña(int id, String codigo, String fecha, int numero_sacos, double prestamo, String estado, int agricultor) {
        this.id = id;
        this.codigo = codigo;
        this.fecha = fecha;
        this.numero_sacos = numero_sacos;
        this.prestamo = prestamo;
        this.estado = estado;
        this.agricultor = agricultor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getNumero_sacos() {
        return numero_sacos;
    }

    public void setNumero_sacos(int numero_sacos) {
        this.numero_sacos = numero_sacos;
    }

    public double getPrestamo() {
        return prestamo;
    }

    public void setPrestamo(double prestamo) {
        this.prestamo = prestamo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getAgricultor() {
        return agricultor;
    }

    public void setAgricultor(int agricultor) {
        this.agricultor = agricultor;
    }

   
    
    
}
