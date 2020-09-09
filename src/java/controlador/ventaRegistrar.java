/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.campañaDao;
import dao.ventaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.venta;

/**
 *
 * @author kevin
 */
public class ventaRegistrar extends HttpServlet {

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
          String numero_orden=request.getParameter("numero_orden");
          String fecha=request.getParameter("fecha");
          String producto=request.getParameter("producto");
          int saco=Integer.parseInt(request.getParameter("saco"));
          double precio=Double.valueOf(request.getParameter("precio"));
          String cantidad=request.getParameter("cantidad");
          double total=Double.valueOf(request.getParameter("total"));
          String campaña=request.getParameter("campana");
          
          venta v =new venta();
          v.setNumero_orden(numero_orden);
          v.setProducto(producto);
          v.setSaco(saco);
          v.setFecha(fecha);
          v.setPrecio(precio);
          v.setTotal(total);
          v.setCantidad(Integer.parseInt(cantidad));
          v.setId_campañav(Integer.parseInt(campaña));
          
//          v.setNumero_orden("34");
//          v.setProducto("Arroz");
//          v.setSaco("Rojo-Negro");
//          v.setFecha("2019-06-10");
//          v.setPrecio(2.0);
//          v.setTotal(6.0);
//          v.setCantidad(3);
//          v.setId_campañav(234);
          
            if (ventaDao.insertar(v)) {
                out.print("ok");
            }else{
                out.print("");
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
