/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.inventarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.inventario;

/**
 *
 * @author kevin
 */
public class inventarioEditar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String nombre=request.getParameter("nombre");
           String ubicacion=request.getParameter("ubicacion");
           String marca=request.getParameter("marca");
           String descripcion=request.getParameter("descripcion");
           int cantidad=Integer.parseInt(request.getParameter("cantidad"));
           int id=Integer.parseInt(request.getParameter("id"));
           int id_proveedori;
           double precio;
          
           
            if (request.getParameter("precio").equals("")) {
                precio=0.0;
            }else{
                precio=Double.valueOf(request.getParameter("precio"));
            }
            
            if (request.getParameter("proveedor").equals("")) {
                id_proveedori=6;
            }else{
                id_proveedori=Integer.parseInt(request.getParameter("proveedor"));
            }
           
           inventario i=new inventario();
           i.setNombre(nombre);
           i.setCantidad(cantidad);
           i.setDescripcion(descripcion);
           i.setId_proveedori(id_proveedori);
           i.setMarca(marca);
           i.setUbicacion(ubicacion);
           i.setValor_inventario(precio*cantidad);
           i.setPrecio(precio);
           i.setId(id);
           
            if (inventarioDao.actualizar(i)) {
                response.sendRedirect("inventarioArticulos.jsp");
            }else{
                response.sendRedirect("inventarioArticulos.jsp");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
