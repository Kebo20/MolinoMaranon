/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.compraDao;
import dao.proveedorDao;
import dao.servicioDao;
import dao.sueldoDao;
import dao.trabajadorDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.compra;
import modelo.servicio;
import modelo.sueldo;

/**
 *
 * @author kevin
 */
public class ReporteGastosMensual extends HttpServlet {

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
          
             String mes = request.getParameter("mes");
          
            
            double total_compras=0.0;
            double total_proveedores=0.0;
            double total_sueldos=0.0;
            
            out.print("<h4>Compras</h4>");
            out.print("<table  class=\"table table-bordered table-striped table-hover dataTable js-exportable  \">\n"
                    + "                                    <thead>\n"
                    + "                                        <tr>\n"
                    + "\n"
                    + "\n"
                    + "                                            <th class=\"text-right\">Fecha</th>\n"
                    + "\n"
                    + "                                            <th class=\"text-right\">Tipo de comprobante</th>\n"
                    + "                                            <th class=\"text-right\">Comprobante de pago</th>\n"
                    + "                                            <th class=\"text-right\">Servicio</th>\n"
                    + "                                            <th class=\"text-right\">Monto</th>\n"
                    + "                                            <th class=\"text-right\">Observación</th>\n"
                    + "\n"
                    + "\n"
                    + "                                        </tr>\n"
                    + "                                    </thead>\n"
                    + "                                    <tbody>");

            for (compra c : compraDao.listar(mes)) {

                out.print("           <tr>\n"
                        + "\n"
                        + "                                            <td class=\"text-right\">" + c.getFecha() + "</td>\n"
                        + "                                            <td class=\"text-right\">" + c.getComprobante_tipo() + "</td>\n"
                        + "                                            <td class=\"text-right\">" + c.getComprobante_numero() + "</td>\n"
                        + "                                            <td class=\"text-right\">" + c.getTipo()+ "</td>\n"
                        + "                                            <td class=\"text-right\">" + c.getImporte()+ "</td>\n"
                        + "                                            <td class=\"text-right\">" + c.getDescripcion() + "</td>\n"
                        + "\n"
                        + "\n"
                        + "                                        </tr>");
                total_compras=total_compras+c.getImporte();

            }
            
                         out.print("           <tr>\n"
                        + "\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"><b>" + total_compras+ "</b></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "\n"
                        + "\n"
                        + "                                        </tr>");
            
            
            out.print(" </tbody>\n"
                    + "                                </table>");

            out.print("<br>");
            out.print("<h4>Pagos a proveedores </h4>");
            out.print("  <table  class=\"table table-bordered table-striped table-hover dataTable js-basic-example  \">\n"
                    + "                                    <thead>\n"
                    + "                                        <tr>\n"
                    + "                                            <th class=\"text-right\">Proveedor</th>\n"
                    + "                                            <th class=\"text-right\">Fecha</th>\n"
                    + "                                            <th class=\"text-right\">Comprobante</th>\n"
                    + "                                            <th class=\"text-right\">Importe</th>\n"
                    + "                                            <th class=\"text-right\">Descripción</th>\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "                                        </tr>\n"
                    + "                                    </thead>\n"
                    + "                                    <tbody>");

            for (servicio s : servicioDao.listar(mes)) {

                out.print(" <tr>\n"
                        + "                                            <td class=\"text-right\">" + proveedorDao.empresa(s.getId_proveedor()) + "</td>\n"
                        + "                                            <td class=\"text-right\">" + s.getFecha() + "</td>\n"
                        + "                                            <td class=\"text-right\">" + s.getComprobante() + "</td>\n"
                        + "                                            <td class=\"text-right\">" + s.getImporte() + "</td>\n"
                        + "                                            <td class=\"text-right\">" + s.getDescripcion() + "</td>\n"
                        + "\n"
                        + "\n"
                        + "\n"
                        + "\n"
                        + "                                        </tr>");
                total_proveedores=total_proveedores+s.getImporte();
                
                

            }
            
            out.print(" <tr>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"><b>"+total_proveedores+"</b></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "\n"
                        + "\n"
                        + "\n"
                        + "\n"
                        + "                                        </tr>");

            out.print("</tbody>\n"
                    + "                                </table>");

            out.print("<br>");
            out.print("<h4>Sueldos</h4>");

            out.print("<table  class=\"table table-bordered table-striped table-hover dataTable js-exportable  \">\n"
                    + "                                    <thead>\n"
                    + "                                        <tr>\n"
                    + "\n"
                    + "                                            <th class=\"text-right\">Trabajador</th>\n"
                    + "                                            <th class=\"text-right\">Fecha</th>\n"
                    + "                                            <th class=\"text-right\">Mes Cancelado</th>\n"
                    + "                                            <th class=\"text-right\">Comprobante de pago</th>\n"
                    + "                                            <th class=\"text-right\">Monto</th>\n"
                    + "\n"
                    + "\n"
                    + "                                        </tr>\n"
                    + "                                    </thead>\n"
                    + "                                    <tbody>");
            for (sueldo s : sueldoDao.listar(mes)) {

                out.print("          <tr>\n"
                        + "\n"
                        + "                                            <td class=\"text-right\">"+trabajadorDao.nombre(s.getId_trabajador())+"</td>\n"
                        + "                                            <td class=\"text-right\">"+s.getFecha()+"</td>\n"
                        + "                                            <td class=\"text-right\">"+s.getMes()+"</td>\n"
                        + "                                            <td class=\"text-right\">"+s.getComprobante()+"</td>\n"
                        + "                                            <td class=\"text-right\">"+s.getMonto()+"</td>\n"
                        + "\n"
                        + "\n"
                        + "                                        </tr>");
                
                total_sueldos=total_sueldos+s.getMonto();
            }
            
             out.print("          <tr>\n"
                        + "\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"></td>\n"
                        + "                                            <td class=\"text-right\"><b>"+total_sueldos+"</b></td>\n"
                        + "\n"
                        + "\n"
                        + "                                        </tr>");
            
            
            
            out.print("</tbody>\n"
                    + "                                </table>");
            
            
             out.print("<br>");
            double total=total_compras+total_proveedores+total_sueldos;
            out.print("<h2 style=\"color:#0e7379 \">Gastos del Mes: S/."+total+"</h2>");

            
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
