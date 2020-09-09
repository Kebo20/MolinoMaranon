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
public class proveedor {
    
    private int id;
    private String empresa;
    private String servicio;
    private String responsable;
    private String telefono1;
    private String telefono2;

    public proveedor() {
    }

    public proveedor(int id, String empresa, String servicio, String responsable, String telefono1, String telefono2) {
        this.id = id;
        this.empresa = empresa;
        this.servicio = servicio;
        this.responsable = responsable;
        this.telefono1 = telefono1;
        this.telefono2 = telefono2;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getTelefono1() {
        return telefono1;
    }

    public void setTelefono1(String telefono1) {
        this.telefono1 = telefono1;
    }

    public String getTelefono2() {
        return telefono2;
    }

    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }
    
    
    
}
