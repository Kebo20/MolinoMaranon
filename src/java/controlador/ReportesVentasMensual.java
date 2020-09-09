/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.agricultorDao;
import dao.campañaDao;
import dao.sacoDao;
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
public class ReportesVentasMensual extends HttpServlet {

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
            
            double total=0.0;
            out.print(" <table  class=\"table table-striped table-hover dataTable js-basic-example\" style=\"padding-bottom: 0px;padding-top: 0px;font-size: 12px;background-color: #ffffff\">\n"
                    + "                                                    <thead>\n"
                    + "                                                        <tr>\n"
                    + "                                                            <th class=\"text-right\">N° Orden</th>\n"
                    + "                                                            <th  class=\"text-right\">Fecha</th>\n"
                    + "                                                            <th class=\"text-right\">Producto</th>\n"
                    + "\n"
                    + "                                                            <th class=\"text-right\">Saco</th>\n"
                    + "                                                            <th class=\"text-right\">Cantidad</th>\n"
                    + "\n"
                    + "                                                            <th class=\"text-right\">Precio</th>\n"
                    + "                                                            <th class=\"text-right\">Total</th>\n"
                    + "                                                            <th class=\"text-right\">Agricultor</th>\n"
                    + "                                                            <th class=\"text-right\">Campaña</th>\n"
                    + "\n"
         
                    + "\n"
                    + "                                                        </tr>\n"
                    + "                                                    </thead>\n"
                    + "                                                    <tbody>");
            for (venta v1 : ventaDao.listar_numero_orden(mes)) {
                out.print("                                     <tr>\n"
                        + "                                                            <td class=\"text-center\"  style=\"font-size: 15px;width: 10%;padding-bottom:   0px;\"><b>" + v1.getNumero_orden() + "</b></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 15%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 10%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 3%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 3%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 6%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 12%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 20%;padding-bottom:   0px;\"></td>\n"
                        + "                                                            <td class=\"text-right\" style=\"width: 10%;padding-bottom:   0px;\"></td>\n"
                      
                        + "                                                        </tr>");
                double suma = 0.0;
                for (venta v : ventaDao.listar(mes,  v1.getNumero_orden())) {
                    
                   
                    String producto = " ";
                   
                    switch (v.getProducto()) {
                        case "1":
                            producto = "Arroz";
                            break;
                        case "2":
                            producto = "Arrocillo";
                            break;
                        case "3":
                            producto = "Descarte";
                            break;
                        case "4":
                            producto = "Polvillo";
                            break;
                        case "5":
                            producto = "Ñelen";
                            break;
                        
                    }
                    out.print("<tr>");
                    out.print("<td class=\"text-right\" style=\"color: transparent;width: 10%;padding-bottom:   0px;\"></td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 15%;padding-bottom:   0px;\">" + v.getFecha() + "</td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 10%;padding-bottom:   0px;\">" + producto + "</td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 3%;padding-bottom:   0px;\">" +sacoDao.saco(v.getSaco())  + "</td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 3%;padding-bottom:   0px;\">" +  v.getCantidad()+ "</td>\n"
                            + "\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 6%;padding-bottom:   0px;\">" + v.getPrecio() + "</td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 12%;padding-bottom:   0px;\">" + v.getTotal() + "</td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 20%;padding-bottom:   0px;\">" + agricultorDao.agricultor_nombre(campañaDao.campaña_agricultor(v.getId_campañav())) + "</td>\n"
                            + "                                                            <td class=\"text-right\" style=\"width: 10%;padding-bottom:   0px;\">" + campañaDao.campaña_codigo(String.valueOf(v.getId_campañav())) + "</td>");
                    out.print("</tr>");
                    suma = v.getTotal() + suma;
                    
                }
                
                out.print("                                                        <tr>\n"
                        + "\n"
                        + "                                                            <td class=\"text-right\"  style=\"font-size: 15px;color: transparent\"><b></b></td>\n"
                        + "                                                            <td class=\"text-center\"  style=\"color: transparent\"><b></b></td>\n"
                        + "                                                            <td class=\"text-center\"  style=\"color: transparent\"><b></b></td>\n"
                        + "\n"
                        + "                                                            <td class=\"text-center\"  style=\"color: transparent\"><b></b></td>\n"
                        + "                                                            <td class=\"text-center\"  style=\"font-size: 13px;\"><b></b></td>\n"
                        + "\n"
                        + "                                                            <td class=\"text-right\" style=\"font-size: 13px\"><b>Total:</b></td> \n"
                        + "\n"
                        + "                                                            <td class=\"text-center\" style=\"font-size: 13px\" ><b>S/. " + suma + "</b></td>\n"
                        + "                                                            <td class=\"text-center\"  style=\"color: transparent\"><b></b></td>\n"
                        + "                                                            <td class=\"text-center\"  style=\"color: transparent\"><b></b></td>\n"
                       
                     
                        + "\n"
                        + "\n"
                        + "                                                        </tr> ");
                
                total=total+suma;
            }
            out.print("</tbody>\n"
                        + "             </table>");
            out.print("<br>");
            out.print("<h2 style=\"color:#0e7379 \">Ventas del Mes: S/."+total+"</h2>");
            
            
            
            
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
